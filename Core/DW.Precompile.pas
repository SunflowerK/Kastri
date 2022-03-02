unit DW.Precompile;

{*******************************************************}
{                                                       }
{                      Kastri                           }
{                                                       }
{         Delphi Worlds Cross-Platform Library          }
{                                                       }
{  Copyright 2020-2021 Dave Nottage under MIT license   }
{  which is located in the root folder of this library  }
{                                                       }
{*******************************************************}

{$I DW.GlobalDefines.inc}

interface

implementation

// A cross-platform way of including units in a project for pre-compiling, specifically for the Kastri project source
// This unit should not be included in a regular application

uses
{$IF Defined(ANDROID)}
  DW.Androidapi.JNI.AndroidX.Camera.Lifecycle,
  DW.Androidapi.JNI.AndroidX.Camera,
  DW.Androidapi.JNI.AndroidX.FileProvider,
  DW.Androidapi.JNI.AndroidX.Lifecycle,
  DW.Androidapi.JNI.AndroidX.LocalBroadcastManager,
  DW.Androidapi.JNI.Animation,
  DW.Androidapi.JNI.App,
  DW.Androidapi.JNI.Billing,
  DW.Androidapi.JNI.Concurrent,
  DW.Androidapi.JNI.Content,
  DW.Androidapi.JNI.DWCameraHelpers,
  DW.Androidapi.JNI.DWFingerprintAuthenticationCallback,
  DW.Androidapi.JNI.DWFirebaseServiceHelpers,
  DW.Androidapi.JNI.DWFusedLocation,
  DW.Androidapi.JNI.DWGenericView,
  DW.Androidapi.JNI.DWGeofence,
  DW.Androidapi.JNI.DWMultiBroadcastReceiver,
  DW.Androidapi.JNI.DWNetworkCallback,
  DW.Androidapi.JNI.DWTimerTask,
  DW.Androidapi.JNI.DWWebChromeClient,
  DW.Androidapi.JNI.EMDK,
  DW.Androidapi.JNI.Firebase,
  DW.Androidapi.JNI.FirebaseAnalytics,
  DW.Androidapi.JNI.Hardware.Camera2,
  DW.Androidapi.JNI.Hardware.Usb,
  DW.Androidapi.JNI.Hardware,
  DW.Androidapi.JNI.Lang,
  DW.Androidapi.JNI.Net,
  DW.Androidapi.JNI.Nfc,
  DW.Androidapi.JNI.Notification,
  DW.Androidapi.JNI.Os,
  DW.Androidapi.JNI.Print,
  DW.Androidapi.JNI.Security,
  DW.Androidapi.JNI.SeekBar,
  DW.Androidapi.JNI.SupportV4,
  DW.Androidapi.JNI.Telecom,
  DW.Androidapi.JNI.Util,
  DW.Androidapi.JNI.View,
  DW.Androidapi.JNI.VisionBarcode,
  DW.Androidapi.JNI.Widget.Toast,
  DW.Android.Helpers,
  DW.Android.Service,
  DW.Background.Android,
  DW.BarcodeReader,
  DW.BarcodeReader.Android,
  DW.Biometric.Android,
  DW.Camera,
  DW.CameraPreview,
  DW.Camera.Android,
  DW.CameraPreview.Android,
  DW.Connectivity.Android,
  DW.EXIF,
  DW.EXIF.Android,
  DW.FilesSelector,
  DW.FilesSelector.Android,
  DW.Firebase.Analytics.Android,
  DW.Firebase.Messaging.Android,
  DW.Geodetic.Android,
  DW.Geofence.Android,
  DW.Graphics.Helpers.Android,
  DW.Location.Android,
  DW.LocationReceiver.Android,
  DW.MediaLibrary.Android,
  DW.MultiReceiver.Android,
  DW.MuteCheck,
  DW.MuteCheck.Android,
  DW.NativeButton.Android,
  DW.NativeImage.Android,
  DW.NativeShape.Android,
  DW.NativeSlider.Android,
  DW.OSLog.Android,
  DW.OSMetadata.Android,
  DW.OSPower.Android,
  DW.OSTimer.Android,
  DW.ServiceCommander.Android,
  DW.TimerTask.Android,
  DW.Toast.Android,
  DW.UIHelper.Android,
  DW.VirtualKeyboard.Android,
  DW.WebChromeClient.Android,
{$ENDIF}

{$IF Defined(LINUX64)}
  DW.Linuxapi.Epoll,
  DW.Linuxapi.Timerfd,
  DW.OSDevice.Linux,
{$ENDIF}

{$IF Defined(MACOS)}
  DW.Connectivity.Mac,
  DW.Graphics.Helpers.Mac,
  DW.IOUtils.Helpers.Mac,
  DW.OSLog.Mac,
  DW.OSMetadata.Mac,
  DW.OSTimer.Mac,
  DW.Macapi.Dispatch,
  DW.Macapi.Helpers,
  DW.Macapi.ObjCBlocks,
  DW.Macapi.ObjCRuntime,
{$ENDIF}

{$IF Defined(OSX)}
  DW.Macapi.AppKit,
  DW.Macapi.AVFoundation,
  DW.Macapi.AVKit,
  DW.Macapi.Foundation,
  DW.Macapi.FSEvents,
  DW.Macapi.IOKit,
  DW.Macapi.Simd,
  DW.Macapi.SystemConfiguration,
  DW.OSPower.Mac,
  // DW.RunProcess.Mac,
  DW.StatusBarMenu.Mac,
{$ENDIF}

