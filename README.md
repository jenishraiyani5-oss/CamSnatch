# CamSnatch
CamSnatch grabs cam shots from target's phone front camera or PC webcam just by sending a link.

# What is CamSnatch?
<p>CamSnatch is a technique to take cam shots of target's phone front camera or PC webcam. CamSnatch hosts a fake website on an in-built PHP server and uses ngrok & CloudFlare Tunnel to generate a link which we forward to the target, which can be used over the internet. The website asks for camera permission and if the target allows it, this tool grabs camshots of the target's device.

A GPS location capture feature has been added.</p>

## Features
<p>CamSnatch includes several automatic webpage templates to keep the target engaged on the webpage and capture more pictures of the cam.</p>
<ul>
  <li>Birthday Wish</li>
  <li>Instagram Followers</li>
  <li>WhatsApp Number</li>
  <li>GPS Location Tracking</li>
</ul>
<p>A cleanup script has been added to remove all unnecessary files and logs.</p>

## This Tool Tested On :
<ul>
  <li>Kali Linux</li>
  <li>Termux</li>
  <li>MacOS</li>
  <li>Ubuntu</li>
  <li>Parrot Sec OS</li>
  <li>Windows (WSL)</li>
</ul>

# Installing and requirements
<p>This tool require PHP for webserver, and wget for downloading dependencies. First run following command on your terminal</p>

```
apt-get -y install php wget unzip
```

## Installing (Kali Linux/Termux):

```
git clone https://github.com/jenishraiyani5-oss/CamSnatch.git
cd CamSnatch
bash CamSnatch.sh
```

## Clean logs & unnecessary files :

```
bash cleanup.sh
```
<p>The cam files and saved location will also be removed.</p>


### Important Notice
Unauthorized reuploading of this project is prohibited.

<p>CamSnatch is created to help in penetration testing and it's not responsible for any misuse or illegal purposes.</p>


