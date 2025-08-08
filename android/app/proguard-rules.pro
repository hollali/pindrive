# Flutter
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Needed for Firebase or other plugins using reflection
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }

# Needed for Dart/Flutter method channels
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
