# RN-AppCenter-CodePush

Make OTA update for Reacn Native Apps

## Required Env Params

*ENV_FILENAME* - name of .env file

*APPCENTER_TOKEN* - [AppCenter API token](https://appcenter.ms/settings/apitokens)

*APP_IOS* - App name for iOS App by running `appcenter apps list`

*OTA_CHANNEL_IOS* - CodePush Channel for iOS App

*APP_ANDROID* - App name for Android App by running `appcenter apps list`

*OTA_CHANNEL_ANDROID* - CodePush Channel for Android App


```
name: Build, code quality, tests 

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Install npm dependencies
      run: npm i
    - name: Build OTA update
      uses: mrikirill/RN-AppCenter-CodePush@v1.0.0
      env:
        ENV_FILENAME: .env.template
        APPCENTER_TOKEN: app-center-token
        APP_IOS: AppIOS
        OTA_CHANNEL_IOS: Staging
        APP_ANDROID: AppAndroid
        OTA_CHANNEL_ANDROID: Staging
```
