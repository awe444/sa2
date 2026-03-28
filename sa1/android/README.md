# SA1 Android Build

## Prerequisites

- Android SDK (API 34)
- Android NDK (r25 or later)
- CMake 3.22.1 (install via Android SDK Manager)
- SDL2 source tree

## Setup

1. Download and extract the SDL2 source into `app/jni/SDL2/`:

   ```sh
   cd app/jni
   wget https://github.com/libsdl-org/SDL/releases/download/release-2.30.3/SDL2-2.30.3.tar.gz
   tar xf SDL2-2.30.3.tar.gz
   mv SDL2-2.30.3 SDL2
   ```

2. Copy the SDL2 Java sources into the project:

   ```sh
   cp -r app/jni/SDL2/android-project/app/src/main/java/org \
         app/src/main/java/
   ```

## Building

From the `sa1/android/` directory:

```sh
./gradlew assembleDebug
```

The APK will be at `app/build/outputs/apk/debug/app-debug.apk`.

## Gamepad Support

The build supports standard Android-compatible gamepads via SDL2's
GameController API. D-pad, analog stick, face buttons, shoulder buttons,
and triggers are mapped to GBA controls. No touch controls are provided.

## Notes

- The native library is built as `libmain.so` (SDL2 convention).
- The app targets `arm64-v8a`, `armeabi-v7a`, and `x86_64` ABIs.
- The SA1 save file (`sa1.sav`) is stored in the app's internal storage.
