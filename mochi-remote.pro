VERSION = 2.1.0

TARGET = mochi-remote
TEMPLATE = app

linux:!android|macx|win32 {
  CONFIG += platform_desktop
  warning("This is a mobile application. Suit yourself.")
}
android {
  CONFIG += platform_mobile platform_android
}
ios {
  CONFIG += platform_ios
  error("Maybe someday")
}

include($$PWD/app/app.pro)
