Ours multiplayer jobs are basically drag & drop.

This job as exception requires you to also drop a SQL query. For ESX its:

ALTER TABLE `users` 
  ADD COLUMN `electrocourses` int(11) DEFAULT 0

On the other hand for QBCore its:

ALTER TABLE `players` 
  ADD COLUMN `electrocourses` int(11) DEFAULT 0


If you have any problems, ask for help on our discord:
https://discord.gg/dWUmBQ6KuJ