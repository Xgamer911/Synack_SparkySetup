# Synack_SparkySetup

## Gmail
1) You should get an email or a slack direct message with Google Gmail account information.
2) Login using provided credentials and setup 2FA with provided backup verification codes.
3) Check for multiple emails from Booz Allen Hamilton. The first is for a mailing address to send an RSA token and the second is an AppGate setup instructions.

## Setup AppGate
1) Download AppGate from https://www.appgate.com/support/software-defined-perimeter-support/sdp-v6-5
2) Install AppGate
3) Open AppGate SDP
4) Click on "Use profile link"
   ![1](https://github.com/user-attachments/assets/627f2354-2daf-407b-9092-2a73b8d3d461)
   

6) Get link from an email. Link should look like appgate://URL/STRING 
7) Click the button to use the appgate link.
8) Click "Connect to appgate sdp" (after profile link)
   ![after profile link](https://github.com/user-attachments/assets/937dea36-a8a5-47da-a35e-ebebc847c63a)
   

10) click Sign in and a browser should open going to https://auth5.jsf.mil (connect)
    ![Connect](https://github.com/user-attachments/assets/1a4cbbe4-8a8b-41df-8de6-6e2a1933c741)
    

0) Use the username from email (Ex RYAN.BRIGGS.CTR@jre.jsf.mil), a onetime password in another email from onetimesecret.com, and a code from your RSA token. (Login) Note: if you fail, wait for code to reset before trying again. Don't use same RSA code twice.
11) This will login the Appgate SDP application. You can then also go to https://auth5.jsf.mil/cfs/Portal and login to the portal website. Here you can see a list of available applications. (Portal)
Note: If your STIGs button on the AppGate SDP is red, AWS Workspace will give an error that your device is not authorized. Sign into Appgate SDP and let it sit for 30-60 minutes, sign out, and the sign in. It might work then.
12) This is what a working AppGate SDP should look like. (Working1)

### Troubleshooting STIGs staying red
1) Download cnap_pass_cat1_script.ps1
2) Run Powershell ISE as administrator.
3) Open cnap_pass_cat1_script.ps1 and run. 
4) If you get an error stating thatt running scripts is disabled on this system, run the command "Set-ExecutionPolicy Unrestricted". Then Re-run the powershell script.

## Setup AWS Workspaces
1) Go to https://clients.amazonworkspaces.com, download your operating system application, and install.
2) On your desktop, double click "Amazon Workspaces" (AWSwork1)
3) Go to settings and then "Manage Connection Settings".
4) Set Proxy Setting to "Don't use Proxy Server" and click save. (AWSwork2)
5) Input registration code from email and then click register. (AWSwork3)
