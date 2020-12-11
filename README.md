# IBM-gd-utils

IBM Cloud Fonudray + gd-utils + Github Actions

> **Effect: Use GitHub Actions to automatically install the gd-utils robot into the IBM Cloud Fonudray container, and restart IBM CF at 12 o'clock every Friday **

> **Important note: Because the application in the container will be restored to its original state after each restart of IBM CF, the settings and dump records made during the restart will be cleared! Choose whether to install it carefully if you have this requirement. ** (It may also be a problem with my settings, please tell me if you have a solution)

>
>Prerequisites:
>
>1. Apply for an IBM Cloud Fonudray account and record the account and password. (After the application is completed, log in and you don’t need to worry about it. You don’t need to manually create the container. If a 500 error occurs after installation, the reason is that the container address is incorrect. You need to log in to IBM to find the container setting and manually change it to us-south.cf.appdomain.cloud , And then check whether the container name in front is consistent with the one you set, and then go to step 4 again after changing
>
>2. Apply for a tg robot, record the token and your username (t.me/username). Multiple use `username','other people's username` format, note that there is no quotation mark at the beginning
>
>3. Obtain the service account file, package it into accounts.zip and upload it to a place where it can be downloaded, and then record the download url (you can upload it directly to your GoogleDrive)
>
>4. Set a default directory in your GD team disk and record the directory ID
>

# Automatic installation

The first step: register IBM Cloud Fonudray remember the account password cloud.ibm.com

Step 2: Open GitHub to register, then Fork this project (by the way, click Star)

Step 3: Click Settings in your own GitHub project and then click Secrets to create the following content


Key | Value | Type | Required
-- | -- | -- | --
IBM_MAIL | IBM Cloud login email | Secrets | Yes
IBM_PWD | IBM Cloud login password | Secrets | Yes
IBM_APP_NAME | The name of the CF App (take one yourself) | Secrets | Yes
TG_TOKEN | Telegram robot token | Secrets | Yes
TG_USERNAME | Your Telegram username | Secrets | Yes
DRIVE_ID | GD default save directory ID | Secrets | Yes
SA_DLURL | SA package file accounts.zip download url | Secrets | Yes


Step 4: In your own GitHub project, click Actions and then click IBM Cloud Auto Install on the left to switch, and then click Run workflow to start the fully automatic installation (if you don’t see Auto Install, click on the yml file and add a blank line to save it)

End

**Open the TGbot you built, and type /help**



# Manual installation

Step 1: Register for IBM Cloud Fonudray and create a new container by yourself

Step 2: Open the IBM Cloud Shell and enter the following code (the shell is in the upper right corner of the page)

 ```
wget --no-check-certificate -O install.sh https://raw.githubusercontent.com/artxia/IBM-gd-utils/master/install.sh && chmod +x install.sh && ./install.sh
 ```

End
More about this source text
Source text required for additional translation information
Send feedback
Side panels
