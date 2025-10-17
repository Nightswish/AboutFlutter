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
│  │  │     └─ web_utils_web.dart
│  │  ├─ features
│  │  │  └─ landing
│  │  │     ├─ pages
│  │  │     └─ widgets
│  │  ├─ main.dart
│  │  ├─ presentation
│  │  │  ├─ homepage.dart
│  │  │  ├─ privacy_policy_page.dart
│  │  │  └─ responsive.dart
│  │  └─ shared
│  │     ├─ animations
│  │     │  ├─ entrance_animations.dart
│  │     │  └─ hover_animations.dart
│  │     ├─ components
│  │     └─ widgets
│  │        ├─ buttons
│  │        ├─ hero_section.dart
│  │        ├─ layouts
│  │        └─ projects_grid.dart
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
│  ├─ web
│  │  ├─ favicon.png
│  │  ├─ icons
│  │  ├─ index.html
│  │  ├─ manifest.json
│  │  ├─ robots.txt
│  │  └─ sitemap.xml
│  └─ windows
│     ├─ CMakeLists.txt
│     ├─ flutter
│     │  ├─ CMakeLists.txt
│     │  ├─ ephemeral
│     │  │  └─ .plugin_symlinks
│     │  │     ├─ cloud_firestore
│     │  │     │  ├─ android
│     │  │     │  │  └─ src
│     │  │     │  │     └─ main
│     │  │     │  │        ├─ AndroidManifest.xml
│     │  │     │  │        └─ java
│     │  │     │  │           └─ io
│     │  │     │  │              └─ flutter
│     │  │     │  │                 └─ plugins
│     │  │     │  │                    └─ firebase
│     │  │     │  │                       └─ firestore
│     │  │     │  │                          ├─ FlutterFirebaseFirestoreException.java
│     │  │     │  │                          ├─ FlutterFirebaseFirestoreExtension.java
│     │  │     │  │                          ├─ FlutterFirebaseFirestoreMessageCodec.java
│     │  │     │  │                          ├─ FlutterFirebaseFirestorePlugin.java
│     │  │     │  │                          ├─ FlutterFirebaseFirestoreRegistrar.java
│     │  │     │  │                          ├─ FlutterFirebaseFirestoreTransactionResult.java
│     │  │     │  │                          ├─ GeneratedAndroidFirebaseFirestore.java
│     │  │     │  │                          ├─ streamhandler
│     │  │     │  │                          │  ├─ DocumentSnapshotsStreamHandler.java
│     │  │     │  │                          │  ├─ LoadBundleStreamHandler.java
│     │  │     │  │                          │  ├─ OnTransactionResultListener.java
│     │  │     │  │                          │  ├─ QuerySnapshotsStreamHandler.java
│     │  │     │  │                          │  ├─ SnapshotsInSyncStreamHandler.java
│     │  │     │  │                          │  └─ TransactionStreamHandler.java
│     │  │     │  │                          └─ utils
│     │  │     │  │                             ├─ ExceptionConverter.java
│     │  │     │  │                             ├─ PigeonParser.java
│     │  │     │  │                             └─ ServerTimestampBehaviorConverter.java
│     │  │     │  ├─ CHANGELOG.md
│     │  │     │  ├─ dartpad
│     │  │     │  │  ├─ dartpad_metadata.yaml
│     │  │     │  │  └─ lib
│     │  │     │  │     └─ main.dart
│     │  │     │  ├─ example
│     │  │     │  │  ├─ analysis_options.yaml
│     │  │     │  │  ├─ android
│     │  │     │  │  │  ├─ app
│     │  │     │  │  │  │  ├─ google-services.json
│     │  │     │  │  │  │  └─ src
│     │  │     │  │  │  │     ├─ debug
│     │  │     │  │  │  │     │  └─ AndroidManifest.xml
│     │  │     │  │  │  │     ├─ main
│     │  │     │  │  │  │     │  ├─ AndroidManifest.xml
│     │  │     │  │  │  │     │  ├─ java
│     │  │     │  │  │  │     │  │  └─ io
│     │  │     │  │  │  │     │  │     └─ flutter
│     │  │     │  │  │  │     │  │        └─ plugins
│     │  │     │  │  │  │     │  ├─ kotlin
│     │  │     │  │  │  │     │  │  └─ io
│     │  │     │  │  │  │     │  │     └─ flutter
│     │  │     │  │  │  │     │  │        └─ plugins
│     │  │     │  │  │  │     │  │           └─ firebase
│     │  │     │  │  │  │     │  │              └─ firestore
│     │  │     │  │  │  │     │  │                 └─ example
│     │  │     │  │  │  │     │  │                    └─ MainActivity.kt
│     │  │     │  │  │  │     │  └─ res
│     │  │     │  │  │  │     │     ├─ drawable
│     │  │     │  │  │  │     │     │  └─ launch_background.xml
│     │  │     │  │  │  │     │     ├─ drawable-v21
│     │  │     │  │  │  │     │     │  └─ launch_background.xml
│     │  │     │  │  │  │     │     ├─ mipmap-hdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-mdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-xhdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-xxhdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-xxxhdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ values
│     │  │     │  │  │  │     │     │  └─ styles.xml
│     │  │     │  │  │  │     │     └─ values-night
│     │  │     │  │  │  │     │        └─ styles.xml
│     │  │     │  │  │  │     └─ profile
│     │  │     │  │  │  │        └─ AndroidManifest.xml
│     │  │     │  │  │  ├─ gradle
│     │  │     │  │  │  │  └─ wrapper
│     │  │     │  │  │  │     └─ gradle-wrapper.properties
│     │  │     │  │  │  └─ gradle.properties
│     │  │     │  │  ├─ firebase.json
│     │  │     │  │  ├─ integration_test
│     │  │     │  │  │  ├─ collection_reference_e2e.dart
│     │  │     │  │  │  ├─ document_change_e2e.dart
│     │  │     │  │  │  ├─ document_reference_e2e.dart
│     │  │     │  │  │  ├─ e2e_test.dart
│     │  │     │  │  │  ├─ field_value_e2e.dart
│     │  │     │  │  │  ├─ firebase_options.dart
│     │  │     │  │  │  ├─ firebase_options_secondary.dart
│     │  │     │  │  │  ├─ geo_point_e2e.dart
│     │  │     │  │  │  ├─ instance_e2e.dart
│     │  │     │  │  │  ├─ load_bundle_e2e.dart
│     │  │     │  │  │  ├─ query_e2e.dart
│     │  │     │  │  │  ├─ second_database.dart
│     │  │     │  │  │  ├─ settings_e2e.dart
│     │  │     │  │  │  ├─ snapshot_metadata_e2e.dart
│     │  │     │  │  │  ├─ timestamp_e2e.dart
│     │  │     │  │  │  ├─ transaction_e2e.dart
│     │  │     │  │  │  ├─ vector_value_e2e.dart
│     │  │     │  │  │  ├─ web_snapshot_listeners.dart
│     │  │     │  │  │  └─ write_batch_e2e.dart
│     │  │     │  │  ├─ ios
│     │  │     │  │  │  ├─ firebase_app_id_file.json
│     │  │     │  │  │  ├─ Flutter
│     │  │     │  │  │  │  ├─ AppFrameworkInfo.plist
│     │  │     │  │  │  │  ├─ Debug.xcconfig
│     │  │     │  │  │  │  └─ Release.xcconfig
│     │  │     │  │  │  ├─ Podfile
│     │  │     │  │  │  ├─ Runner
│     │  │     │  │  │  │  ├─ AppDelegate.swift
│     │  │     │  │  │  │  ├─ Assets.xcassets
│     │  │     │  │  │  │  │  └─ LaunchImage.imageset
│     │  │     │  │  │  │  │     ├─ Contents.json
│     │  │     │  │  │  │  │     ├─ LaunchImage.png
│     │  │     │  │  │  │  │     ├─ LaunchImage@2x.png
│     │  │     │  │  │  │  │     ├─ LaunchImage@3x.png
│     │  │     │  │  │  │  │     └─ README.md
│     │  │     │  │  │  │  ├─ Base.lproj
│     │  │     │  │  │  │  │  ├─ LaunchScreen.storyboard
│     │  │     │  │  │  │  │  └─ Main.storyboard
│     │  │     │  │  │  │  ├─ GoogleService-Info.plist
│     │  │     │  │  │  │  ├─ Info.plist
│     │  │     │  │  │  │  └─ Runner-Bridging-Header.h
│     │  │     │  │  │  ├─ Runner.xcodeproj
│     │  │     │  │  │  │  ├─ project.pbxproj
│     │  │     │  │  │  │  ├─ project.xcworkspace
│     │  │     │  │  │  │  │  ├─ contents.xcworkspacedata
│     │  │     │  │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│     │  │     │  │  │  │  │     ├─ swiftpm
│     │  │     │  │  │  │  │     │  └─ configuration
│     │  │     │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│     │  │     │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │     └─ xcschemes
│     │  │     │  │  │  │        └─ Runner.xcscheme
│     │  │     │  │  │  └─ Runner.xcworkspace
│     │  │     │  │  │     ├─ contents.xcworkspacedata
│     │  │     │  │  │     └─ xcshareddata
│     │  │     │  │  │        ├─ IDEWorkspaceChecks.plist
│     │  │     │  │  │        ├─ swiftpm
│     │  │     │  │  │        │  └─ configuration
│     │  │     │  │  │        └─ WorkspaceSettings.xcsettings
│     │  │     │  │  ├─ lib
│     │  │     │  │  │  ├─ firebase_options.dart
│     │  │     │  │  │  └─ main.dart
│     │  │     │  │  ├─ macos
│     │  │     │  │  │  ├─ firebase_app_id_file.json
│     │  │     │  │  │  ├─ Flutter
│     │  │     │  │  │  │  ├─ Flutter-Debug.xcconfig
│     │  │     │  │  │  │  └─ Flutter-Release.xcconfig
│     │  │     │  │  │  ├─ Podfile
│     │  │     │  │  │  ├─ Runner
│     │  │     │  │  │  │  ├─ AppDelegate.swift
│     │  │     │  │  │  │  ├─ Assets.xcassets
│     │  │     │  │  │  │  ├─ Base.lproj
│     │  │     │  │  │  │  │  └─ MainMenu.xib
│     │  │     │  │  │  │  ├─ Configs
│     │  │     │  │  │  │  │  ├─ AppInfo.xcconfig
│     │  │     │  │  │  │  │  ├─ Debug.xcconfig
│     │  │     │  │  │  │  │  ├─ Release.xcconfig
│     │  │     │  │  │  │  │  └─ Warnings.xcconfig
│     │  │     │  │  │  │  ├─ DebugProfile.entitlements
│     │  │     │  │  │  │  ├─ GoogleService-Info.plist
│     │  │     │  │  │  │  ├─ Info.plist
│     │  │     │  │  │  │  ├─ MainFlutterWindow.swift
│     │  │     │  │  │  │  └─ Release.entitlements
│     │  │     │  │  │  ├─ Runner.xcodeproj
│     │  │     │  │  │  │  ├─ project.pbxproj
│     │  │     │  │  │  │  ├─ project.xcworkspace
│     │  │     │  │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│     │  │     │  │  │  │  │     └─ swiftpm
│     │  │     │  │  │  │  │        └─ configuration
│     │  │     │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │     └─ xcschemes
│     │  │     │  │  │  │        └─ Runner.xcscheme
│     │  │     │  │  │  ├─ Runner.xcworkspace
│     │  │     │  │  │  │  ├─ contents.xcworkspacedata
│     │  │     │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │     ├─ IDEWorkspaceChecks.plist
│     │  │     │  │  │  │     └─ swiftpm
│     │  │     │  │  │  │        └─ configuration
│     │  │     │  │  │  └─ RunnerTests
│     │  │     │  │  │     └─ RunnerTests.swift
│     │  │     │  │  ├─ pubspec.yaml
│     │  │     │  │  ├─ README.md
│     │  │     │  │  ├─ test_driver
│     │  │     │  │  │  └─ integration_test.dart
│     │  │     │  │  ├─ web
│     │  │     │  │  │  ├─ favicon.png
│     │  │     │  │  │  ├─ icons
│     │  │     │  │  │  ├─ index.html
│     │  │     │  │  │  ├─ manifest.json
│     │  │     │  │  │  └─ wasm_index.html
│     │  │     │  │  └─ windows
│     │  │     │  │     ├─ CMakeLists.txt
│     │  │     │  │     ├─ flutter
│     │  │     │  │     │  └─ CMakeLists.txt
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
│     │  │     │  │        ├─ utils.cpp
│     │  │     │  │        ├─ utils.h
│     │  │     │  │        ├─ win32_window.cpp
│     │  │     │  │        └─ win32_window.h
│     │  │     │  ├─ ios
│     │  │     │  │  ├─ cloud_firestore
│     │  │     │  │  │  ├─ Package.swift
│     │  │     │  │  │  └─ Sources
│     │  │     │  │  │     └─ cloud_firestore
│     │  │     │  │  │        ├─ FirestoreMessages.g.m
│     │  │     │  │  │        ├─ FirestorePigeonParser.m
│     │  │     │  │  │        ├─ FLTDocumentSnapshotStreamHandler.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreExtension.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestorePlugin.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreReader.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreUtils.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreWriter.m
│     │  │     │  │  │        ├─ FLTLoadBundleStreamHandler.m
│     │  │     │  │  │        ├─ FLTQuerySnapshotStreamHandler.m
│     │  │     │  │  │        ├─ FLTSnapshotsInSyncStreamHandler.m
│     │  │     │  │  │        ├─ FLTTransactionStreamHandler.m
│     │  │     │  │  │        ├─ include
│     │  │     │  │  │        │  └─ cloud_firestore
│     │  │     │  │  │        │     ├─ Private
│     │  │     │  │  │        │     │  ├─ FirestorePigeonParser.h
│     │  │     │  │  │        │     │  ├─ FLTDocumentSnapshotStreamHandler.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreExtension.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreReader.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreUtils.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreWriter.h
│     │  │     │  │  │        │     │  ├─ FLTLoadBundleStreamHandler.h
│     │  │     │  │  │        │     │  ├─ FLTQuerySnapshotStreamHandler.h
│     │  │     │  │  │        │     │  ├─ FLTSnapshotsInSyncStreamHandler.h
│     │  │     │  │  │        │     │  └─ FLTTransactionStreamHandler.h
│     │  │     │  │  │        │     └─ Public
│     │  │     │  │  │        │        ├─ CustomPigeonHeaderFirestore.h
│     │  │     │  │  │        │        ├─ FirestoreMessages.g.h
│     │  │     │  │  │        │        └─ FLTFirebaseFirestorePlugin.h
│     │  │     │  │  │        └─ Resources
│     │  │     │  │  ├─ cloud_firestore.podspec
│     │  │     │  │  └─ generated_firebase_sdk_version.txt
│     │  │     │  ├─ lib
│     │  │     │  │  ├─ cloud_firestore.dart
│     │  │     │  │  └─ src
│     │  │     │  │     ├─ aggregate_query.dart
│     │  │     │  │     ├─ aggregate_query_snapshot.dart
│     │  │     │  │     ├─ collection_reference.dart
│     │  │     │  │     ├─ document_change.dart
│     │  │     │  │     ├─ document_reference.dart
│     │  │     │  │     ├─ document_snapshot.dart
│     │  │     │  │     ├─ field_value.dart
│     │  │     │  │     ├─ filters.dart
│     │  │     │  │     ├─ firestore.dart
│     │  │     │  │     ├─ load_bundle_task.dart
│     │  │     │  │     ├─ load_bundle_task_snapshot.dart
│     │  │     │  │     ├─ persistent_cache_index_manager.dart
│     │  │     │  │     ├─ query.dart
│     │  │     │  │     ├─ query_document_snapshot.dart
│     │  │     │  │     ├─ query_snapshot.dart
│     │  │     │  │     ├─ snapshot_metadata.dart
│     │  │     │  │     ├─ transaction.dart
│     │  │     │  │     ├─ utils
│     │  │     │  │     │  └─ codec_utility.dart
│     │  │     │  │     └─ write_batch.dart
│     │  │     │  ├─ LICENSE
│     │  │     │  ├─ macos
│     │  │     │  │  ├─ cloud_firestore
│     │  │     │  │  │  ├─ Package.swift
│     │  │     │  │  │  └─ Sources
│     │  │     │  │  │     └─ cloud_firestore
│     │  │     │  │  │        ├─ FirestoreMessages.g.m
│     │  │     │  │  │        ├─ FirestorePigeonParser.m
│     │  │     │  │  │        ├─ FLTDocumentSnapshotStreamHandler.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreExtension.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestorePlugin.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreReader.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreUtils.m
│     │  │     │  │  │        ├─ FLTFirebaseFirestoreWriter.m
│     │  │     │  │  │        ├─ FLTLoadBundleStreamHandler.m
│     │  │     │  │  │        ├─ FLTQuerySnapshotStreamHandler.m
│     │  │     │  │  │        ├─ FLTSnapshotsInSyncStreamHandler.m
│     │  │     │  │  │        ├─ FLTTransactionStreamHandler.m
│     │  │     │  │  │        ├─ include
│     │  │     │  │  │        │  └─ cloud_firestore
│     │  │     │  │  │        │     ├─ Private
│     │  │     │  │  │        │     │  ├─ FirestorePigeonParser.h
│     │  │     │  │  │        │     │  ├─ FLTDocumentSnapshotStreamHandler.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreExtension.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreReader.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreUtils.h
│     │  │     │  │  │        │     │  ├─ FLTFirebaseFirestoreWriter.h
│     │  │     │  │  │        │     │  ├─ FLTLoadBundleStreamHandler.h
│     │  │     │  │  │        │     │  ├─ FLTQuerySnapshotStreamHandler.h
│     │  │     │  │  │        │     │  ├─ FLTSnapshotsInSyncStreamHandler.h
│     │  │     │  │  │        │     │  └─ FLTTransactionStreamHandler.h
│     │  │     │  │  │        │     └─ Public
│     │  │     │  │  │        │        ├─ CustomPigeonHeaderFirestore.h
│     │  │     │  │  │        │        ├─ FirestoreMessages.g.h
│     │  │     │  │  │        │        └─ FLTFirebaseFirestorePlugin.h
│     │  │     │  │  │        └─ Resources
│     │  │     │  │  └─ cloud_firestore.podspec
│     │  │     │  ├─ pubspec.yaml
│     │  │     │  ├─ README.md
│     │  │     │  ├─ test
│     │  │     │  │  ├─ cloud_firestore_test.dart
│     │  │     │  │  ├─ collection_reference_test.dart
│     │  │     │  │  ├─ field_value_test.dart
│     │  │     │  │  ├─ mock.dart
│     │  │     │  │  ├─ query_test.dart
│     │  │     │  │  └─ test_firestore_message_codec.dart
│     │  │     │  └─ windows
│     │  │     │     ├─ cloud_firestore_plugin.cpp
│     │  │     │     ├─ cloud_firestore_plugin.h
│     │  │     │     ├─ cloud_firestore_plugin_c_api.cpp
│     │  │     │     ├─ CMakeLists.txt
│     │  │     │     ├─ firestore_codec.cpp
│     │  │     │     ├─ firestore_codec.h
│     │  │     │     ├─ include
│     │  │     │     │  └─ cloud_firestore
│     │  │     │     │     └─ cloud_firestore_plugin_c_api.h
│     │  │     │     ├─ messages.g.cpp
│     │  │     │     ├─ messages.g.h
│     │  │     │     ├─ plugin_version.h.in
│     │  │     │     └─ test
│     │  │     │        └─ cloud_firestore_plugin_test.cpp
│     │  │     ├─ firebase_core
│     │  │     │  ├─ android
│     │  │     │  │  ├─ gradle
│     │  │     │  │  │  └─ wrapper
│     │  │     │  │  │     └─ gradle-wrapper.properties
│     │  │     │  │  ├─ gradle.properties
│     │  │     │  │  └─ src
│     │  │     │  │     └─ main
│     │  │     │  │        ├─ AndroidManifest.xml
│     │  │     │  │        └─ java
│     │  │     │  │           └─ io
│     │  │     │  │              └─ flutter
│     │  │     │  │                 └─ plugins
│     │  │     │  │                    └─ firebase
│     │  │     │  │                       └─ core
│     │  │     │  │                          ├─ FlutterFirebaseCorePlugin.java
│     │  │     │  │                          ├─ FlutterFirebaseCoreRegistrar.java
│     │  │     │  │                          ├─ FlutterFirebasePlugin.java
│     │  │     │  │                          ├─ FlutterFirebasePluginRegistry.java
│     │  │     │  │                          └─ GeneratedAndroidFirebaseCore.java
│     │  │     │  ├─ CHANGELOG.md
│     │  │     │  ├─ example
│     │  │     │  │  ├─ analysis_options.yaml
│     │  │     │  │  ├─ android
│     │  │     │  │  │  ├─ app
│     │  │     │  │  │  │  ├─ google-services.json
│     │  │     │  │  │  │  └─ src
│     │  │     │  │  │  │     ├─ debug
│     │  │     │  │  │  │     │  └─ AndroidManifest.xml
│     │  │     │  │  │  │     ├─ main
│     │  │     │  │  │  │     │  ├─ AndroidManifest.xml
│     │  │     │  │  │  │     │  ├─ java
│     │  │     │  │  │  │     │  │  └─ io
│     │  │     │  │  │  │     │  │     └─ flutter
│     │  │     │  │  │  │     │  │        └─ plugins
│     │  │     │  │  │  │     │  ├─ kotlin
│     │  │     │  │  │  │     │  │  └─ io
│     │  │     │  │  │  │     │  │     └─ flutter
│     │  │     │  │  │  │     │  │        └─ plugins
│     │  │     │  │  │  │     │  │           └─ firebasecoreexample
│     │  │     │  │  │  │     │  │              └─ MainActivity.kt
│     │  │     │  │  │  │     │  └─ res
│     │  │     │  │  │  │     │     ├─ drawable
│     │  │     │  │  │  │     │     │  └─ launch_background.xml
│     │  │     │  │  │  │     │     ├─ drawable-v21
│     │  │     │  │  │  │     │     │  └─ launch_background.xml
│     │  │     │  │  │  │     │     ├─ mipmap-hdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-mdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-xhdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-xxhdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ mipmap-xxxhdpi
│     │  │     │  │  │  │     │     │  └─ ic_launcher.png
│     │  │     │  │  │  │     │     ├─ values
│     │  │     │  │  │  │     │     │  └─ styles.xml
│     │  │     │  │  │  │     │     └─ values-night
│     │  │     │  │  │  │     │        └─ styles.xml
│     │  │     │  │  │  │     └─ profile
│     │  │     │  │  │  │        └─ AndroidManifest.xml
│     │  │     │  │  │  ├─ gradle
│     │  │     │  │  │  │  └─ wrapper
│     │  │     │  │  │  │     └─ gradle-wrapper.properties
│     │  │     │  │  │  └─ gradle.properties
│     │  │     │  │  ├─ ios
│     │  │     │  │  │  ├─ Flutter
│     │  │     │  │  │  │  ├─ AppFrameworkInfo.plist
│     │  │     │  │  │  │  ├─ Debug.xcconfig
│     │  │     │  │  │  │  └─ Release.xcconfig
│     │  │     │  │  │  ├─ Podfile
│     │  │     │  │  │  ├─ Runner
│     │  │     │  │  │  │  ├─ AppDelegate.h
│     │  │     │  │  │  │  ├─ AppDelegate.m
│     │  │     │  │  │  │  ├─ Assets.xcassets
│     │  │     │  │  │  │  │  └─ LaunchImage.imageset
│     │  │     │  │  │  │  │     ├─ Contents.json
│     │  │     │  │  │  │  │     ├─ LaunchImage.png
│     │  │     │  │  │  │  │     ├─ LaunchImage@2x.png
│     │  │     │  │  │  │  │     ├─ LaunchImage@3x.png
│     │  │     │  │  │  │  │     └─ README.md
│     │  │     │  │  │  │  ├─ Base.lproj
│     │  │     │  │  │  │  │  ├─ LaunchScreen.storyboard
│     │  │     │  │  │  │  │  └─ Main.storyboard
│     │  │     │  │  │  │  ├─ Info.plist
│     │  │     │  │  │  │  └─ main.m
│     │  │     │  │  │  ├─ Runner.xcodeproj
│     │  │     │  │  │  │  ├─ project.pbxproj
│     │  │     │  │  │  │  ├─ project.xcworkspace
│     │  │     │  │  │  │  │  ├─ contents.xcworkspacedata
│     │  │     │  │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│     │  │     │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │     └─ xcschemes
│     │  │     │  │  │  │        └─ Runner.xcscheme
│     │  │     │  │  │  └─ Runner.xcworkspace
│     │  │     │  │  │     ├─ contents.xcworkspacedata
│     │  │     │  │  │     └─ xcshareddata
│     │  │     │  │  │        └─ IDEWorkspaceChecks.plist
│     │  │     │  │  ├─ lib
│     │  │     │  │  │  ├─ firebase_options.dart
│     │  │     │  │  │  └─ main.dart
│     │  │     │  │  ├─ macos
│     │  │     │  │  │  ├─ Flutter
│     │  │     │  │  │  │  ├─ Flutter-Debug.xcconfig
│     │  │     │  │  │  │  └─ Flutter-Release.xcconfig
│     │  │     │  │  │  ├─ Podfile
│     │  │     │  │  │  ├─ Runner
│     │  │     │  │  │  │  ├─ AppDelegate.swift
│     │  │     │  │  │  │  ├─ Assets.xcassets
│     │  │     │  │  │  │  ├─ Base.lproj
│     │  │     │  │  │  │  │  └─ MainMenu.xib
│     │  │     │  │  │  │  ├─ Configs
│     │  │     │  │  │  │  │  ├─ AppInfo.xcconfig
│     │  │     │  │  │  │  │  ├─ Debug.xcconfig
│     │  │     │  │  │  │  │  ├─ Release.xcconfig
│     │  │     │  │  │  │  │  └─ Warnings.xcconfig
│     │  │     │  │  │  │  ├─ DebugProfile.entitlements
│     │  │     │  │  │  │  ├─ Info.plist
│     │  │     │  │  │  │  ├─ MainFlutterWindow.swift
│     │  │     │  │  │  │  └─ Release.entitlements
│     │  │     │  │  │  ├─ Runner.xcodeproj
│     │  │     │  │  │  │  ├─ project.pbxproj
│     │  │     │  │  │  │  ├─ project.xcworkspace
│     │  │     │  │  │  │  │  ├─ contents.xcworkspacedata
│     │  │     │  │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│     │  │     │  │  │  │  └─ xcshareddata
│     │  │     │  │  │  │     └─ xcschemes
│     │  │     │  │  │  │        └─ Runner.xcscheme
│     │  │     │  │  │  └─ Runner.xcworkspace
│     │  │     │  │  │     ├─ contents.xcworkspacedata
│     │  │     │  │  │     └─ xcshareddata
│     │  │     │  │  │        ├─ IDEWorkspaceChecks.plist
│     │  │     │  │  │        └─ WorkspaceSettings.xcsettings
│     │  │     │  │  ├─ pubspec.yaml
│     │  │     │  │  ├─ README.md
│     │  │     │  │  ├─ web
│     │  │     │  │  │  ├─ favicon.png
│     │  │     │  │  │  ├─ icons
│     │  │     │  │  │  ├─ index.html
│     │  │     │  │  │  └─ manifest.json
│     │  │     │  │  └─ windows
│     │  │     │  │     ├─ CMakeLists.txt
│     │  │     │  │     ├─ flutter
│     │  │     │  │     │  └─ CMakeLists.txt
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
│     │  │     │  │        ├─ utils.cpp
│     │  │     │  │        ├─ utils.h
│     │  │     │  │        ├─ win32_window.cpp
│     │  │     │  │        └─ win32_window.h
│     │  │     │  ├─ ios
│     │  │     │  │  ├─ firebase_core
│     │  │     │  │  │  ├─ Package.swift
│     │  │     │  │  │  └─ Sources
│     │  │     │  │  │     └─ firebase_core
│     │  │     │  │  │        ├─ dummy.m
│     │  │     │  │  │        ├─ FLTFirebaseCorePlugin.m
│     │  │     │  │  │        ├─ FLTFirebasePlugin.m
│     │  │     │  │  │        ├─ FLTFirebasePluginRegistry.m
│     │  │     │  │  │        ├─ include
│     │  │     │  │  │        │  └─ firebase_core
│     │  │     │  │  │        │     ├─ dummy.h
│     │  │     │  │  │        │     ├─ FLTFirebaseCorePlugin.h
│     │  │     │  │  │        │     ├─ FLTFirebasePlugin.h
│     │  │     │  │  │        │     ├─ FLTFirebasePluginRegistry.h
│     │  │     │  │  │        │     └─ messages.g.h
│     │  │     │  │  │        ├─ messages.g.m
│     │  │     │  │  │        └─ Resources
│     │  │     │  │  ├─ firebase_core.podspec
│     │  │     │  │  └─ firebase_sdk_version.rb
│     │  │     │  ├─ lib
│     │  │     │  │  ├─ firebase_core.dart
│     │  │     │  │  └─ src
│     │  │     │  │     ├─ firebase.dart
│     │  │     │  │     ├─ firebase_app.dart
│     │  │     │  │     └─ port_mapping.dart
│     │  │     │  ├─ LICENSE
│     │  │     │  ├─ macos
│     │  │     │  │  ├─ firebase_core
│     │  │     │  │  │  ├─ Package.swift
│     │  │     │  │  │  └─ Sources
│     │  │     │  │  │     └─ firebase_core
│     │  │     │  │  │        ├─ dummy.m
│     │  │     │  │  │        ├─ FLTFirebaseCorePlugin.m
│     │  │     │  │  │        ├─ FLTFirebasePlugin.m
│     │  │     │  │  │        ├─ FLTFirebasePluginRegistry.m
│     │  │     │  │  │        ├─ include
│     │  │     │  │  │        │  ├─ dummy.h
│     │  │     │  │  │        │  └─ firebase_core
│     │  │     │  │  │        │     ├─ FLTFirebaseCorePlugin.h
│     │  │     │  │  │        │     ├─ FLTFirebasePlugin.h
│     │  │     │  │  │        │     ├─ FLTFirebasePluginRegistry.h
│     │  │     │  │  │        │     └─ messages.g.h
│     │  │     │  │  │        ├─ messages.g.m
│     │  │     │  │  │        └─ Resources
│     │  │     │  │  └─ firebase_core.podspec
│     │  │     │  ├─ pubspec.yaml
│     │  │     │  ├─ README.md
│     │  │     │  ├─ test
│     │  │     │  │  └─ firebase_core_test.dart
│     │  │     │  └─ windows
│     │  │     │     ├─ CMakeLists.txt
│     │  │     │     ├─ firebase_core_plugin.cpp
│     │  │     │     ├─ firebase_core_plugin.h
│     │  │     │     ├─ firebase_core_plugin_c_api.cpp
│     │  │     │     ├─ include
│     │  │     │     │  └─ firebase_core
│     │  │     │     │     └─ firebase_core_plugin_c_api.h
│     │  │     │     ├─ messages.g.cpp
│     │  │     │     ├─ messages.g.h
│     │  │     │     └─ plugin_version.h.in
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
