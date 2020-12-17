.class public Lcom/android/systemui/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Dependency$DependencyInjector;,
        Lcom/android/systemui/Dependency$DependencyKey;,
        Lcom/android/systemui/Dependency$LazyDependencyCreator;
    }
.end annotation


# static fields
.field public static final BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field mAcceleratorController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/AcceleratorController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAccessibilityController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAccessibilityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mActivityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mActivityStarter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mActivityStarterDelegate:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAppOpsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mApplicationAccessControl:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAssistManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAsyncSensorManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAutoBrightnessController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAutoHideController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBatteryController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBgHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "background_handler"
    .end annotation
.end field

.field mBgLooper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "background_looper"
    .end annotation
.end field

.field mBluetoothController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBubbleController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mCastController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mChannelEditorDialogController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClockManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mConfigurationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mConnectionRateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDarkIconDispatcher:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDataSaverController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDevicePolicyManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDeviceProvisionedController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDisplayMetrics:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDockManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDriveModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/DriveModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDumpController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/DumpController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mEnhancedEstimates:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mExtensionController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mEyeProtectiveController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFalsingManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFlashlightController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mForegroundServiceController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mForegroundServiceNotificationListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFragmentService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mGameModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/GameModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mGarbageMonitor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mHotspotController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mINotificationManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mIStatusBarService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mIWindowManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mInitController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mKeyguardDismissUtil:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mKeyguardEnvironment:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mKeyguardMonitor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLeakDetector:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLeakReportEmail:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "leak_report_email"
    .end annotation
.end field

.field mLeakReporter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLightBarController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLocalBluetoothManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLocationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLockscreenGestureLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMainHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main_handler"
    .end annotation
.end field

.field mManagedProfileController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMeizuShareController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/MeizuShareController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMetricsLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMobileDataController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/MobileDataController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNavBarModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNavigationBarController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNetworkController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNextAlarmController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNightDisplayListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNightModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/NightModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationAlertingManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationBlockingHelperManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationEntryManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationFilter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationGroupAlertTransferHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationGroupManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationGutsManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationInterruptionStateProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationLockscreenUserManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationMediaManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationRemoteInputManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationRemoteInputManagerCallback:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationViewHierarchyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOverviewProxyService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPackageManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPluginDependencyProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPluginManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPowerSaveController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/PowerSaveController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$LazyDependencyCreator;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRingerModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/RingerModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRotationLockController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mScreenLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mScreenRecordController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mScreenshotController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenshotController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSecurityController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSensorPrivacyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSensorPrivacyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSmartReplyConstants:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSmartReplyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSmartTouchController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/SmartTouchController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStatusBarIconController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStatusBarWindowController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSysuiColorExtractor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTimeTickHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "time_tick_handler"
    .end annotation
.end field

.field mTunablePaddingService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTunerService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUiOffloadThread:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserInfoController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserSwitcherController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVibratorHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVisualStabilityManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVolumeDialogController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVpnController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/flyme/systemui/statusbar/policy/VpnController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mWakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mWarningsUI:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mZenModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 187
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 191
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 195
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 200
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 206
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "leak_report_email"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 210
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static clearDependencies()V
    .registers 1

    const/4 v0, 0x0

    .line 641
    sput-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 649
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/Dependency;->destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 628
    iget-object p0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    if-eqz p2, :cond_d

    .line 630
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 657
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 596
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 601
    :cond_12
    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static initDependencies(Lcom/android/systemui/SystemUIRootComponent;)V
    .registers 2

    .line 343
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_5

    return-void

    .line 346
    :cond_5
    new-instance v0, Lcom/android/systemui/Dependency;

    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    sput-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 347
    invoke-interface {p0}, Lcom/android/systemui/SystemUIRootComponent;->createDependency()Lcom/android/systemui/Dependency$DependencyInjector;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-interface {p0, v0}, Lcom/android/systemui/Dependency$DependencyInjector;->createSystemUI(Lcom/android/systemui/Dependency;)V

    .line 348
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0}, Lcom/android/systemui/Dependency;->start()V

    return-void
.end method

.method static synthetic lambda$dump$0(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 572
    instance-of v0, p1, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_1a

    if-eqz p0, :cond_18

    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method static synthetic lambda$dump$1(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 574
    check-cast p3, Lcom/android/systemui/Dumpable;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$2(Ljava/lang/Object;)Z
    .registers 1

    .line 582
    instance-of p0, p0, Lcom/android/systemui/ConfigurationChangedReceiver;

    return p0
.end method

.method static synthetic lambda$onConfigurationChanged$3(Landroid/content/res/Configuration;Ljava/lang/Object;)V
    .registers 2

    .line 583
    check-cast p1, Lcom/android/systemui/ConfigurationChangedReceiver;

    invoke-interface {p1, p0}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static staticDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 551
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/Dependency;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected static staticOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 578
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 606
    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v0, :cond_b

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$LazyDependencyCreator;

    if-eqz v0, :cond_1e

    .line 614
    invoke-interface {v0}, Lcom/android/systemui/Dependency$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 611
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 612
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " providers known."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 560
    :try_start_1
    const-class v0, Lcom/android/systemui/DumpController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    if-eqz p3, :cond_13

    .line 563
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 564
    aget-object v0, p3, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_30

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumping controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35

    :cond_30
    const-string v1, "Dumping existing controllers:"

    .line 569
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    :goto_35
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$nA5ayadwqBW4bgzyvl5eaXT_aUY;

    invoke-direct {v2, v0}, Lcom/android/systemui/-$$Lambda$Dependency$nA5ayadwqBW4bgzyvl5eaXT_aUY;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$txwQ8DNTPzffiYtSV5jsVTL0RAU;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$Dependency$txwQ8DNTPzffiYtSV5jsVTL0RAU;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 574
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 575
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 591
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 587
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    monitor-enter p0

    .line 582
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$_u0Sc-UAjkiveEBWvXdf73QkCm8;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$$Lambda$Dependency$_u0Sc-UAjkiveEBWvXdf73QkCm8;-><init>(Landroid/content/res/Configuration;)V

    .line 583
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 584
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected start()V
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBgHandler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityStarterDelegate:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBatteryController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/hardware/display/NightDisplayListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarWindowController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/EnhancedEstimates;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardEnvironment:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/InitController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mInitController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/appops/AppOpsController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVisualStabilityManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGroupManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGroupAlertTransferHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationBlockingHelperManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationViewHierarchyManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationFilter:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationInterruptionStateProvider:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/bubbles/BubbleController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBubbleController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationEntryManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationAlertingManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceNotificationListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mForegroundServiceNotificationListener:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/keyguard/clock/ClockManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/DumpController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDumpController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/dock/DockManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mChannelEditorDialogController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFalsingManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAutoBrightnessController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSmartTouchController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRingerModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/VpnController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVpnController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mScreenshotController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDriveModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAcceleratorController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mScreenRecordController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mEyeProtectiveController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mConnectionRateController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mApplicationAccessControl:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNightModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPowerSaveController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMobileDataController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mGameModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/flyme/systemui/statusbar/policy/MeizuShareController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMeizuShareController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method
