# codepush-cordova

"CodePush is a  service that enables Cordova and React Native developers to deploy mobile app updates directly to their users’ devices"

https://microsoft.github.io/code-push/

"The Electrode OTA Server provides a server to allow hot deploy to android and ios React Native™ and Cordova™ apps. The server is API compatible with code-push-cli, the Code Push React Native SDK and the Code Push Cordova SDK."

https://github.com/electrode-io/electrode-ota-server



# Prerequisites

<ul>
  <li>npm
  <li>cordova
  <li>Android SDK and tools
  <li>Android Studio
  <li>github account



# Steps

<ul>
  <li>install code push client : sudo npm install -g code-push-cli
  <li>Add host definition to your host file:  127.0.0.1    eterationota.com
  <li>Register a new OAuth application on github : https://github.com/settings/applications/new
  <table>
      <tr>
        <td>Application name</td><td>OTAServer</td>
      </tr>
      <tr>
        <td>Homepage URL</td><td>http://eterationota.com:9001</td>
      </tr>
      <tr>
        <td>Authorization callback URL</td><td>http://eterationota.com:9001</td>
      </tr>
  </table>
  <li>Update otaserver configuration with your github application information: electrode_ota/src/docker/config/production.json
  <li>Update otaserver configuration with your ip adress of your computer: electrode_ota/src/docker/config/production.json (downloadUrl)
  <li>execute ./dockerRun.sh (electrode-ota-server and cassandra)
  <li>Register to OTAServer : code-push register http://eterationota.com:9001
  <li>Add your application to OTA server : code-push app add SimpleMobileApp (in the mobile app folder)
  <li>Install cordova code-push plugin :cordova plugin add cordova-plugin-code-push@latest


  TO BE CONTINUE...
