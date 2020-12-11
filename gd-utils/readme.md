# Gd-Utils

 Gd-Utils is just another Tool which helps us to Bypass the 750GB daily limit by google

:octocat: This Fork is an English version of the Gd-Utils by 

    https://github.com/iwestlin/gd-utils

:octocat: All I did is edit the code and used google translate to change chinese to English..so all Credits to the OP

:octocat: I included only the Installation part for running in your system ([Telegram Bot part is here](https://github.com/roshanconnor123/Gdutils_Tgbot))
## General Instructions
Like Other Tools (Autorclone/Folderclone/Gclone/Fclone)  Gd-Utils is also based upon Service accounts aka SAs

 Among These tools Only Autorclone & Folderclone can generate SAs by themselves
 
>So for this tool to work you need SAs generated using [Autorclone](https://github.com/xyou365/AutoRclone) or [Folderclone](https://github.com/Spazzlo/folderclone)

### 📦 Pre Requisites:

📣 This tool can be used in **Windows** , **Android** as well as **Linux OS**

📣 You need Generated **SAs** (Like I mentioned above)

📣 If you are using this in **Linux** or **Android** :-

Create a new Repo in Github and name it as `accounts` and Upload all your SAs (json files) there

[Follow this to understand better](https://telegra.ph/Uploading-Service-Accounts-to-Github-07-09)

## Installation

### 🔳Installation in Windows


🌠 Install Nodejs in windows

 Install [Nodejs](https://nodejs.org/dist/v12.18.4/node-v12.18.4-x64.msi) and Make Sure to Install additional components(Tick mark the Option saying Install Additional components)

It is very important to  install the addtional components (of nodejs) as well for this tool to work

🌠 Create a new Folder in Desktop and Name it as `Gd-utils`

🌠 [Download this](https://github.com/roshanconnor123/gd-utils/archive/master.zip) and Extract it - copy all the contents to newly created `Gd-utils Folder` in your Desktop

🌠 Open cmd inside `Gd-utils` Folder and type this
```
npm install --unsafe-perm=true --allow-root
```
 If it shows `0 vulnerabilities` it means that installation is successful

🌠 Go to Autorclone/folderclone Folder In your PC and Open Accounts Folder - Copy all the json files

🌠 Go to `sa` Folder inside `Gd-utils` Folder and Paste all the json files there


### 🔳 Installation in Android


🌠 Install [Termux](https://play.google.com/store/apps/details?id=com.termux&hl=en_IN%20%20) - Remember to enable Storage Permission by going to settings

🌠 Install Nodejs & Python & Git In Termux
```
pkg install python && pkg install git && pkg install nodejs
```
🌠 Installing Gd-utils
```
git clone https://github.com/roshanconnor123/gd-utils && cd gd-utils && npm install --unsafe-perm=true --allow-root
```
🌠 Downloading Service accounts from your github and configuring it for Gdutils
```
bash sa.sh
```

### 🔳 Installation in Linux

🌠 Intsalling the Dependancies and Gdutils
```bash
sudo apt-get install build-essential && sudo apt-get update && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt-get install -y nodejs && git clone https://github.com/roshanconnor123/gd-utils
```
```bash
cd gd-utils && npm install --unsafe-perm=true --allow-root
```
🌠 Downloading Service accounts from your github and configuring it for Gdutils
```bash
bash sa.sh
```

## Usage
🔷 Windows

 Double Click on **gdutils.bat** File (In Gd-utils Folder)

🔷 Android

 Just run the code below in **Termux**
```bash
cd gd-utils && bash gdutils.sh
```
🔷 Linux

 Just run the code below in **Terminal**
```bash
cd gd-utils && bash gdutils.sh
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)