{$IF Defined(IOS)}
  DW.AuthenticationServices.iOS,
  // DW.BarcodeReader,
  // DW.BarcodeReader.iOS,
  DW.Biometric.iOS,
  DW.Camera,
  DW.CameraPreview,
  DW.Camera.iOS,
  DW.CameraPreview.iOS,
  DW.Connectivity.iOS,
  DW.EXIF,
  DW.EXIF.iOS,
  DW.FilesSelector.iOS,
  // DW.Firebase.Messaging.iOS,
  // DW.GoogleSignIn,
  // DW.GoogleSignIn.iOS,
  DW.iOSapi.AppTrackingTransparency,
  DW.iOSapi.ARKit,
  DW.iOSapi.AuthenticationServices,
  DW.iOSapi.AVFoundation,
  DW.iOSapi.CallKit,
  DW.iOSapi.CarPlay,
  DW.iOSapi.Contacts,
  DW.iOSapi.CoreImage,
  DW.iOSapi.CoreML,
  DW.iOSapi.CoreNFC,
  DW.iOSapi.CoreVideo,
  DW.iOSapi.DeviceCheck,
  DW.iOSapi.EventKit,
  // DW.iOSapi.FBAudienceNetwork,
  // DW.iOSapi.Firebase,
  // DW.iOSapi.FirebaseAnalytics,
  // DW.iOSapi.FirebaseAuth,
  // DW.iOSapi.FirebaseCore,
  DW.iOSapi.Foundation,
  // DW.iOSapi.GoogleSignIn,
  DW.iOSapi.Helpers,
  DW.iOSapi.ImageIO,
  DW.iOSapi.Intents,
  DW.iOSapi.IOSurface,
  DW.iOSapi.JavaScriptCore,
  DW.iOSapi.MediaPlayer,
  DW.iOSapi.MediaPlayerExtra,
  DW.iOSapi.Messages,
  DW.iOSapi.MessageUI,
  DW.iOSapi.Metal,
  // DW.iOSapi.MLKitBarcodeScanning,
  // DW.iOSapi.MLKitCommon,
  // DW.iOSapi.MLKitVision,
  DW.iOSapi.Network,
  DW.iOSapi.NetworkExtension,
  DW.iOSapi.PassKit,
  DW.iOSapi.PDFKit,
  DW.iOSapi.Photos,
  DW.iOSapi.PhotosUI,
  DW.iOSapi.PushKit,
  DW.iOSapi.QuickLook,
  DW.iOSapi.SceneKit,
  DW.iOSapi.Speech,
  DW.iOSapi.SpriteKit,
  DW.iOSapi.SpriteKitExtra,
  DW.iOSapi.SystemConfiguration,
  DW.iOSapi.UIKit,
  DW.iOSapi.UserNotifications,
  DW.iOSapi.Vision,
  DW.iOSapi.VisionKit,
  DW.Location.iOS,
  DW.MuteCheck,
  DW.MuteCheck.iOS,
  DW.NativeButton.iOS,
  DW.NativeImage.iOS,
  DW.NativeShape.iOS,
  DW.NativeSlider.iOS,
  DW.Orientation.iOS,
  DW.OSPower.iOS,
  // DW.PushNotification.iOS, <---- Firebase
  DW.QuickLook.iOS,
  DW.UIHelper.iOS,
  DW.UserDefaults.iOS,
{$ENDIF}

{$IF Defined(POSIX)}
  DW.IOUtils.Helpers.Posix,
  DW.OSDevice.Posix,
{$ENDIF}

{$IF Defined(MSWINDOWS)}
  // DW.ADB,           <---- JCL/JVCL
  DW.Connectivity.Win,
  DW.ExternalDevice.Win,
  DW.FileVersionInfo.Win,
  DW.IOUtils.Helpers.Win,
  DW.NativeImage.Win,
  DW.OSDevice.Win,
  DW.OSLog.Win,
  DW.OSMetadata.Win,
  DW.OSPower.Win,
  DW.OSTimer.Win,
  // DW.RunProcess.Win,  <---- JCL/JVCL
  DW.Swizzler.Win,
  DW.Vcl.DialogService,
  DW.Vcl.FormStates,
  DW.Vcl.ListBoxHelper,
  DW.Winapi.ExternalDevice,
  DW.Winapi.Helpers,
  DW.Winapi.NetworkList_TLB,
{$ENDIF}

  // Platform agnostic
  DW.AppleIDButton,
  DW.AuthenticationServices.Types,
  DW.Base64.Helpers,
  DW.Biometric,
  DW.Classes.Helpers,
  DW.Connectivity,
  DW.Consts.Android, // Special case
  DW.Consts,
  DW.Controls.Helpers,
  DW.DataGraphics.Helpers,
  DW.DialogService,
  DW.ElasticLayout,
  DW.FileWriter,
  // DW.Firebase.Messaging, // iOS needs Firebase
  DW.Geodetic,
  DW.Geofence,
  DW.Graphics.Helpers,
  DW.ImagePan,
  DW.JsonConfig,
  DW.Location,
  DW.MediaLibrary,
  DW.Messaging,
  DW.NativeButton,
  DW.NativeImage,
  DW.NativeShape,
  DW.NativeSlider,
  DW.NFC,
  // DW.Notifications, // iOS needs Firebase
  DW.OSDevice,
  DW.OSLog,
  DW.OSMetadata,
  DW.OSPower,
  DW.OSTimer,
  DW.Permissions.Helpers,
  DW.PushUDP,
  DW.REST.Json.Helpers,
  // DW.RunProcess,  // JCL/JVCL
  DW.Sensors,
  DW.Services,
  DW.ShareItems,
  DW.SpeechRecognition,
  DW.SysUtils.Helpers,
  DW.ThreadedTimer,
  DW.Tokenizers,
  DW.Types.Helpers,
  DW.Types,
  DW.UIHelper,
  DW.VirtualKeyboard.Helpers,
  DW.VKVertScrollbox;

end.
