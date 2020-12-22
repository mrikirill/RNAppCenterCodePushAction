#!/bin/sh
#Get App version from $ENV_FILENAME 
VERSION=$(grep VERSION /github/workspace/$ENV_FILENAME | cut -d '=' -f2)
#Push OTA for iOS
appcenter codepush release-react -a $APP_IOS -d $OTA_CHANNEL_IOS -t "$VERSION" --token "$APPCENTER_TOKEN"
#Push OTA for Android
appcenter codepush release-react -a $APP_ANDROID -d $OTA_CHANNEL_ANDROID -t "$VERSION" --token "$APPCENTER_TOKEN"
