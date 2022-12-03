# portfolio

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Deploy

-- App icon setup by following packages:

flutter_launcher_icons: 

flutter_icons:
  android: true
  ios: true
  image_path: "images/app_logo.png"

  -------------
--App Name change by following folder:
(My_app)/android/app/src/main/AndroidManifest.xml
-
 Line: android:label="portfolio"

---------------------------

--Keystore for Playstore use by Command: for windows:
  keytool -genkey -v -keystore %userprofile%\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload

--you will find bunch of question if all ok:
  Enter keystore password:  
Keystore password is too short - must be at least 6 characters
Enter keystore password:  
Re-enter new password: 
What is your first and last name?
  [Unknown]:  mujahid
What is the name of your organizational unit?
  [Unknown]:  devfirm
What is the name of your organization?
  [Unknown]:  devfirm
What is the name of your City or Locality?
  [Unknown]:  dhaka
What is the name of your State or Province?
  [Unknown]:  dhaka
What is the two-letter country code for this unit?
  [Unknown]:  DH
Is CN=mujahid, OU=devfirm, O=devfirm, L=dhaka, ST=dhaka, C=DH correct?
  [no]:  y

Generating 2,048 bit RSA key pair and self-signed certificate (SHA256withRSA) with a validity of 10,000 days
        for: CN=mujahid, OU=devfirm, O=devfirm, L=dhaka, ST=dhaka, C=DH
Enter key password for <upload>
        (RETURN if same as keystore password):
Re-enter new password:
[Storing %userprofile%\upload-keystore.jks]
keytool error: java.io.FileNotFoundException: %userprofile%\upload-keystore.jks (The system cannot find the path specified)
java.io.FileNotFoundException: %userprofile%\upload-keystore.jks (The system cannot find the path specified)
        at java.base/java.io.FileOutputStream.open0(Native Method)
        at java.base/java.io.FileOutputStream.open(FileOutputStream.java:298)
        at java.base/java.io.FileOutputStream.<init>(FileOutputStream.java:237)        
        at java.base/java.io.FileOutputStream.<init>(FileOutputStream.java:126)        
        at java.base/sun.security.tools.keytool.Main.doCommands(Main.java:1348)        
        at java.base/sun.security.tools.keytool.Main.run(Main.java:412)
        at java.base/sun.security.tools.keytool.Main.main(Main.java:405)

----------------------
--if not ok then command : flutter doctor -v
and pick the path from: Java binary at: 
and paste the path in terminal with "keytool" replacing "java" in the path

-------------------
--Create a file named [project]/android/key.properties that contains a reference to your keystore:

storePassword=123456
keyPassword=123456
keyAlias=upload
storeFile=/%userprofile%/upload-keystore.jks


------------------

--Configure gradle to use your upload key when building your app in release mode by editing the
 [project]/android/app/build.gradle file.

1. Add the keystore information from your properties file before the android block:
 def keystoreProperties = new Properties()
   def keystorePropertiesFile = rootProject.file('key.properties')
   if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
   }

   android {
         ...
   }

2. And replace it with the following signing configuration info:

 signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
   }
   buildTypes {
       release {
           signingConfig signingConfigs.release
       }
   }

3. And check this

defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.portfolio"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-build-configuration.
        minSdkVersion 20
       // minSdkVersion flutter.minSdkVersion
        targetSdkVersion 33
        //targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
------------------------

-- Add permission in following folder:
(My_app)/android/app/src/main/AndroidManifest.xml
 Code: <uses-permission android:name="android.permission.INTERNET"/>

 -- Open terminal and command
 "flutter build apk --build-name=1.0.3 --build-number=3"

 --If all ok you will find APK in following folder:

build\app\outputs\flutter-apk\app-release.apk (22.8MB).

--Connect an Android with USB cable 
--Copy "app-release.apk" file and paste in mobile
-- Now you can install APK

