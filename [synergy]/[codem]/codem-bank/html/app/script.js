
let notifications = []
var test = false
let audioPlayer = null;
function GenerateNotification(message, type, timeout) {
    let id = notifications.length + 1;
    let colors = {
        ["succes"]: "#2abdc7",
        ["error"]: "#d4423d",
        ["info"]: "#FBD33F",
    }
    if (type == null) {
        type = "succes";
    }
    if (timeout == null) {
        timeout = 1500;
    }
    if (message == null) {
        message = "UNKOWN";
    }
    audioPlayer = new Audio("./sound/codemnotify.ogg");
    audioPlayer.volume = 0.5;
    audioPlayer.play();
    let html = `

    <div style="transform: translateX(0)" class="notify" id="notify-${id}">
        <div class="notification">
            <div class="content">
              <div class="identifier">
              <img src="./images/notification-icon.png">
              </div>
              <div class="text">${message}</div>
            </div>
      </div>
      
    </div>
    `
    $('.notify-container').append(html)
    anime({
        targets: `#notify-${id}`,
        translateX: "0",
        duration: 550,
        easing: "spring(1, 70, 100, 10)",
    });
    $(".denemetest").css('display',"none");
       notifications[id] = setTimeout(() => {
            anime({
                targets: `#notify-${id}`,
                translateX: "150px",
                duration: 550,
                easing: "spring(1, 3000, 100, 10)",
            });
            setTimeout(() => {
                $("#notify-" + id).remove();
                notifications[id] = null;
            }, 150);
            $(".denemetest").css('display',"block");
       }, timeout)
      
}




window.addEventListener("message", function (event) {
    var item = event.data;

    switch (item.action) {
        case "OPEN_MENU":
          
         
            if(item.bankType == 'bank'){
                app.openBankData(item.playerData,item.playerJob);
            }else if(item.bankType == 'atm'){
                app.openAtmData(item.playerData,item.playerJob);
            }
     
            
        break;
        case "BILLS_DATA":
            app.openBillsData(item.bills);
        break;
        case "LOAN_SETTINGS":
            app.Loan(item.loanUse, item.loan);
        break;
        case "NOTIFICATION":
            GenerateNotification(item.message);
        break;
        case "send_response":
            app.GetResponse(item.resourceName)
        break;
        case "SetLanguages":
			app.SetLanguage(item.value)
		break
        case "DETAILS_TRANSACTIONS":
            app.openTransactionsData(item.data,item.transData);
        break
        case "UPDATE_LOAN":
            app.UpdateLoan(item.data);
        break;
        case "UPDATE_SPEND_DATA":
            app.UpdateSpendData(item.data);
        break;
        case "LOGO":
            app.setLogo(item.value);
        break;
        case "UPDATE_SOCIETY_JOIN":
            app.UpdateSocietyJoin(item.data);
        break;
        case "UPDATE_SOCIETY_JOB_MONEY":
            app.UpdateSocietyJobMoney(item.data);
        break;
        case "UPDATE_SOCIETY_SPEND_DATA":
            app.updateSocietySpendData(item.data);
        break;
        case "SOCIETY_JOB_NAME":
            app.societyJobName(item.value);
        break;
        case "DETAILS_SOCIETY_TRANSACTIONS":
            app.openSocietyTransactionsData(item.data,item.transData,item.totalUser);
        break;
        case "SET_DATA":
            app.setBankData(item.playerData,item.playerJob);
        break;
        case "SET_BILLING":
            app.setBilling(item.value);
        break;
    }
});

const OnPressEsc = (resourceName) => {

    app.PlayClickSound();
    $('#app').fadeOut(500);
    
    $.post(`https://${app.resourceName}/close`, JSON.stringify({
   
    }));
    setTimeout(() => {
        app.show = false;
        app.atm = false;
        app.insertAnime = false;
        app.selectCategoryButton = 'dashboard';
    }, 100);

}


