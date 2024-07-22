# livelyness_detection

![](https://img.shields.io/pub/publisher/livelyness_detection) ![](https://img.shields.io/github/issues-raw/GhagSagar23/livelyness_detection) ![](https://img.shields.io/github/languages/count/GhagSagar23/livelyness_detection)
![](https://img.shields.io/pub/likes/livelyness_detection) ![](https://img.shields.io/pub/points/livelyness_detection) ![](https://img.shields.io/pub/popularity/livelyness_detection) ![](https://img.shields.io/pub/v/livelyness_detection)
![](https://img.shields.io/github/directory-file-count/GhagSagar23/livelyness_detection) ![](https://img.shields.io/github/repo-size/GhagSagar23/livelyness_detection) ![](https://img.shields.io/github/commit-activity/w/GhagSagar23/livelyness_detection) ![](https://img.shields.io/github/contributors/GhagSagar23/livelyness_detection)

## Index

- [What is the Livelyness Detection?](#whatIsLivelyness)
- [Platform Support](#platformSupport)
- [Installation](#installation)
  - [Flutter Setup](#flutterSetup)
  - [Native Setup](#flutterSetupNativeSetup)
    - [iOS](#flutterSetupNativeiOS)
    - [Android](#flutterSetupNativeAndroid)
- [Contributors](#contributors)

<a name="whatIsLivelyness"></a>

## What is the Livelyness Detection?

Liveness detection for face recognition in biometrics is a technique where an algorithm detects if the person in front of the camera is alive and real. The algorithm is able to recognize a live person from presentation attacks - where a bad actor, or fraud perpetrator, uses someone else's physical characteristics or biometric data (known as "spoofs") for impersonation.

`Spoofing` attempts using printed photos, recordings, deep fake pictures, and 3D masks poses a serious threat. `Facial Liveness Detection` incorporates specialized features to identify biometric spoofing attacks, which could be an imitation emulating a person’s unique biometrics scanned through the biometric detector to deceive or bypass the identification and authentication steps provided by the system. Even though face recognition can reliably answer the question, “Is this the right person?” but not the question, “Is this a live person?” This is where liveness detection technology plays a significant role in fraud detection and mitigation. Face biometric matching must be able to detect spoofs in order to be trusted, and to maintain the integrity of biometric data.

<!-- <iframe src="https://embed.lottiefiles.com/animation/16432" width="100%" aspect-ratio="auto"></iframe> -->

<iframe 
  width="100%"
  src="https://embed.lottiefiles.com/animation/16432"
  frameborder="0"
  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

<a name="platformSupport"></a>

## Platform Support

| iOS | Android |                                            MacOS                                             |                                             Web                                              |                                            Linux                                             |                                           Windows                                            |
| :-: | :-----: | :------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------: |
| ✔️  |   ✔️    | <iframe src="https://embed.lottiefiles.com/animation/96163" height="25" width="25"></iframe> | <iframe src="https://embed.lottiefiles.com/animation/96163" height="25" width="25"></iframe> | <iframe src="https://embed.lottiefiles.com/animation/96163" height="25" width="25"></iframe> | <iframe src="https://embed.lottiefiles.com/animation/96163" height="25" width="25"></iframe> |

<a name="installation"></a>

## Installation

First, we have to install the package on flutter.

<a name="flutterSetup"></a>

#### Flutter Setup

Add `livelyness_detection` to your `pubspec.yaml` dependencies.

<a name="flutterSetupUsingCommandLine"></a>

##### Using command-line

```sh
flutter pub add livelyness_detection
```

<a name="flutterSetupNativeSetup"></a>

#### Native Setup

Next comes the native setup on both android and iOS

<a name="flutterSetupNativeiOS"></a>

<details>
  <summary>iOS</summary>
  
  #### iOS Setup
  1. Open the project in Xcode and set the deployment
  2. Open the `ios/Runner/Info.plist` file as `Source Code`.
  3. Add the below-mentioned code inside the `<dict>` tag.

```xml
  <key>NSCameraUsageDescription</key>
  <string>Camera Access for Scanning</string>
  <key>NSMicrophoneUsageDescription</key>
  <string>Microphone for playing instructions audio.</string>
```

4. Open the `ios/Runner/Podfile` and uncomment the second line.

```yaml
platform :ios, '14.0' # <---------- Uncomment this line
```

5. Set the deployment target in the Xcode project

  <img width="1440" alt="Screenshot 2023-01-02 at 11 03 17 AM" src="https://user-images.githubusercontent.com/106381741/210199508-72c0572c-c153-4178-b29a-4ae490f1e989.png">
</details>

<a name="flutterSetupNativeAndroid"></a>

<details>
  <summary>Android</summary>
  
  #### Android Setup
  1. Open the `example/android/app/build.gradle` file and set the `minSdkVersion` as `21`.
</details>

<a name="codeExample"></a>

## Example

A call to a single line function will return a temporary path to the captured image.

<a name="exampleCode"></a>

#### Code

```dart
    final String? response =
        await LivelynessDetection.instance.detectLivelyness(
      context,
      config: DetectionConfig(
        steps: [
          LivelynessStepItem(
            step: LivelynessStep.blink,
            title: "Blink",
            isCompleted: false,
          ),
          LivelynessStepItem(
            step: LivelynessStep.smile,
            title: "Smile",
            isCompleted: false,
          ),
        ],
        startWithInfoScreen: true,
      ),
    );
```

<a name="exampleVideo"></a>

#### Example Video-Andriod , iOS
![The example app running in Andriod](https://github.com/phil10xs/livelyness_detection/blob/develop/lib/src/assets/demo/livelyness_detection_android.gif?raw=true)



## Contributors

<a href="https://github.com/GhagSagar23/livelyness_detection/graphs/contributors"><img src="https://contrib.rocks/image?repo=GhagSagar23/livelyness_detection" width="128" height="128" /></a>
