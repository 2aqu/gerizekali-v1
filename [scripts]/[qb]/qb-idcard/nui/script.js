$(document).ready(function () {
	const resourceName = window.GetParentResourceName();
	let sizes = {
		background: { x: 330, y: 220 },
		genderImg: { x: 97, y: 97 },
		mugshotImg: { x: 97, y: 97 },
	};

	window.addEventListener('message', function (event) {
		switch (event.data.action) {
			case 'createCard':
				let data = event.data.cardData;
				let canvas = document.getElementById('card-canvas');
				let ctx = canvas.getContext('2d');

				if (data.gender) {
					let offsets = {
						x: 124,
						y: 60,
						xIndex: 90,
						yIndex: 36,
					};

					let positions = {
						genderImg: { x: 17, y: 55 },
						mugshotImg: { x: 17, y: 50 },
						cardTitle: { y: 27 },
						fields: [
							{ x: offsets.x, y: offsets.y },
							{ x: offsets.x + offsets.xIndex, y: offsets.y },
							{ x: offsets.x, y: offsets.y + offsets.yIndex },
							{ x: offsets.x + offsets.xIndex, y: offsets.y + offsets.yIndex },
							{ x: offsets.x, y: offsets.y + offsets.yIndex * 2 },
							{ x: offsets.x + offsets.xIndex, y: offsets.y + offsets.yIndex * 2 },
							{ x: offsets.x, y: offsets.y + offsets.yIndex * 3 },
							{ x: offsets.x + offsets.xIndex, y: offsets.y + offsets.yIndex * 3 },
						],
						signature: { x: offsets.x + offsets.xIndex + 20, y: offsets.y + offsets.yIndex * 3 + offsets.yIndex / 2 },
					};

					let avatar = new Image();
					avatar.src = data.mugshot ? data.mugshot : data.gender == 'male' ? './images/male.png' : './images.female.png';
					avatar.onload = function () {
						let background = new Image();
						background.src = `./images/${data.cardBackground}.png`;
						background.onload = function () {
							ctx.drawImage(background, 0, 0, sizes.background.x, sizes.background.y);

							if (data.mugshot) ctx.drawImage(avatar, positions.mugshotImg.x, positions.mugshotImg.y, sizes.mugshotImg.x, sizes.mugshotImg.y);
							else ctx.drawImage(avatar, positions.genderImg.x, positions.genderImg.y, sizes.genderImg.x, sizes.genderImg.y);

							ctx.fillStyle = data.titleColor;
							ctx.font = 'bold 10px Roboto';
							ctx.beginPath();
							let centerPositionX = canvas.width / 2;
							ctx.moveTo(centerPositionX, 0);
							ctx.stroke();
							ctx.textAlign = 'center';
							ctx.fillText(data.title, centerPositionX, positions.cardTitle.y);

							ctx.moveTo(0, 0);
							ctx.stroke();
							ctx.textAlign = 'left';

							ctx.fillStyle = 'black';
							ctx.font = 'bold 13px Roboto';

							Object.entries(data.fields).forEach(([idx, val]) => {
								if (val.title && !val.isSignature) ctx.fillText(val.title, positions.fields[idx].x, positions.fields[idx].y);
								if (val.title && val.isSignature) ctx.fillText(val.title, positions.signature.x, positions.signature.y);
							});

							Object.entries(data.fields).forEach(([idx, val]) => {
								if (val.value && !val.isSignature) {
									ctx.font = 'normal 14px Roboto';
									ctx.fillStyle = 'black';
									ctx.fillText(val.value, positions.fields[idx].x, positions.fields[idx].y + offsets.yIndex / 2);
								}
								if (val.value && val.isSignature) {
									ctx.font = '18px Corinthia';
									ctx.fillStyle = 'blue';
									ctx.fillText(val.value, positions.signature.x, positions.signature.y + offsets.yIndex / 2);
								}
							});

							$.post(
								`https://${resourceName}/sendCardImage`,
								JSON.stringify({
									image: canvas.toDataURL(),
								}),
							);
						};
					};
				} else {
					let offsets = {
						x: 40,
						y: 60,
						xIndex: 145,
						yIndex: 36,
					};

					let positions = {
						cardTitle: { y: 27 },
						fields: [
							{ x: offsets.x, y: offsets.y },
							{ x: offsets.x + offsets.xIndex, y: offsets.y },
							{ x: offsets.x, y: offsets.y + offsets.yIndex },
							{ x: offsets.x + offsets.xIndex, y: offsets.y + offsets.yIndex },
							{ x: offsets.x, y: offsets.y + offsets.yIndex * 2 },
							{ x: offsets.x + offsets.xIndex, y: offsets.y + offsets.yIndex * 2 },
							{ x: offsets.x, y: offsets.y + offsets.yIndex * 3 },
							{ x: offsets.x + offsets.xIndex, y: offsets.y + offsets.yIndex * 3 },
						],
						signature: { x: offsets.x + offsets.xIndex + 20, y: offsets.y + offsets.yIndex * 3 + offsets.yIndex / 2 },
					};

					let background = new Image();
					background.src = `./images/${data.cardBackground}.png`;
					background.onload = function () {
						ctx.drawImage(background, 0, 0, sizes.background.x, sizes.background.y);

						ctx.fillStyle = data.titleColor;
						ctx.font = 'bold 10px Roboto';
						ctx.beginPath();
						let centerPositionX = canvas.width / 2;
						ctx.moveTo(centerPositionX, 0);
						ctx.stroke();
						ctx.textAlign = 'center';
						ctx.fillText(data.title, centerPositionX, positions.cardTitle.y);

						ctx.moveTo(0, 0);
						ctx.stroke();
						ctx.textAlign = 'left';

						ctx.fillStyle = 'black';
						ctx.font = 'bold 13px Roboto';

						Object.entries(data.fields).forEach(([idx, val]) => {
							if (val.title && !val.isSignature) ctx.fillText(val.title, positions.fields[idx].x, positions.fields[idx].y);
							if (val.title && val.isSignature) ctx.fillText(val.title, positions.signature.x, positions.signature.y);
						});

						Object.entries(data.fields).forEach(([idx, val]) => {
							if (val.value && !val.isSignature) {
								ctx.font = 'normal 14px Roboto';
								ctx.fillStyle = 'black';
								ctx.fillText(val.value, positions.fields[idx].x, positions.fields[idx].y + offsets.yIndex / 2);
							}
							if (val.value && val.isSignature) {
								ctx.font = '18px Corinthia';
								ctx.fillStyle = 'blue';
								ctx.fillText(val.value, positions.signature.x, positions.signature.y + offsets.yIndex / 2);
							}
						});

						$.post(
							`https://${resourceName}/sendCardImage`,
							JSON.stringify({
								image: canvas.toDataURL(),
							}),
						);
					};
				}
				break;
			case 'mugshot':
				let tempUrl = `https://nui-img/${event.data.txd}/${event.data.txd}?t=${String(Math.round(new Date().getTime() / 1000))}`;
				const img = new Image();
				img.crossOrigin = 'Anonymous';
				img.onload = () => {
					const canvas = document.createElement('canvas');
					const ctx = canvas.getContext('2d');
					canvas.height = img.naturalHeight;
					canvas.width = img.naturalWidth;
					ctx.drawImage(img, 0, 0);
					$.post(`https://${resourceName}/returnB64Mugshot`, JSON.stringify({ b64mugshot: canvas.toDataURL(), id: event.data.id }));
				};
				img.src = tempUrl;
				break;
			case 'showCard':
				let positions = event.data.positions;

				Object.entries(positions).forEach(([key, value]) => {
					document.getElementById('cardWrapper').style[key] = value;
				});

				document.getElementById('cardImg').src = event.data.card;

				$('#cardWrapper').fadeIn(500, function () {
					setTimeout(function () {
						$('#cardWrapper').fadeOut(500, function () {
							document.getElementById('cardImg').src = '';
						});
					}, event.data.timeout);
				});
			default:
				break;
		}
	});
});