const app = new Vue({
    el: "#app",

    data: {
        show: false,
        categoryButtonArray: {},
        pageName : 'DASHBOARD',
        playerData : '',
        withdrawAmount : '',
        playerIban12 : '',
        playerIban34 : '',
        depositAmount : '',
        insertAnime : false,
        targetTransfer : {
            targetIban : '',
            targetAmount : '',
        },
        loanData : {
            loanUse : false,
            loan : '',
        },
        transictionSwiper : false,
        loanSwiper : false,
        societyFirstAccount : false,
        notificationType : 'normal2',
        atm : false,
        selectCategoryButton: 'dashboard',
        transactionsData : [
             {
                 label  : 'Total Transactions',
                 value : '0',
                 name : 'trans-total'
             },
             {
                 label  : 'Income',
                 value : '0',
                 name : 'trans-income'
             },
             {
                 label  : 'Expense',
                 value : '0',
                 name : 'trans-expense'
             },
             {
                 label  : 'Bills',
                 value : '0',
                 name : 'trans-bills'
             },
          
        ],
        societyTransactionsData : [
            {
                label  : 'Total Transactions',
                value : '0',
                name : 'trans-total'
            },
            {
                label  : 'Income',
                value : '0',
                name : 'trans-income'
            },
            {
                label  : 'Expense',
                value : '0',
                name : 'trans-expense'
            },
            {
                label  : 'Online Users',
                value : '0',
                name : 'trans-users'
            },
         
       ],
        resourceName : '',
        billsData : '', 
        language: '',
        transactionsAllData : '',
        societyTransactionsAllData : '',
        searchTransactions : '',
        updateLoan : '',
        loanInstallmentAmount : '',
        testLoan : false  ,
        spendData : '',
        testChart : false,
        uiLogo : '',
        billingSystem : '',
        transactionsPageData : 1,
        playerJob : false,
        joinSocietyInput : '',
        bankCategory : {
            societyCategory : false,
        },
        societyBankMoney : 0,
        societySpendData : '',
        societyChart : false,
        playerSocietyJobName : false,
        playerSocietyCardNumber : false,
        loanPopup : false,
        loanBuyArray  : {
            val : '',
            label : '',
            name : ''
        },
        transictionSwiperSociety : false,
        searchTransactionsSociety : '',
    },
    mounted() {
        document.onkeydown = (evt) => {
            evt = evt || window.event;
            var isEscape = false;
            if ("key" in evt) {
                isEscape = (evt.key === "Escape" || evt.key === "Esc");
            } else {
                isEscape = (evt.keyCode === 27);
            }
            if (isEscape) {
                OnPressEsc(this.resourceName)
            }
        };
    },

    computed: {
     

        getCardStyle(){
       
            return(val)=>{
                if(val=='society' ){
                    return {
                        ['background-image']: 'url(./images/society-card-icon.png)',  
                    }
                
                }else if(val == 'society_transaction'){
                    return {
                        ['background-image']: 'url(./images/society-card-icon.png)',  
                    }
                }else{
                    return {
                        ['background-image']: 'url(./images/dashboard-card-icon.png)',  
                    }
                 
                }
            }
        },


        getBackground(){
            return(val)=>{
                
                if (val == 'dashboard') {
                    return {
                        ['background-image']: 'url(./images/dashboardbg.png)',
                    }
                }
                if (val == 'transactions') {
                    return {
                        ['background-image']: 'url(./images/transactions-bg.png)',
                    }
                }
                if (val == 'bills') {
                    return {
                        ['background-image']: 'url(./images/bills-bg.png)',
                    }
                }
                if (val == 'loan') {
                    return {
                        ['background-image']: 'url(./images/loan-bg.png)',
                    }
                }
                if(val =='society'){
                    return {
                        ['background-image']: 'url(./images/society-bg.png)',
                    }
                }
                if(val =='society_transaction'){
                    return {
                        ['background-image']: 'url(./images/society-bg.png)',
                    }
                }
                
                   
                
            }
        },
     
        transictionGradient(){
            return(val)=>{
            
                if(val == 'trans-total'){
                    return {
                        ['background']: 'linear-gradient(90.76deg, #FF8228 0.5%, #00FFC2 110.52%)',
                        ['border-radius']: '2vw',
                        ['color'] : '#4D2500'
                    }
                }
                if(val == 'trans-income'){
                    return {
                        ['background']: 'linear-gradient(90.76deg, #00FF66 0.5%, #00FFC2 110.52%)',
                        ['border-radius']: '2vw',
                        ['color'] : '#00471C'
                    }
                }
                if(val == 'trans-expense'){
                    return {
                        ['background']: 'linear-gradient(90.76deg, #FF002E 0.5%, #FF00B8 110.52%)',
                        ['border-radius']: '2vw',
                        ['color'] : '#49000D'
                    }
                }
                if(val == 'trans-bills'){
                    return {
                        ['background']: 'linear-gradient(90.76deg, #B00AFF 0.5%, #FF00B8 110.52%)',
                        ['border-radius']: '2vw',
                        ['color'] : '#1F002E'
                    }
                }
                if(val == 'trans-users'){
                    return {
                        ['background']: 'linear-gradient(90.76deg, #00F5FF 0.5%, #FF0000 110.52%)',
                        ['border-radius']: '2vw',
                        ['color'] : '#1F002E'
                    }
                }
            }
        },
        getLoanTextColor(){
            return(val)=>{
                if(val == 'economy-loan'){
                    return {
                        ['background'] : 'linear-gradient(90.76deg, #01B4FB 0.5%, #00FFC2 110.52%)',
                        ['color'] : '#003646'
                    }
                }
                if(val == 'premium-loan'){
                    return {
                        ['background'] : 'linear-gradient(90.76deg, #E1090A 0.5%, #FF00E5 110.52%)',
                        ['color'] : '#510000'
                    }
                }
                if(val == 'gold-loan'){
                    return {
                        ['background'] : 'linear-gradient(90.76deg, #E19809 0.5%, #FFDB96 110.52%)',
                        ['color'] : 'white'
                    }
                }
                if(val == 'fleeca-loan'){
                    return {
                        ['background'] : 'linear-gradient(90.76deg, #27903A 0.5%, #83FF99 110.52%)',
                        ['color'] : 'white'
                    }
                }
                if(val == 'diamond-loan'){
                    return {
                        ['background'] : 'linear-gradient(90.76deg, #EE8AFE 0.5%, #FFFFFF 110.52%)',
                        ['color'] : 'white'
                    }
                }
                if(val == 'blvck-loan'){
                    return {
                        ['background'] : 'linear-gradient(90.76deg, #FFFFFF 0.5%, #000000 110.52%)',
                        ['color'] : 'white'
                    }
                }

                
                
            }
            
        },
       

        filterByTerm() {
            if (this.searchTransactions.length > 0) {
                return this.transactionsAllData.filter((report) => {
                    return report.title.toLowerCase().includes(this.searchTransactions.toLowerCase()) || report.date.toLowerCase().includes(this.searchTransactions.toLowerCase())
                })
            } else {
                return this.transactionsAllData
            }
        },
        filterByTermSociety() {
            if (this.searchTransactionsSociety.length > 0) {
                return this.societyTransactionsAllData.filter((report) => {
                    return report.title.toLowerCase().includes(this.searchTransactionsSociety.toLowerCase()) || report.date.toLowerCase().includes(this.searchTransactionsSociety.toLowerCase())
                })
            } else {
                return this.societyTransactionsAllData
            }
        }

    },

    methods: {
        societyJobName(val){
            this.playerSocietyJobName = val;
        },
        updateSocietySpendData(val){
            this.societySpendData = val;

            if(this.societyChart){
                this.societyChart.destroy();
            }
            
            setTimeout(() => {
                this.createChartSociety();
            },10);
        },

        setBilling(val){
            this.billingSystem = val;
        },
        
        withdrawMoneySociety() {
            this.PlayClickSound();
            this.withdrawAmount = parseInt(this.withdrawAmount);
            if (!Number.isInteger(this.withdrawAmount) || !this.withdrawAmount || this.withdrawAmount % 1 !== 0) {
                return;
            }
            if (this.withdrawAmount <= this.societyBankMoney && this.withdrawAmount > 0) {
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'withdrawSociety',
                    amount: Math.floor(this.withdrawAmount),
                }));
                this.withdrawAmount = '';
            } else {
                GenerateNotification(this.language['enoughMoney'], 'error', 1000);
                this.withdrawAmount = '';
            }
        },
        depositMoneySociety() {
            this.PlayClickSound();
            this.depositAmount = parseInt(this.depositAmount);
            if (!Number.isInteger(this.depositAmount) || !this.depositAmount || this.depositAmount % 1 !== 0) {
                return;
            }
            if (this.depositAmount > 0 && this.depositAmount <= this.playerData.xPlayerWallet) {
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'depositSociety',
                    amount: this.depositAmount,
                }));
                this.depositAmount = '';
            } else {
                GenerateNotification(this.language['enoughMoney'], 'error', 1000);
                this.depositAmount = '';
            }
        },

        transferMoneySociety(){
            this.PlayClickSound();
            if(this.targetTransfer.targetIban && this.targetTransfer.targetAmount > 0){
             
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'transferSociety',
                    target: this.targetTransfer.targetIban,
                    amount: this.targetTransfer.targetAmount,
                }));
                this.targetTransfer.targetIban = '';
                this.targetTransfer.targetAmount = '';
            }
        },


        UpdateSocietyJobMoney(val){
            this.societyBankMoney = val;
        },
        UpdateSocietyJoin(val){
            this.societyFirstAccount = val;
            
        },
        joinSociety(){
            if(this.joinSocietyInput){
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'joinSociety',
                    value : this.joinSocietyInput,
                   
                }));
            }
           
        },
        setLogo(val){
            this.uiLogo = val;
          
        },
        searchClear(){
            this.searchTransactions = '';
   
        },
        billPay(val,val2,billName){
            $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                action: 'billPay',
                valueId : val,
                valueAmount : val2,
                valueBillName : billName
               
            }));
        },
        clearTransaction(){
            $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                action: 'clearTransaction',
          
               
            }));
        },
        UpdateSpendData(val){
            this.spendData = val;
            if(this.testChart){
                this.testChart.destroy();
            }
            
            setTimeout(() => {
                this.createChart();
            },10);
        },
        UpdateLoan(val){
            this.updateLoan = val;
            
        },
        loanBuy(val,label,name){
            this.loanPopup = true;
       
            this.loanBuyArray = {
                val : val,
                label : label,
                name : name
            }
        
        },
        loanBuyConfirm(val){
            if(val == 'yes'){

                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'loanBuy',
                    value : this.loanBuyArray.val,
                    label : this.loanBuyArray.label,
                    name :  this.loanBuyArray.name
                }));
                this.loanPopup = false;
                this.loanBuyArray = {
                    val : '',
                    label : '',
                    name : ''
                }
            }else{
                this.loanPopup = false;
                this.loanBuyArray = {
                    val : '',
                    label : '',
                    name : ''
                }
            }
    
        },
        openTransactionsData(val,transData){
            setTimeout(() => {
            if(this.loanSwiper){
                this.loanSwiper.destroy();
            }
            }, 20);
            setTimeout(() => {  
                if(this.transictionSwiper){
                    this.transictionSwiper.destroy();
                }
            }, 50);
            this.transactionsAllData = val;
          
            this.transactionsData.forEach(element => {
                    if(element.name == 'trans-bills'){
                        element.value = transData.bills || 0;
                    }else if(element.name == 'trans-income'){
                        element.value = transData.income || 0;
                    }else if(element.name == 'trans-expense'){
                        element.value = transData.expense || 0;
                    }else if(element.name == 'trans-total'){
                         element.value = this.transactionsAllData.length || 0;
                    }
            });            
            setTimeout(() => {  
                this.transactionsDataSwiper();
            }, 100);
        },
        openSocietyTransactionsData(val,transData,users){
            setTimeout(() => {  
                if(this.transictionSwiperSociety){
                    this.transictionSwiperSociety.destroy();
                }
                }, 10);
                
                this.societyTransactionsAllData = val;
                this.societyTransactionsData.forEach(element => {
                  
                        if(element.name == 'trans-users'){
                            element.value = users || 0;
                        }else if(element.name == 'trans-income'){
                            element.value = transData.income || 0;
                        }else if(element.name == 'trans-expense'){
                            element.value = transData.expense || 0;
                        }else if(element.name == 'trans-total'){
                             element.value = this.societyTransactionsAllData.length || 0;
                        }
                });            
             setTimeout(() => {  
                
                this.SocietytransactionsDataSwiper()
                
             }, 50);
        },
        SetLanguage(val) {
			this.language = val
		},
        loanLeft(){
            this.PlayClickSound();
          
            $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                action: 'loanLeft',
            }));
        },
        Loan(val,loanData){
            this.loanData.loanUse = val;
            this.loanData.loan = loanData;
        },
        openBillsData(val){
            this.billsData = val;
        },
        GetResponse(resourceName) {
			this.resourceName = resourceName
			
            $.post(`https://${this.resourceName}/GetResponse`, JSON.stringify({
               
            }));
            

		},
        exitBank(){
            this.PlayClickSound();
            $('#app').fadeOut(500);
            
            $.post(`https://${this.resourceName}/close`, JSON.stringify({
           
            }));
            setTimeout(() => {
                this.show = false;
                this.atm = false;
                this.insertAnime = false;
                this.selectCategoryButton = 'dashboard';
            }, 100);
            
        },
        transferMoney(){
            this.PlayClickSound();
            if(this.targetTransfer.targetIban && this.targetTransfer.targetAmount > 0){
             
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'transfer',
                    target: this.targetTransfer.targetIban,
                    amount: this.targetTransfer.targetAmount,
                }));
                this.targetTransfer.targetIban = '';
                this.targetTransfer.targetAmount = '';
            }
        },
        changeIban(){
            this.PlayClickSound();
            $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                action: 'changeIban',
            }));
        },
        depositMoney() {
            this.PlayClickSound();
            this.depositAmount = parseInt(this.depositAmount);
            if (!Number.isInteger(this.depositAmount) || !this.depositAmount || this.depositAmount % 1 !== 0) {
                return;
            }
            if (this.depositAmount > 0 && this.depositAmount <= this.playerData.xPlayerWallet) {
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'deposit',
                    amount: Math.floor(this.depositAmount),
                }));
                this.depositAmount = '';
            } else {
                GenerateNotification(this.language['enoughMoney'], 'error', 1000);
                this.depositAmount = '';
            }
        },
        PlayClickSound() {
            const click = document.querySelector('#click')
            if (!click.paused) click.pause();
            click.currentTime = 0;
            click.volume = 0.3;
            click.play();
        },
        withdrawMoney() {
            this.PlayClickSound();
            this.withdrawAmount = parseInt(this.withdrawAmount);
            if (!Number.isInteger(this.withdrawAmount) || !this.withdrawAmount || this.withdrawAmount % 1 !== 0) {
                return;
            }
            if (this.withdrawAmount <= this.playerData.xPlayerBankMoney && this.withdrawAmount > 0) {
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'withdraw',
                    amount: this.withdrawAmount,
                }));
                this.withdrawAmount = '';
            } else {
                GenerateNotification(this.language['enoughMoney'], 'error', 1000);
                this.withdrawAmount = '';
            }
        },
        loanInstallment(){

            this.PlayClickSound();
            if(!this.loanInstallmentAmount){
                return 
            }
            if(this.loanInstallmentAmount <= this.playerData.xPlayerBankMoney && this.loanInstallmentAmount > 0){
                      
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'loanInstallment',
                    amount: this.loanInstallmentAmount,
                }));
                this.loanInstallmentAmount = '';
            }else{
                GenerateNotification(this.language['enoughMoney'], 'error', 1000);
            }
        },
        openBankData(pData,job){
            this.show = true;
            this.atm = false;
            this.playerData = pData;
            let ibanNumber = this.playerData.xPlayerIban.toString()
  
            this.playerIban12 = ibanNumber[0] + ibanNumber[1];
            this.playerIban34 = ibanNumber[2] + ibanNumber[3] + ibanNumber[4] + ibanNumber[5];
            this.playerJob = job;

            
            const founded = this.playerSocietyJobName.find(playerItem => playerItem.name === this.playerJob)
            if(founded){
                this.playerSocietyCardNumber = founded.cardNumber;
            }
            
        },

        setBankData(pData,job){
            this.playerData = pData;
            let ibanNumber = this.playerData.xPlayerIban.toString()
  
            this.playerIban12 = ibanNumber[0] + ibanNumber[1];
            this.playerIban34 = ibanNumber[2] + ibanNumber[3] + ibanNumber[4] + ibanNumber[5];
            this.playerJob = job;

            
            const founded = this.playerSocietyJobName.find(playerItem => playerItem.name === this.playerJob)
            if(founded){
                this.playerSocietyCardNumber = founded.cardNumber;
            }
            
        },
        openAtmData(pData,job){
            this.show = true;
            this.atm = true;
            this.playerData = pData;
            let ibanNumber = this.playerData.xPlayerIban.toString()
            this.playerIban12 = ibanNumber[0] + ibanNumber[1];
            this.playerIban34 = ibanNumber[2] + ibanNumber[3] + ibanNumber[4] + ibanNumber[5];

            this.playerJob = job;

            
            const founded = this.playerSocietyJobName.find(playerItem => playerItem.name === this.playerJob)
            if(founded){
                this.playerSocietyCardNumber = founded.cardNumber;
            }
        },
        createChart() {
            const ctx = document.getElementById('myChart');
            if (this.spendData){
                Chart.defaults.color = [
                    '#01E190',
                    '#FF8228',
                    '#EB00FF',
                    '#00B2FF',
                    '#04DB00',
                    '#FFE500',
                 
                  ]
                  Chart.defaults.fontFamily = 'Montserrat';
                 
                this.testChart = new Chart(ctx, {
                    type: 'bar',
                    
                    data: {
                      labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun'],
                      datasets: [{
                        
                        label : "$",
                        data: [this.spendData.mon || 0, this.spendData.tue || 0,this.spendData.wed || 0, this.spendData.thu || 0, this.spendData.fri || 0, this.spendData.sat || 0,this.spendData.sun || 0],
                        borderWidth: 1,
                        barThickness: 20,
                        borderRadius:5,
                        color: "white",
                        backgroundColor: [
                          '#01E190',
                          '#FF8228',
                          '#EB00FF',
                          '#00B2FF',
                          '#04DB00',
                          '#FFE500',
                          '#AC58FF',
                          '#AC58FF'
                      ],
                      }]
                    },
                    
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        plugins: {
                            legend: {
                                display: false,
                              
                            }
                        },
                      scales: {
                        y: {
                          beginAtZero: true,
                          ticks:{
                              
                                color: function (context) {
                                    
                                    if (context.tick.value === 0) {
                                       
                                    }
                                    return 'rgba(255, 255, 255, 0.1)';
                                },
                              callback: function(value, index, ticks) {
                                  return value + '$';
                              },
                          }
                         
                        },
                        x:{
                        
                            ticks: {
                                font: {
                                    size: 15,
                                },
                                
                            }
                        }
                        
                      }
                    }
                  
                  });   
            }
        },
        createChartSociety() {
            const ctx = document.getElementById('myChartSociety');
            if (this.societySpendData){
                Chart.defaults.color = [
                    '#01E190',
                    '#FF8228',
                    '#EB00FF',
                    '#00B2FF',
                    '#04DB00',
                    '#FFE500',
                 
                  ]
                  Chart.defaults.fontFamily = 'Montserrat';
                this.societyChart = new Chart(ctx, {
                    type: 'bar',
                    
                    data: {
                      labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun'],
                      datasets: [{
                        
                        label : "$",
                        data: [this.societySpendData.mon || 0, this.societySpendData.tue || 0,this.societySpendData.wed || 0, this.societySpendData.thu || 0, this.societySpendData.fri || 0, this.societySpendData.sat || 0,this.societySpendData.sun || 0],
                        borderWidth: 1,
                        barThickness: 20,
                        borderRadius:5,
                        color: "white",
                        backgroundColor: [
                          '#01E190',
                          '#FF8228',
                          '#EB00FF',
                          '#00B2FF',
                          '#04DB00',
                          '#FFE500',
                          '#AC58FF',
                          '#AC58FF'
                      ],
                      }]
                    },
                    
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        plugins: {
                            legend: {
                                display: false,
                              
                            }
                        },
                      scales: {
                        y: {
                          beginAtZero: true,
                          ticks:{
                              
                                color: function (context) {
                                    
                                    if (context.tick.value === 0) {
                                       
                                    }
                                    return 'rgba(255, 255, 255, 0.1)';
                                },
                              callback: function(value, index, ticks) {
                                  return value + '$';
                              },
                          }
                         
                        },
                        x:{
                        
                            ticks: {
                                font: {
                                    size: 15,
                                },
                                
                            }
                        }
                        
                      }
                    }
                  
                  });   
            }
        },
      
        atmCardInsertButton(){
            this.PlayClickSound();
            this.insertAnime = true;
            $('.insertButton').css('opacity','0.5');
            $('.insertButton').css('pointer-events','none');
            setTimeout(() => {
               
                $('.progressBarTime').fadeIn(500);
                var bar = new ProgressBar.Path('#progressbaratm', {
                    easing: 'easeInOut',
                    duration: 5400
                });
                  
                  bar.set(0);
                  bar.animate(1.0);
            },1500)
            setTimeout(() => {
                this.show = true;
                this.atm = false;
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'forAtmFix'
                }));
            }, 7000);
        },
        setHoverCategoryButton(val){
            for (key in this.categoryButtonArray) {
                this.categoryButtonArray[key] = false
            }
            this.categoryButtonArray[val] = !this.categoryButtonArray[val];
            this.$forceUpdate();
        },
        changeSelectCategoryButton(val){
            this.PlayClickSound();
            this.transactionsPageData = 1
            if (val == this.selectCategoryButton){
                return
            }
            this.selectCategoryButton = val;
            if (this.selectCategoryButton == 'bills'){
                this.pageName = this.language.bills;
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'bills'
                }));
                this.bankCategory.societyCategory = false;
            }
            if(this.selectCategoryButton == 'transactions'){
                this.pageName = this.language.transaction;
                if(this.loanSwiper){
                    this.loanSwiper.destroy();
                }
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'transactions'
                }));
                this.bankCategory.societyCategory = false;
            }
            if(this.selectCategoryButton == 'loan'){
                this.pageName = this.language.loan;
                if(this.transictionSwiper){
                    this.transictionSwiper.destroy();
                }


                setTimeout(() => {  
                    this.loanDataSwiper();
                }, 10);
              
                this.bankCategory.societyCategory = false;
            
            }
            if(this.selectCategoryButton == 'dashboard'){
                this.pageName = this.language.dashboard;
                setTimeout(() => {
                    this.createChart();
                },10);
                this.bankCategory.societyCategory = false;
            }
            if(this.selectCategoryButton == 'society'){
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'accountCheck'
                }));
                this.bankCategory.societyCategory = true;
              
             
            }
            if(this.selectCategoryButton == 'society_transaction'){
                this.pageName = this.language.transaction;
                setTimeout(() => {
                if(this.transictionSwiperSociety){
                    this.transictionSwiperSociety.destroy();
                }
                }, 10);
                $.post(`https://${this.resourceName}/bank`, JSON.stringify({
                    action: 'societyTransactions'
                }));
                this.bankCategory.societyCategory = true;
            }
            this.$forceUpdate();
        },
        loanDataSwiper(){
            if(this.loanSwiper){
                this.loanSwiper.destroy();
            }
            this.loanSwiper = new Swiper(".loans-swiper", {
                slidesPerView: 2,
                allowTouchMove : false,
                grid: {
                  rows: 1,
                },
             
                spaceBetween: 30,

                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                  },
                // pagination: {
                //   el: ".swiper-pagination",
                //   clickable: true,
                // },
              });
        },
        transactionsDataSwiper(){
          
            if(this.transictionSwiper){
                this.transictionSwiper.destroy();
            }

            this.transictionSwiper = new Swiper(".transiction-swiper", {
                slidesPerView: 3,
                allowTouchMove : false,
                
                grid: {
                  rows: 2,
                },
                loop :false,
                spaceBetween: 30,
                navigation: {
                    nextEl: ".left-transaction-button",
                    prevEl: ".right-transaction-button",
                },
                
              });
        },
        SocietytransactionsDataSwiper(){
            if(this.transictionSwiperSociety){
                this.transictionSwiperSociety.destroy();
            }

            this.transictionSwiperSociety = new Swiper(".transiction-swiper-society", {
                slidesPerView: 3,
                allowTouchMove : false,
                
                grid: {
                  rows: 2,
                },
                loop :false,
                spaceBetween: 30,
                navigation: {
                    nextEl: ".left-transaction-button",
                    prevEl: ".right-transaction-button",
                },
                
              });
        }
      
        
        

    }


})


