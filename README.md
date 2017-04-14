# FiveM-Script
### **FiveM**

**Client**

Client: [FiveM.exe](http://updater.fivereborn.com/client/FiveM.exe) 73.7k

**How to install the client**

**Run FiveM.exe.**
1. Wait for everything to download.
2. Select your GTA V folder.
3. Wait for your game to be verified.
4. Select a server in the server list or direct connect.
5. Enjoy playing FiveM!

___**Note: If you have steam running it will use your steam ID and name**___

**Server**

Server: [cfx-server.7z](http://updater.fivereborn.com/client/cfx-server.7z) 35.4k

How to use the server
1. Create a new folder anywhere on your computer.
2. Extract the cfx-server.7z file in the previously created folder.
3. Change the server settings in citmp-server.yml file.
4. Port forward/open port 30120 (or whatever you configured) (UDP & TCP)
5. Open run.bat
6. Connect to your server via the client.

**Linux guides**

__**(All done on Ubuntu 14.04, Debian 8 will work too - if you get a libuv.so error it's too old)**__

**How to install Mono**
1. Add the Mono repositories3.5k
2. Execute this command as root: apt install mono-complete

**Running a server on Mono**
1. Create a new folder anywhere on your computer.
2. Extract the cfx-server.7z in the previously created folder.
3. Move everything from the created folder into the bin folder.
4. Go into the bin folder.
5. Execute the command: ./run.sh

__**How to install resource mods on your server?**__

Create a new folder inside the resources folder of your server. (Name it something appropiate like carmods)

Inside that newly created folder create a file called: __resource.lua (Can be empty)

Then create another folder in the newly created folder and call it stream

Inside that put all of your mods (yft, ytd, ydr, ybn, ybd, ydd - anything starting with y)

Then add the name you put for that folder in your settings file under AutoStartResources
