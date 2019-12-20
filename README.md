# Sweetly Library

A Native Library made with Flutter.

The repo is divided into 3 modules:
* `sweetly_core` - Flutter Core with the Dart code
* `flutter_android_embedding` - Android library that depends on the Flutter Core
* `sweetly_ios_embedding` - iOS library that depends on the Flutter Core

# Installing

To run the project you will first need to build the android aar

```bash
cd sweetly_core
flutter create --org com.vanethos.sweetly_core.sweetly_core .
flutter build aar
```

Then, you can run the XCode project inside `sweetly_ios_embedding` and run the Example or the `app` module in `flutter_android_embedding`

