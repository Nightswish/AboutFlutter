# AboutFlutter
Flutter Study
Dart를 시작으로 Flutter를 공부한다.
```
AboutFlutter
├─ portfolio
│  ├─ analysis_options.yaml
│  ├─ android
│  │  ├─ app
│  │  │  └─ src
│  │  │     ├─ debug
│  │  │     │  └─ AndroidManifest.xml
│  │  │     ├─ main
│  │  │     │  ├─ AndroidManifest.xml
│  │  │     │  ├─ java
│  │  │     │  │  └─ io
│  │  │     │  │     └─ flutter
│  │  │     │  │        └─ plugins
│  │  │     │  │           └─ GeneratedPluginRegistrant.java
│  │  │     │  ├─ kotlin
│  │  │     │  │  └─ com
│  │  │     │  │     └─ example
│  │  │     │  │        └─ portfolio
│  │  │     │  │           └─ MainActivity.kt
│  │  │     │  └─ res
│  │  │     │     ├─ drawable
│  │  │     │     │  └─ launch_background.xml
│  │  │     │     ├─ drawable-v21
│  │  │     │     │  └─ launch_background.xml
│  │  │     │     ├─ mipmap-hdpi
│  │  │     │     │  └─ ic_launcher.png
│  │  │     │     ├─ mipmap-mdpi
│  │  │     │     │  └─ ic_launcher.png
│  │  │     │     ├─ mipmap-xhdpi
│  │  │     │     │  └─ ic_launcher.png
│  │  │     │     ├─ mipmap-xxhdpi
│  │  │     │     │  └─ ic_launcher.png
│  │  │     │     ├─ mipmap-xxxhdpi
│  │  │     │     │  └─ ic_launcher.png
│  │  │     │     ├─ values
│  │  │     │     │  └─ styles.xml
│  │  │     │     └─ values-night
│  │  │     │        └─ styles.xml
│  │  │     └─ profile
│  │  │        └─ AndroidManifest.xml
│  │  ├─ gradle
│  │  │  └─ wrapper
│  │  │     ├─ gradle-wrapper.jar
│  │  │     └─ gradle-wrapper.properties
│  │  ├─ gradle.properties
│  │  ├─ gradlew
│  │  └─ gradlew.bat
│  ├─ assets
│  │  ├─ fonts
│  │  │  ├─ Pretendard-Bold.woff2
│  │  │  ├─ Pretendard-Medium.woff2
│  │  │  ├─ Pretendard-Regular.woff2
│  │  │  └─ Pretendard-SemiBold.woff2
│  │  ├─ icons
│  │  └─ images
│  ├─ ios
│  │  ├─ Flutter
│  │  │  ├─ AppFrameworkInfo.plist
│  │  │  ├─ Debug.xcconfig
│  │  │  ├─ ephemeral
│  │  │  │  ├─ flutter_lldbinit
│  │  │  │  └─ flutter_lldb_helper.py
│  │  │  ├─ flutter_export_environment.sh
│  │  │  ├─ Generated.xcconfig
│  │  │  └─ Release.xcconfig
│  │  ├─ Runner
│  │  │  ├─ AppDelegate.swift
│  │  │  ├─ Assets.xcassets
│  │  │  │  └─ LaunchImage.imageset
│  │  │  │     ├─ Contents.json
│  │  │  │     ├─ LaunchImage.png
│  │  │  │     ├─ LaunchImage@2x.png
│  │  │  │     ├─ LaunchImage@3x.png
│  │  │  │     └─ README.md
│  │  │  ├─ Base.lproj
│  │  │  │  ├─ LaunchScreen.storyboard
│  │  │  │  └─ Main.storyboard
│  │  │  ├─ GeneratedPluginRegistrant.h
│  │  │  ├─ GeneratedPluginRegistrant.m
│  │  │  ├─ Info.plist
│  │  │  └─ Runner-Bridging-Header.h
│  │  ├─ Runner.xcodeproj
│  │  │  ├─ project.pbxproj
│  │  │  ├─ project.xcworkspace
│  │  │  │  ├─ contents.xcworkspacedata
│  │  │  │  └─ xcshareddata
│  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │  │     └─ WorkspaceSettings.xcsettings
│  │  │  └─ xcshareddata
│  │  │     └─ xcschemes
│  │  │        └─ Runner.xcscheme
│  │  ├─ Runner.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     └─ WorkspaceSettings.xcsettings
│  │  └─ RunnerTests
│  │     └─ RunnerTests.swift
│  ├─ lib
│  │  ├─ core
│  │  │  ├─ constants
│  │  │  │  └─ app_constants.dart
│  │  │  ├─ models
│  │  │  │  └─ project.dart
│  │  │  ├─ providers
│  │  │  │  ├─ projects_provider.dart
│  │  │  │  ├─ theme_provider.dart
│  │  │  │  └─ ui_state_providers.dart
│  │  │  ├─ router
│  │  │  ├─ theme
│  │  │  │  └─ theme.dart
│  │  │  └─ utils
│  │  │     ├─ logger.dart
│  │  │     ├─ web_utils_stub.dart
│  │  │     └─ web_utils_web.dart.dart
│  │  ├─ features
│  │  │  └─ landing
│  │  │     ├─ pages
│  │  │     └─ widgets
│  │  ├─ main.dart
│  │  ├─ presentation
│  │  │  └─ responsive.dart
│  │  └─ shared
│  │     ├─ animations
│  │     │  ├─ entrance_animations.dart
│  │     │  └─ hover_animations.dart
│  │     ├─ components
│  │     └─ widgets
│  │        ├─ buttons
│  │        ├─ hero_section.dart
│  │        └─ layouts
│  ├─ linux
│  │  ├─ CMakeLists.txt
│  │  ├─ flutter
│  │  │  ├─ CMakeLists.txt
│  │  │  ├─ ephemeral
│  │  │  │  └─ .plugin_symlinks
│  │  │  │     ├─ path_provider_linux
│  │  │  │     │  ├─ AUTHORS
│  │  │  │     │  ├─ CHANGELOG.md
│  │  │  │     │  ├─ example
│  │  │  │     │  │  ├─ integration_test
│  │  │  │     │  │  │  └─ path_provider_test.dart
│  │  │  │     │  │  ├─ lib
│  │  │  │     │  │  │  └─ main.dart
│  │  │  │     │  │  ├─ linux
│  │  │  │     │  │  │  ├─ CMakeLists.txt
│  │  │  │     │  │  │  ├─ flutter
│  │  │  │     │  │  │  │  ├─ CMakeLists.txt
│  │  │  │     │  │  │  │  └─ generated_plugins.cmake
│  │  │  │     │  │  │  ├─ main.cc
│  │  │  │     │  │  │  ├─ my_application.cc
│  │  │  │     │  │  │  └─ my_application.h
│  │  │  │     │  │  ├─ pubspec.yaml
│  │  │  │     │  │  ├─ README.md
│  │  │  │     │  │  └─ test_driver
│  │  │  │     │  │     └─ integration_test.dart
│  │  │  │     │  ├─ lib
│  │  │  │     │  │  ├─ path_provider_linux.dart
│  │  │  │     │  │  └─ src
│  │  │  │     │  │     ├─ get_application_id.dart
│  │  │  │     │  │     ├─ get_application_id_real.dart
│  │  │  │     │  │     ├─ get_application_id_stub.dart
│  │  │  │     │  │     └─ path_provider_linux.dart
│  │  │  │     │  ├─ LICENSE
│  │  │  │     │  ├─ pubspec.yaml
│  │  │  │     │  ├─ README.md
│  │  │  │     │  └─ test
│  │  │  │     │     ├─ get_application_id_test.dart
│  │  │  │     │     └─ path_provider_linux_test.dart
│  │  │  │     └─ shared_preferences_linux
│  │  │  │        ├─ AUTHORS
│  │  │  │        ├─ CHANGELOG.md
│  │  │  │        ├─ example
│  │  │  │        │  ├─ integration_test
│  │  │  │        │  │  └─ shared_preferences_test.dart
│  │  │  │        │  ├─ lib
│  │  │  │        │  │  └─ main.dart
│  │  │  │        │  ├─ linux
│  │  │  │        │  │  ├─ CMakeLists.txt
│  │  │  │        │  │  ├─ flutter
│  │  │  │        │  │  │  ├─ CMakeLists.txt
│  │  │  │        │  │  │  └─ generated_plugins.cmake
│  │  │  │        │  │  ├─ main.cc
│  │  │  │        │  │  ├─ my_application.cc
│  │  │  │        │  │  └─ my_application.h
│  │  │  │        │  ├─ pubspec.yaml
│  │  │  │        │  ├─ README.md
│  │  │  │        │  └─ test_driver
│  │  │  │        │     └─ integration_test.dart
│  │  │  │        ├─ lib
│  │  │  │        │  └─ shared_preferences_linux.dart
│  │  │  │        ├─ LICENSE
│  │  │  │        ├─ pubspec.yaml
│  │  │  │        ├─ README.md
│  │  │  │        └─ test
│  │  │  │           ├─ fake_path_provider_linux.dart
│  │  │  │           ├─ legacy_shared_preferences_linux_test.dart
│  │  │  │           └─ shared_preferences_linux_async_test.dart
│  │  │  ├─ generated_plugins.cmake
│  │  │  ├─ generated_plugin_registrant.cc
│  │  │  └─ generated_plugin_registrant.h
│  │  └─ runner
│  │     ├─ CMakeLists.txt
│  │     ├─ main.cc
│  │     ├─ my_application.cc
│  │     └─ my_application.h
│  ├─ macos
│  │  ├─ Flutter
│  │  │  ├─ ephemeral
│  │  │  │  ├─ Flutter-Generated.xcconfig
│  │  │  │  └─ flutter_export_environment.sh
│  │  │  ├─ Flutter-Debug.xcconfig
│  │  │  ├─ Flutter-Release.xcconfig
│  │  │  └─ GeneratedPluginRegistrant.swift
│  │  ├─ Runner
│  │  │  ├─ AppDelegate.swift
│  │  │  ├─ Assets.xcassets
│  │  │  ├─ Base.lproj
│  │  │  │  └─ MainMenu.xib
│  │  │  ├─ Configs
│  │  │  │  ├─ AppInfo.xcconfig
│  │  │  │  ├─ Debug.xcconfig
│  │  │  │  ├─ Release.xcconfig
│  │  │  │  └─ Warnings.xcconfig
│  │  │  ├─ DebugProfile.entitlements
│  │  │  ├─ Info.plist
│  │  │  ├─ MainFlutterWindow.swift
│  │  │  └─ Release.entitlements
│  │  ├─ Runner.xcodeproj
│  │  │  ├─ project.pbxproj
│  │  │  ├─ project.xcworkspace
│  │  │  │  └─ xcshareddata
│  │  │  │     └─ IDEWorkspaceChecks.plist
│  │  │  └─ xcshareddata
│  │  │     └─ xcschemes
│  │  │        └─ Runner.xcscheme
│  │  ├─ Runner.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     └─ IDEWorkspaceChecks.plist
│  │  └─ RunnerTests
│  │     └─ RunnerTests.swift
│  ├─ pubspec.lock
│  ├─ pubspec.yaml
│  ├─ README.md
│  ├─ test
│  │  └─ widget_test.dart
│  ├─ web
│  │  ├─ favicon.png
│  │  ├─ icons
│  │  ├─ index.html
│  │  └─ manifest.json
│  └─ windows
│     ├─ CMakeLists.txt
│     ├─ flutter
│     │  ├─ CMakeLists.txt
│     │  ├─ ephemeral
│     │  │  └─ .plugin_symlinks
│     │  │     ├─ path_provider_windows
│     │  │     │  ├─ AUTHORS
│     │  │     │  ├─ CHANGELOG.md
│     │  │     │  ├─ example
│     │  │     │  │  ├─ integration_test
│     │  │     │  │  │  └─ path_provider_test.dart
│     │  │     │  │  ├─ lib
│     │  │     │  │  │  └─ main.dart
│     │  │     │  │  ├─ pubspec.yaml
│     │  │     │  │  ├─ README.md
│     │  │     │  │  ├─ test_driver
│     │  │     │  │  │  └─ integration_test.dart
│     │  │     │  │  └─ windows
│     │  │     │  │     ├─ CMakeLists.txt
│     │  │     │  │     ├─ flutter
│     │  │     │  │     │  ├─ CMakeLists.txt
│     │  │     │  │     │  └─ generated_plugins.cmake
│     │  │     │  │     └─ runner
│     │  │     │  │        ├─ CMakeLists.txt
│     │  │     │  │        ├─ flutter_window.cpp
│     │  │     │  │        ├─ flutter_window.h
│     │  │     │  │        ├─ main.cpp
│     │  │     │  │        ├─ resource.h
│     │  │     │  │        ├─ resources
│     │  │     │  │        │  └─ app_icon.ico
│     │  │     │  │        ├─ runner.exe.manifest
│     │  │     │  │        ├─ Runner.rc
│     │  │     │  │        ├─ run_loop.cpp
│     │  │     │  │        ├─ run_loop.h
│     │  │     │  │        ├─ utils.cpp
│     │  │     │  │        ├─ utils.h
│     │  │     │  │        ├─ win32_window.cpp
│     │  │     │  │        └─ win32_window.h
│     │  │     │  ├─ lib
│     │  │     │  │  ├─ path_provider_windows.dart
│     │  │     │  │  └─ src
│     │  │     │  │     ├─ folders.dart
│     │  │     │  │     ├─ folders_stub.dart
│     │  │     │  │     ├─ guid.dart
│     │  │     │  │     ├─ path_provider_windows_real.dart
│     │  │     │  │     ├─ path_provider_windows_stub.dart
│     │  │     │  │     └─ win32_wrappers.dart
│     │  │     │  ├─ LICENSE
│     │  │     │  ├─ pubspec.yaml
│     │  │     │  ├─ README.md
│     │  │     │  └─ test
│     │  │     │     ├─ guid_test.dart
│     │  │     │     └─ path_provider_windows_test.dart
│     │  │     └─ shared_preferences_windows
│     │  │        ├─ AUTHORS
│     │  │        ├─ CHANGELOG.md
│     │  │        ├─ example
│     │  │        │  ├─ AUTHORS
│     │  │        │  ├─ integration_test
│     │  │        │  │  └─ shared_preferences_test.dart
│     │  │        │  ├─ lib
│     │  │        │  │  └─ main.dart
│     │  │        │  ├─ LICENSE
│     │  │        │  ├─ pubspec.yaml
│     │  │        │  ├─ README.md
│     │  │        │  ├─ test_driver
│     │  │        │  │  └─ integration_test.dart
│     │  │        │  └─ windows
│     │  │        │     ├─ CMakeLists.txt
│     │  │        │     ├─ flutter
│     │  │        │     │  ├─ CMakeLists.txt
│     │  │        │     │  └─ generated_plugins.cmake
│     │  │        │     └─ runner
│     │  │        │        ├─ CMakeLists.txt
│     │  │        │        ├─ flutter_window.cpp
│     │  │        │        ├─ flutter_window.h
│     │  │        │        ├─ main.cpp
│     │  │        │        ├─ resource.h
│     │  │        │        ├─ resources
│     │  │        │        │  └─ app_icon.ico
│     │  │        │        ├─ runner.exe.manifest
│     │  │        │        ├─ Runner.rc
│     │  │        │        ├─ run_loop.cpp
│     │  │        │        ├─ run_loop.h
│     │  │        │        ├─ utils.cpp
│     │  │        │        ├─ utils.h
│     │  │        │        ├─ win32_window.cpp
│     │  │        │        └─ win32_window.h
│     │  │        ├─ lib
│     │  │        │  └─ shared_preferences_windows.dart
│     │  │        ├─ LICENSE
│     │  │        ├─ pubspec.yaml
│     │  │        ├─ README.md
│     │  │        └─ test
│     │  │           ├─ fake_path_provider_windows.dart
│     │  │           ├─ legacy_shared_preferences_windows_test.dart
│     │  │           └─ shared_preferences_windows_async_test.dart
│     │  ├─ generated_plugins.cmake
│     │  ├─ generated_plugin_registrant.cc
│     │  └─ generated_plugin_registrant.h
│     └─ runner
│        ├─ CMakeLists.txt
│        ├─ flutter_window.cpp
│        ├─ flutter_window.h
│        ├─ main.cpp
│        ├─ resource.h
│        ├─ resources
│        │  └─ app_icon.ico
│        ├─ runner.exe.manifest
│        ├─ Runner.rc
│        ├─ utils.cpp
│        ├─ utils.h
│        ├─ win32_window.cpp
│        └─ win32_window.h
└─ README.md

```