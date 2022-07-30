# Webview Example

Implementation of the Webview_flutter package using Notion web pages as links.

## Getting Started

Make sure the SDK version has been set to a minimum of 19 in Android -> App -> build.gradle

Be aware that the line ``` android:usesCleartextTraffic="true" ``` was added to AndroidManifest.xml  
without Notion and some other websites might not be able to load

For the moment, the package was only set up to run in Android (and possibly iOS, but this one remais untested)
So set up your emulator or phone and use debug mode with Dart/Flutter to run. 
