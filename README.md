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
   
5) Get link from an email. Link should look like appgate://URL/STRING 
6) Click the button to use the appgate link.
7) Click "Connect to appgate sdp" 

![after profile link](https://github.com/user-attachments/assets/937dea36-a8a5-47da-a35e-ebebc847c63a)
   
8) Click Sign in and a browser should open going to https://auth5.jsf.mil 

![Connect](https://github.com/user-attachments/assets/1a4cbbe4-8a8b-41df-8de6-6e2a1933c741)
    
9) Use the username from email (Ex RYAN.BRIGGS.CTR@jre.jsf.mil), a onetime password in another email from onetimesecret.com, and a code from your RSA token. (Login) Note: if you fail, wait for code to reset before trying again. Don't use same RSA code twice.

![login](https://github.com/user-attachments/assets/9eadc41d-1965-45e2-9bf6-00cf4c23de03)

10) This will login the Appgate SDP application. You can then also go to https://auth5.jsf.mil/cfs/Portal and login to the portal website. Here you can see a list of available applications. 

![portal](https://github.com/user-attachments/assets/3256a3a9-f0dc-4eae-9cd7-0fcdb58b5733)

Note: If your STIGs button on the AppGate SDP is red, sign into Appgate SDP and let it sit for 30-60 minutes, sign out, and the sign in. It might work then, if not try troubleshooting steps below.

11) This is what a working AppGate SDP should look like.

![working1](https://github.com/user-attachments/assets/80914d84-5530-479c-895b-a5bf69b8a9a5)


### Troubleshooting STIGs staying red
1) Download cnap_pass_cat1_script.ps1
2) Run Powershell ISE as administrator.
3) Open cnap_pass_cat1_script.ps1 and run. 
4) If you get an error stating that running scripts is disabled on this system, run the command "Set-ExecutionPolicy Unrestricted". Then Re-run the powershell script.
   
![Troubleshoot1](https://github.com/user-attachments/assets/3b62dd2c-07d7-42c1-ab93-343bbcb20587)


## Setup AWS Workspaces
1) Go to https://clients.amazonworkspaces.com, download your operating system application, and install.
2) On your desktop, double click "Amazon Workspaces" (AWSwork1)

![awswork1](https://github.com/user-attachments/assets/92c7855b-8462-49d3-a395-d982d2d0dc0a)

3) Go to settings and then "Manage Connection Settings".
4) Set Proxy Setting to "Don't use Proxy Server" and click save. (AWSwork2)

![AWSwork2](https://github.com/user-attachments/assets/e7656e79-987a-4a41-a215-bf12fafb581b)

5) Input registration code from email and then click register. (AWSwork3)

![AWSwork3](https://github.com/user-attachments/assets/b661a163-6320-4708-94e3-2b46782be981)

Unfortunetely this is where I am stuck at. Whenever I attempt to use the registration code, I get an error telling me that this device is not authorized. I will update this page when I get a fix action.
