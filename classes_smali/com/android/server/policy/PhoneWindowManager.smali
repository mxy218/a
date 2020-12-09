.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;,
        Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_TORCH_OFF:Ljava/lang/String; = "com.android.server.policy.PhoneWindowManager.ACTION_TORCH_OFF"

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_SPLASH_SCREEN:Z = false

.field static final DEBUG_WAKEUP:Z = false

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_ASSISTANT:I = 0x5

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field static final LONG_PRESS_POWER_TORCH:I = 0x6

.field private static final LONG_SWIPE_FLAGS:I = 0xc8

.field private static final MOVING_DISPLAY_TO_TOP_DURATION_MILLIS:J = 0xaL

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x11

.field private static final MSG_ACCESSIBILITY_TV:I = 0x13

.field private static final MSG_BACK_LONG_PRESS:I = 0x10

.field private static final MSG_BUGREPORT_TV:I = 0x12

.field private static final MSG_CAMERA_LONG_PRESS:I = 0x65

.field private static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x14

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_HANDLE_ALL_APPS:I = 0x16

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_ASSIST:I = 0x17

.field private static final MSG_LAUNCH_ASSIST_LONG_PRESS:I = 0x18

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_MOVE_DISPLAY_TO_TOP:I = 0x1c

.field private static final MSG_NOTIFY_USER_ACTIVITY:I = 0x1a

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_POWER_VERY_LONG_PRESS:I = 0x19

.field private static final MSG_RINGER_TOGGLE_CHORD:I = 0x1b

.field private static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0xf

.field private static final MSG_SYSTEM_KEY_PRESS:I = 0x15

.field private static final MSG_TOGGLE_TORCH:I = 0x64

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field static final PENDING_KEY_NULL:I = -0x1

.field private static final POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS:I = 0x320

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static final SHOW_SPLASH_SCREENS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0xdac

.field private static final USER_ACTIVITY_NOTIFICATION_DELAY:I = 0xc8

.field static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z = false

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mA11yShortcutChordVolumeUpKeyConsumed:Z

.field private mA11yShortcutChordVolumeUpKeyTime:J

.field private mA11yShortcutChordVolumeUpKeyTriggered:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field private mAccessibilityTvKey1Pressed:Z

.field private mAccessibilityTvKey2Pressed:Z

.field private mAccessibilityTvScheduled:Z

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field private mAodShowing:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field mAppSwitchLongPressed:Z

.field private mAppSwitchPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field mAppSwitchWakeScreen:Z

.field private mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field private mAssistPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field mAssistWakeScreen:Z

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field volatile mBackKeyHandled:Z

.field mBackKillTimeout:I

.field private final mBackLongPress:Ljava/lang/Runnable;

.field mBackWakeScreen:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBugreportTvKey1Pressed:Z

.field private mBugreportTvKey2Pressed:Z

.field private mBugreportTvScheduled:Z

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLaunch:Z

.field mCameraLensCoverState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field mCameraSleepOnRelease:Z

.field mCameraWakeScreen:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mConsumeSearchKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeviceHardwareKeys:I

.field private final mDeviceKeyHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/DeviceKeyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDismissImeOnBackKeyPressed:Z

.field private mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field private final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDoublePressOnPowerBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field private mEdgeLongSwipeAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field private mEnableCarDockHomeCapture:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusReleasedGoToSleep:Z

.field private mForceNavbar:I

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field mHapticTextHandleEnabled:Z

.field private mHasFeatureAuto:Z

.field private mHasFeatureHdmiCec:Z

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field private mHomeDoubleTapAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field mHomeIntent:Landroid/content/Intent;

.field private mHomeLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field mHomeWakeScreen:Z

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field mIsFocusPressed:Z

.field mIsLongPress:Z

.field private mKeyguardBound:Z

.field private mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardOccludedChanged:Z

.field mKillAppLongpressBack:Z

.field mLanguageSwitchKeyPressed:Z

.field private mLidControlsDisplayFold:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field private mLineageButtons:Lorg/lineageos/internal/buttons/LineageButtons;

.field private mLineageHardware:Llineageos/hardware/LineageHardwareManager;

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field private mLongSwipeDown:Z

.field private mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field private mMenuPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

.field mMenuPressed:Z

.field mMenuWakeScreen:Z

.field mMetaState:I

.field private volatile mMovingDisplayToTopKeyTime:J

.field private volatile mMovingDisplayToTopKeyTriggered:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field private mNotifyUserActivity:Z

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field volatile mPendingWakeKey:I

.field private mPerDisplayFocusEnabled:Z

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field volatile mPictureInPictureVisible:Z

.field private mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

.field private mPowerButtonSuppressionDelayMillis:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreloadedRecentApps:Z

.field private mRearFlashCameraId:Ljava/lang/String;

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field volatile mRequestedOrGoingToSleep:Z

.field private mResolvedLongPressOnPowerBehavior:I

.field mRingHomeBehavior:I

.field private mRingerToggleChord:I

.field mSafeMode:Z

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortPressOnWindowBehavior:I

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemNavigationKeysEnabled:Z

.field mSystemReady:Z

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field private volatile mTopFocusedDisplayId:I

.field private mTorchEnabled:Z

.field private mTorchLongPressPowerEnabled:Z

.field private mTorchOffPendingIntent:Landroid/app/PendingIntent;

.field private mTorchTimeout:I

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUseTvRouting:Z

.field mVeryLongPressOnPowerBehavior:I

.field mVeryLongPressTimeout:I

.field mVibrator:Landroid/os/Vibrator;

.field mVolumeAnswerCall:Z

.field mVolumeDownWakeTriggered:Z

.field mVolumeMuteWakeTriggered:Z

.field mVolumeUpWakeTriggered:Z

.field mVolumeWakeScreen:Z

.field mVrHeadsetHomeIntent:Landroid/content/Intent;

.field volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 337
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 338
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 339
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 358
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 359
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 361
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3039
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_5c
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 439
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 443
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 448
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 455
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 482
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 488
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 493
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 516
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 574
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceNavbar:I

    .line 588
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 653
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 680
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 683
    new-instance v3, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v4, 0x64

    invoke-direct {v3, v4, v0}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 686
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 690
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 691
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 693
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    .line 844
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 992
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1000
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    .line 1636
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1659
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    .line 1661
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 1996
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 5139
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 5158
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 5173
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5658
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5782
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestFullBugreport()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2

    .line 265
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleTorch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z
    .registers 4

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 265
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/policy/PhoneWindowManager;JZILjava/lang/String;)Z
    .registers 6

    .line 265
    invoke-direct/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->unpinActivity(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    .line 265
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method static synthetic access$3400()[I
    .registers 1

    .line 265
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/policy/PhoneWindowManager;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V
    .registers 3

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V
    .registers 3

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/policy/PhoneWindowManager;IJ)I
    .registers 4

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$4102(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    .line 265
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2

    .line 265
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/String;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelTorchOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .registers 5

    .line 265
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method private accessibilityShortcutActivated()V
    .registers 2

    .line 1499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 1500
    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .registers 6

    .line 2931
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2932
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2933
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2934
    if-nez v1, :cond_13

    .line 2935
    return-void

    .line 2937
    :cond_13
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2938
    if-nez v0, :cond_1a

    .line 2939
    return-void

    .line 2943
    :cond_1a
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2944
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2945
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 2946
    return-void
.end method

.method private applyLidSwitchState()V
    .registers 5

    .line 5859
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setKeyboardVisibility(Z)V

    .line 5861
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 5862
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_20

    .line 5863
    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {v1, v2}, Lcom/android/server/policy/DisplayFoldController;->requestDeviceFolded(Z)V

    goto :goto_3a

    .line 5864
    :cond_20
    if-nez v0, :cond_3a

    .line 5865
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    .line 5866
    if-eq v0, v2, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    goto :goto_3a

    .line 5868
    :cond_2c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 5869
    goto :goto_3a

    .line 5871
    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 5882
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5883
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5884
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_45

    .line 5885
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendLidChangeBroadcast()V

    .line 5886
    return-void

    .line 5884
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private static awakenDreams()V
    .registers 1

    .line 3003
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 3004
    if-eqz v0, :cond_b

    .line 3006
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 3009
    goto :goto_b

    .line 3007
    :catch_a
    move-exception v0

    .line 3011
    :cond_b
    :goto_b
    return-void
.end method

.method private backLongPress()V
    .registers 3

    .line 1487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1489
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v1, :cond_f

    if-eq v1, v0, :cond_a

    goto :goto_10

    .line 1493
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    goto :goto_10

    .line 1491
    :cond_f
    nop

    .line 1496
    :goto_10
    return-void
.end method

.method private bindKeyguard()V
    .registers 3

    .line 5583
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5584
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_9

    .line 5585
    monitor-exit v0

    return-void

    .line 5587
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 5588
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 5589
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 5590
    return-void

    .line 5588
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .registers 3

    .line 1629
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1630
    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .registers 3

    .line 1273
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_e

    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1275
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    :cond_e
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .registers 3

    .line 1257
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_26

    .line 1258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1259
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1261
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_26

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDozeMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1263
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1266
    :cond_26
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1267
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1269
    :cond_33
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPossibleVeryLongPressReboot()V

    .line 1270
    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .registers 3

    .line 1633
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1634
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .line 1625
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1626
    return-void
.end method

.method private cancelPossibleVeryLongPressReboot()V
    .registers 3

    .line 5832
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5833
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .registers 2

    .line 3949
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_10

    .line 3950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3951
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3952
    if-eqz v0, :cond_10

    .line 3953
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    .line 3956
    :cond_10
    return-void
.end method

.method private cancelTorchOff()V
    .registers 3

    .line 6321
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    .line 6322
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    .line 6325
    :cond_c
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .registers 2

    .line 3995
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3996
    if-eqz v0, :cond_9

    .line 3997
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    .line 3999
    :cond_9
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .registers 14

    .line 5006
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    .line 5007
    if-eqz v0, :cond_2a

    .line 5008
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 5009
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 5010
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v0

    .line 5011
    if-eqz v0, :cond_2a

    .line 5012
    nop

    .line 5013
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 5012
    :goto_26
    invoke-virtual {v0, v1, p1}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    .line 5014
    return-void

    .line 5017
    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_31

    .line 5018
    return-void

    .line 5020
    :cond_31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 5021
    const/16 v4, 0x1005

    .line 5023
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 5025
    const/16 v1, 0x18

    const-string v11, "WindowManager"

    if-eq v0, v1, :cond_7e

    const/16 v1, 0x19

    if-eq v0, v1, :cond_68

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_4c

    goto :goto_94

    .line 5044
    :cond_4c
    :try_start_4c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_60

    .line 5045
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/16 v2, 0x65

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move-object v5, v9

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_60} :catch_61

    .line 5051
    :cond_60
    goto :goto_94

    .line 5049
    :catch_61
    move-exception p1

    .line 5050
    const-string v0, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v11, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_94

    .line 5036
    :cond_68
    :try_start_68
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v5

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    const-string v10, "WindowManager"

    const/16 v8, 0x1005

    invoke-interface/range {v5 .. v10}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_77

    .line 5040
    goto :goto_94

    .line 5038
    :catch_77
    move-exception p1

    .line 5039
    const-string v0, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v11, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5041
    goto :goto_94

    .line 5028
    :cond_7e
    :try_start_7e
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v5

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const-string v10, "WindowManager"

    const/16 v8, 0x1005

    invoke-interface/range {v5 .. v10}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8c} :catch_8d

    .line 5032
    goto :goto_94

    .line 5030
    :catch_8d
    move-exception p1

    .line 5031
    const-string v0, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v11, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5033
    nop

    .line 5054
    :goto_94
    return-void
.end method

.method private dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 3653
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/DeviceKeyHandler;

    .line 3658
    :try_start_12
    invoke-interface {v1, p1}, Lcom/android/internal/os/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1b

    .line 3659
    if-nez p1, :cond_1a

    .line 3660
    const/4 p1, 0x1

    return p1

    .line 3664
    :cond_1a
    goto :goto_23

    .line 3662
    :catch_1b
    move-exception v1

    .line 3663
    const-string v2, "WindowManager"

    const-string v3, "Could not dispatch event to device key handler"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3665
    :goto_23
    goto :goto_6

    .line 3666
    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6441
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6447
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6445
    :cond_a
    const-string p0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object p0

    .line 6443
    :cond_d
    const-string p0, "DOUBLE_TAP_HOME_NOTHING"

    return-object p0
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .registers 3

    .line 6383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6384
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 6385
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6387
    :cond_e
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_18

    .line 6388
    const-string/jumbo p0, "sleep|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6391
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 6392
    if-nez p0, :cond_21

    .line 6393
    const-string p0, "<nothing>"

    return-object p0

    .line 6396
    :cond_21
    const/4 v1, 0x0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private finishKeyguardDrawn()V
    .registers 5

    .line 5309
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5310
    return-void

    .line 5313
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5314
    :try_start_c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_16

    .line 5315
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5317
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_21

    .line 5321
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 5323
    return-void

    .line 5317
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private finishPowerKeyPress()V
    .registers 2

    .line 1249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1250
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1251
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1252
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1254
    :cond_12
    return-void
.end method

.method private finishScreenTurningOn()V
    .registers 7

    .line 5409
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5411
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    .line 5412
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_14

    .line 5413
    return-void

    .line 5417
    :cond_14
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 5418
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5421
    :try_start_1d
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_32

    if-eqz v1, :cond_32

    .line 5422
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 5423
    nop

    .line 5424
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v1, :cond_33

    .line 5425
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5426
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_33

    .line 5429
    :cond_32
    move v4, v5

    .line 5431
    :cond_33
    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_52

    .line 5433
    if-eqz v0, :cond_39

    .line 5434
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 5437
    :cond_39
    if-eqz v4, :cond_42

    .line 5439
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41

    .line 5441
    goto :goto_42

    .line 5440
    :catch_41
    move-exception v0

    .line 5444
    :cond_42
    :goto_42
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusReleasedGoToSleep:Z

    if-eqz v0, :cond_51

    .line 5445
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusReleasedGoToSleep:Z

    .line 5446
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 5448
    :cond_51
    return-void

    .line 5431
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method

.method private finishWindowsDrawn()V
    .registers 2

    .line 5399
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5400
    return-void

    .line 5403
    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 5404
    return-void
.end method

.method private getAccessibilityShortcutTimeout()J
    .registers 6

    .line 1603
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1605
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1604
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1c

    .line 1606
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v0

    goto :goto_20

    .line 1607
    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v0

    .line 1604
    :goto_20
    return-wide v0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .line 3027
    nop

    .line 3028
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3027
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 3029
    if-nez v0, :cond_14

    .line 3030
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_14
    return-object v0
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .registers 4

    .line 2950
    if-nez p2, :cond_3

    .line 2952
    return-object p1

    .line 2955
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 2956
    if-nez p2, :cond_d

    .line 2959
    const/4 p1, 0x0

    return-object p1

    .line 2962
    :cond_d
    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    .line 3014
    nop

    .line 3015
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3014
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .registers 4

    .line 1740
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_24

    .line 1741
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1742
    return-object v1

    .line 1744
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1746
    nop

    .line 1747
    if-eqz v0, :cond_1c

    .line 1748
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    goto :goto_1d

    .line 1747
    :cond_1c
    move-object v0, v1

    .line 1750
    :goto_1d
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1752
    :cond_24
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .registers 3

    .line 5058
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_6

    .line 5059
    const/4 v0, 0x0

    return-object v0

    .line 5061
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method private getKeyguardDrawnTimeout()J
    .registers 3

    .line 5342
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 5343
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    .line 5345
    if-eqz v0, :cond_11

    const-wide/16 v0, 0x3e8

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x1388

    :goto_13
    return-wide v0
.end method

.method private getLidBehavior()I
    .registers 4

    .line 1412
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lid_behavior"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 2

    .line 5579
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object p0

    return-object p0
.end method

.method private getMaxMultiPressPowerCount()I
    .registers 2

    .line 1417
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_6

    .line 1418
    const/4 v0, 0x3

    return v0

    .line 1420
    :cond_6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_c

    .line 1421
    const/4 v0, 0x2

    return v0

    .line 1423
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method private getRearFlashCameraId()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 6351
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 6352
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_3e

    aget-object v3, v0, v2

    .line 6353
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 6354
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 6355
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 6356
    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3b

    if-eqz v4, :cond_3b

    .line 6357
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3b

    .line 6358
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    .line 6359
    goto :goto_3e

    .line 6352
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 6362
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    return-object v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .registers 2

    .line 1533
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1534
    const/4 v0, 0x3

    return v0

    .line 1536
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchLongPressPowerEnabled:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDozeMode()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-eqz v0, :cond_1e

    .line 1537
    :cond_1c
    const/4 v0, 0x6

    return v0

    .line 1539
    :cond_1e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getRingerToggleChordDelay()J
    .registers 3

    .line 1621
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 4

    .line 1611
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1613
    const/high16 v0, 0x40200000  # 2.5f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1614
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 1613
    return-wide v0

    .line 1616
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .line 3934
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_11

    .line 3935
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3937
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 6

    .line 6103
    if-eqz p1, :cond_4a

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_45

    const/16 v2, 0x2711

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_50

    .line 6139
    return-object v3

    .line 6129
    :pswitch_10  #0x11
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 6107
    :pswitch_15  #0x9
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    if-nez p1, :cond_27

    .line 6108
    return-object v3

    .line 6118
    :pswitch_1a  #0x7, 0x8, 0xa, 0xb, 0xd
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 6105
    :pswitch_1f  #0x6
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 6132
    :pswitch_24  #0x5
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 6133
    goto :goto_31

    .line 6112
    :cond_27
    :pswitch_27  #0x4
    const/16 p1, 0x15

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 6135
    :cond_2e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 6136
    nop

    .line 6141
    :goto_31
    array-length v2, p1

    if-nez v2, :cond_35

    .line 6143
    return-object v3

    .line 6144
    :cond_35
    array-length v2, p1

    const/4 v3, -0x1

    if-ne v2, v1, :cond_40

    .line 6146
    aget-wide v0, p1, v0

    invoke-static {v0, v1, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 6149
    :cond_40
    invoke-static {p1, v3}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 6124
    :cond_45
    :pswitch_45  #0x3, 0xc, 0xf, 0x10
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 6127
    :cond_4a
    :pswitch_4a  #0xe
    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_45  #00000003
        :pswitch_27  #00000004
        :pswitch_24  #00000005
        :pswitch_1f  #00000006
        :pswitch_1a  #00000007
        :pswitch_1a  #00000008
        :pswitch_15  #00000009
        :pswitch_1a  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_45  #0000000c
        :pswitch_1a  #0000000d
        :pswitch_4a  #0000000e
        :pswitch_45  #0000000f
        :pswitch_45  #00000010
        :pswitch_10  #00000011
    .end packed-switch
.end method

.method private getVolumeWakeTriggered(I)Z
    .registers 4

    .line 4145
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x19

    if-eq p1, v0, :cond_27

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_24

    .line 4153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolumeWakeTriggered: unexpected keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    const/4 p1, 0x0

    return p1

    .line 4151
    :cond_24
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeMuteWakeTriggered:Z

    return p1

    .line 4147
    :cond_27
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownWakeTriggered:Z

    return p1

    .line 4149
    :cond_2a
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpWakeTriggered:Z

    return p1
.end method

.method private goToSleep(JII)V
    .registers 6

    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 1361
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1362
    return-void
.end method

.method private goToSleepFromPowerButton(JI)Z
    .registers 12

    .line 1341
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    .line 1342
    const/4 v1, 0x4

    if-eqz v0, :cond_4e

    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v1, :cond_4e

    .line 1343
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x320

    const-string/jumbo v4, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1347
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v4, :cond_4e

    iget-wide v4, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_4e

    .line 1349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sleep from power button suppressed. Time since gesture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 p1, 0x0

    return p1

    .line 1355
    :cond_4e
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1356
    const/4 p1, 0x1

    return p1
.end method

.method private handleHideBootMessage()V
    .registers 3

    .line 5451
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5452
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_c

    .line 5453
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5454
    monitor-exit v0

    return-void

    .line 5456
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 5458
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_17

    .line 5460
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5463
    :cond_17
    return-void

    .line 5456
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private handleRingerChordGesture()V
    .registers 4

    .line 1008
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_5

    .line 1009
    return-void

    .line 1011
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 1012
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hush_gesture_used"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1014
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 1015
    return-void
.end method

.method private handleShortPressOnHome(I)V
    .registers 3

    .line 1717
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    .line 1718
    if-eqz v0, :cond_9

    .line 1719
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1724
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1725
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1726
    return-void

    .line 1730
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    .line 1731
    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJ)I
    .registers 8

    .line 3832
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 3835
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 3836
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3837
    const/4 p1, 0x5

    return p1

    .line 3840
    :cond_11
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 3842
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 3844
    :cond_1e
    return v1
.end method

.method private hasLongPressOnBackBehavior()Z
    .registers 2

    .line 1551
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .registers 2

    .line 1543
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private hasVeryLongPressOnPowerBehavior()Z
    .registers 2

    .line 1547
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .registers 4

    .line 4002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4003
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4004
    if-eqz v0, :cond_c

    .line 4005
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    .line 4007
    :cond_c
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .registers 1

    .line 6409
    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_7

    .line 6410
    const-string p0, "hangup"

    return-object p0

    .line 6412
    :cond_7
    const-string p0, "<nothing>"

    return-object p0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .registers 1

    .line 6401
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    .line 6402
    const-string p0, "hangup"

    return-object p0

    .line 6404
    :cond_7
    const-string/jumbo p0, "sleep"

    return-object p0
.end method

.method private interceptAccessibilityGestureTv(IZ)Z
    .registers 5

    .line 3618
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 3619
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    goto :goto_c

    .line 3620
    :cond_6
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    .line 3621
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    .line 3624
    :cond_c
    :goto_c
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    const/16 p2, 0x13

    if-eqz p1, :cond_30

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz p1, :cond_30

    .line 3625
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez p1, :cond_3c

    .line 3626
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3627
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 3628
    invoke-virtual {p2, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3629
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3630
    goto :goto_3c

    .line 3631
    :cond_30
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz p1, :cond_3c

    .line 3632
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3633
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3636
    :cond_3c
    :goto_3c
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return p1
.end method

.method private interceptAccessibilityShortcutChord()V
    .registers 7

    .line 1571
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_40

    .line 1574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1575
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_40

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_40

    .line 1578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1579
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1580
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1581
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    .line 1580
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1584
    :cond_40
    return-void
.end method

.method private interceptBackKeyDown()V
    .registers 5

    .line 1047
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    const-string v2, "key_back_down"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1051
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1053
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1054
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1055
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 1054
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1057
    :cond_2b
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 1061
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    const-string v2, "key_back_up"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1063
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1066
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    .line 1068
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v2, :cond_32

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 1071
    if-eqz v2, :cond_32

    .line 1072
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1075
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1078
    const/4 p1, 0x0

    return p1

    .line 1079
    :cond_22
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_32

    .line 1081
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1084
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result p1

    return p1

    .line 1089
    :cond_32
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_48

    .line 1090
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1093
    :cond_48
    return v0
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .registers 5

    .line 3592
    const/16 v0, 0x17

    if-ne p1, v0, :cond_7

    .line 3593
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    goto :goto_c

    .line 3594
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 3595
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    .line 3598
    :cond_c
    :goto_c
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    const/16 p2, 0x12

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz p1, :cond_2e

    .line 3599
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez p1, :cond_3a

    .line 3600
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3601
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 3602
    invoke-virtual {p2, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3603
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3604
    goto :goto_3a

    .line 3605
    :cond_2e
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz p1, :cond_3a

    .line 3606
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3607
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3610
    :cond_3a
    :goto_3a
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return p1
.end method

.method private interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 8

    .line 3755
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 3756
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 3757
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide p1

    .line 3759
    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_13

    .line 3760
    return v1

    .line 3763
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private interceptKeyBeforeDispatchingInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 28

    .line 3078
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    .line 3079
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 3080
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 3081
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 3082
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 3083
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_20

    const/4 v7, 0x1

    goto :goto_21

    :cond_20
    const/4 v7, 0x0

    .line 3084
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    .line 3085
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v11

    .line 3086
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_2f

    const/4 v12, 0x1

    goto :goto_30

    :cond_2f
    const/4 v12, 0x0

    .line 3087
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_39

    const/4 v13, 0x1

    goto :goto_3a

    :cond_39
    const/4 v13, 0x0

    .line 3097
    :goto_3a
    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const-wide/16 v16, 0x96

    const/16 v14, 0x19

    const-wide/16 v18, -0x1

    if-eqz v15, :cond_6b

    and-int/lit16 v15, v0, 0x400

    if-nez v15, :cond_6b

    .line 3098
    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v15, :cond_5f

    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v15, :cond_5f

    .line 3099
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 3100
    iget-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long v8, v8, v16

    .line 3102
    cmp-long v22, v20, v8

    if-gez v22, :cond_5f

    .line 3103
    sub-long v8, v8, v20

    return-wide v8

    .line 3106
    :cond_5f
    if-ne v4, v14, :cond_6b

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v8, :cond_6b

    .line 3108
    if-nez v7, :cond_6a

    .line 3109
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3111
    :cond_6a
    return-wide v18

    .line 3117
    :cond_6b
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v8

    if-eqz v8, :cond_b2

    and-int/lit16 v8, v0, 0x400

    if-nez v8, :cond_b2

    .line 3119
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v8, v15

    if-eqz v8, :cond_97

    .line 3120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 3121
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v8, :cond_8b

    .line 3122
    move v8, v10

    iget-wide v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    goto :goto_8e

    :cond_8b
    move v8, v10

    iget-wide v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    :goto_8e
    add-long v9, v9, v16

    .line 3124
    cmp-long v15, v22, v9

    if-gez v15, :cond_98

    .line 3125
    sub-long v9, v9, v22

    return-wide v9

    .line 3119
    :cond_97
    move v8, v10

    .line 3128
    :cond_98
    if-ne v4, v14, :cond_a4

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v9, :cond_a4

    .line 3129
    if-nez v7, :cond_a3

    .line 3130
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3132
    :cond_a3
    return-wide v18

    .line 3134
    :cond_a4
    const/16 v9, 0x18

    if-ne v4, v9, :cond_b3

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v9, :cond_b3

    .line 3135
    if-nez v7, :cond_b1

    .line 3136
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3138
    :cond_b1
    return-wide v18

    .line 3117
    :cond_b2
    move v8, v10

    .line 3144
    :cond_b3
    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v9, :cond_df

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_df

    .line 3145
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_d1

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_d1

    .line 3146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3147
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long v14, v14, v16

    .line 3149
    cmp-long v16, v9, v14

    if-gez v16, :cond_d1

    .line 3150
    sub-long/2addr v14, v9

    return-wide v14

    .line 3153
    :cond_d1
    const/16 v9, 0x18

    if-ne v4, v9, :cond_df

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v9, :cond_df

    .line 3154
    if-nez v7, :cond_de

    .line 3155
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3157
    :cond_de
    return-wide v18

    .line 3163
    :cond_df
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v9, :cond_ec

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v9

    if-nez v9, :cond_ec

    .line 3164
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3167
    :cond_ec
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v9, :cond_ff

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v9

    if-nez v9, :cond_ff

    invoke-static {v4}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v9

    if-nez v9, :cond_ff

    .line 3168
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 3171
    :cond_ff
    const/4 v9, 0x4

    if-ne v4, v9, :cond_10b

    if-nez v7, :cond_10b

    .line 3172
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-virtual {v10, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3179
    :cond_10b
    const/4 v10, 0x3

    if-ne v4, v10, :cond_12a

    .line 3180
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 3181
    if-nez v0, :cond_122

    .line 3182
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {v0, v1, v11}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 3183
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3185
    :cond_122
    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 3186
    :cond_12a
    const/16 v10, 0x52

    const-wide/16 v16, 0x0

    if-ne v4, v10, :cond_1a7

    .line 3189
    if-nez v13, :cond_1a6

    if-eqz v3, :cond_136

    goto/16 :goto_1a6

    .line 3194
    :cond_136
    if-eqz v7, :cond_18c

    .line 3195
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v4, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v4, :cond_144

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v4, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-ne v0, v4, :cond_147

    .line 3197
    :cond_144
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 3199
    :cond_147
    if-nez v5, :cond_16b

    .line 3200
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    .line 3201
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v0, :cond_18c

    and-int/lit8 v0, v6, 0x1

    if-ne v0, v3, :cond_18c

    .line 3202
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.BUG_REPORT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3203
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3205
    return-wide v18

    .line 3207
    :cond_16b
    if-eqz v12, :cond_18c

    .line 3208
    if-nez v3, :cond_18c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v3, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v3, :cond_18c

    .line 3209
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v3, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v3, :cond_17e

    .line 3210
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3212
    :cond_17e
    const-string v0, "Menu - Long Press"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 3214
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 3215
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    .line 3216
    return-wide v18

    .line 3221
    :cond_18c
    if-nez v7, :cond_1a5

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    if-eqz v0, :cond_1a5

    .line 3222
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v3, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v3, :cond_19b

    .line 3223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3225
    :cond_19b
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    .line 3226
    if-nez v8, :cond_1a5

    .line 3227
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 3230
    :cond_1a5
    return-wide v18

    .line 3191
    :cond_1a6
    :goto_1a6
    return-wide v16

    .line 3231
    :cond_1a7
    const/16 v10, 0x54

    if-ne v4, v10, :cond_1c1

    .line 3232
    if-eqz v7, :cond_1b6

    .line 3233
    if-nez v5, :cond_1c0

    .line 3234
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3235
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto :goto_1c0

    .line 3238
    :cond_1b6
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3239
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v0, :cond_1c0

    .line 3240
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3241
    return-wide v18

    .line 3244
    :cond_1c0
    :goto_1c0
    return-wide v16

    .line 3245
    :cond_1c1
    const/16 v10, 0xbb

    if-ne v4, v10, :cond_219

    .line 3246
    if-nez v3, :cond_218

    .line 3247
    if-eqz v7, :cond_200

    .line 3248
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v4, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v4, :cond_1d5

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v4, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-ne v0, v4, :cond_1d8

    .line 3250
    :cond_1d5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 3252
    :cond_1d8
    if-nez v5, :cond_1de

    .line 3253
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_218

    .line 3254
    :cond_1de
    if-eqz v12, :cond_218

    .line 3255
    if-nez v3, :cond_218

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v3, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v3, :cond_218

    .line 3256
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v3, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v3, :cond_1f1

    .line 3257
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3259
    :cond_1f1
    const-string v0, "Recents - Long Press"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 3261
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 3262
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_218

    .line 3266
    :cond_200
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    if-eqz v0, :cond_208

    .line 3267
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_218

    .line 3269
    :cond_208
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v3, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v3, :cond_211

    .line 3270
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3272
    :cond_211
    if-nez v8, :cond_218

    .line 3273
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 3278
    :cond_218
    :goto_218
    return-wide v18

    .line 3279
    :cond_219
    const/16 v8, 0x2a

    const/4 v10, 0x2

    const-string v11, "WindowManager"

    if-ne v4, v8, :cond_235

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v8

    if-eqz v8, :cond_235

    .line 3280
    if-eqz v7, :cond_30f

    .line 3281
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 3282
    if-eqz v0, :cond_233

    .line 3284
    :try_start_22e
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_231
    .catch Landroid/os/RemoteException; {:try_start_22e .. :try_end_231} :catch_232

    .line 3287
    goto :goto_233

    .line 3285
    :catch_232
    move-exception v0

    .line 3289
    :cond_233
    :goto_233
    goto/16 :goto_30f

    .line 3290
    :cond_235
    const/16 v8, 0x2f

    if-ne v4, v8, :cond_25f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v8

    if-eqz v8, :cond_25f

    .line 3291
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v8

    if-eqz v8, :cond_25f

    .line 3292
    if-eqz v7, :cond_30f

    if-nez v5, :cond_30f

    .line 3293
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_251

    move v15, v10

    goto :goto_252

    .line 3294
    :cond_251
    const/4 v15, 0x1

    .line 3295
    :goto_252
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 3296
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3297
    return-wide v18

    .line 3299
    :cond_25f
    const/16 v8, 0x4c

    if-ne v4, v8, :cond_27c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v8

    if-eqz v8, :cond_27c

    .line 3300
    if-eqz v7, :cond_30f

    if-nez v5, :cond_30f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_30f

    .line 3301
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_30f

    .line 3303
    :cond_27c
    const/16 v8, 0xdb

    if-ne v4, v8, :cond_286

    .line 3304
    const-string v0, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    return-wide v18

    .line 3306
    :cond_286
    const/16 v8, 0xe7

    if-ne v4, v8, :cond_290

    .line 3307
    const-string v0, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    return-wide v18

    .line 3309
    :cond_290
    const/16 v8, 0x78

    if-ne v4, v8, :cond_2a6

    .line 3310
    if-eqz v7, :cond_2a5

    if-nez v5, :cond_2a5

    .line 3311
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 3312
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3314
    :cond_2a5
    return-wide v18

    .line 3315
    :cond_2a6
    const/16 v8, 0xdd

    if-eq v4, v8, :cond_550

    const/16 v12, 0xdc

    if-ne v4, v12, :cond_2b0

    goto/16 :goto_550

    .line 3352
    :cond_2b0
    const/16 v8, 0x18

    if-eq v4, v8, :cond_2f0

    const/16 v0, 0x19

    if-eq v4, v0, :cond_2f0

    const/16 v0, 0xa4

    if-ne v4, v0, :cond_2bd

    goto :goto_2f0

    .line 3371
    :cond_2bd
    const/16 v0, 0x3d

    if-ne v4, v0, :cond_2c8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c8

    .line 3373
    return-wide v16

    .line 3374
    :cond_2c8
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_2d3

    invoke-direct {v1, v4, v7}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 3375
    return-wide v18

    .line 3376
    :cond_2d3
    const/16 v0, 0x11c

    if-ne v4, v0, :cond_30f

    .line 3377
    if-nez v7, :cond_2ef

    .line 3378
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3379
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3380
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3381
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3383
    :cond_2ef
    return-wide v18

    .line 3355
    :cond_2f0
    :goto_2f0
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_54c

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_2fa

    goto/16 :goto_54c

    .line 3365
    :cond_2fa
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_30f

    .line 3366
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 3367
    if-eqz v0, :cond_30f

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_30f

    .line 3368
    return-wide v18

    .line 3387
    :cond_30f
    :goto_30f
    nop

    .line 3388
    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_34a

    .line 3389
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v0, :cond_322

    .line 3391
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    .line 3392
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_34a

    .line 3393
    :cond_322
    const/4 v8, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_34a

    .line 3394
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v8, v0, 0x32

    .line 3395
    const/high16 v12, 0x70000

    and-int/2addr v12, v0

    .line 3398
    if-eqz v12, :cond_345

    if-eqz v8, :cond_345

    .line 3400
    iget v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    or-int/2addr v8, v12

    xor-int/2addr v0, v8

    if-ne v13, v0, :cond_345

    .line 3402
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 3403
    const/4 v0, 0x1

    goto :goto_346

    .line 3408
    :cond_345
    const/4 v0, 0x0

    :goto_346
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_34b

    .line 3412
    :cond_34a
    :goto_34a
    const/4 v0, 0x0

    :goto_34b
    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    .line 3414
    if-eqz v0, :cond_350

    .line 3415
    return-wide v18

    .line 3418
    :cond_350
    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-eqz v0, :cond_36a

    .line 3419
    if-eqz v7, :cond_35c

    .line 3420
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_369

    .line 3421
    :cond_35c
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_369

    .line 3422
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const-string v2, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 3424
    :cond_369
    :goto_369
    return-wide v18

    .line 3425
    :cond_36a
    if-ne v4, v9, :cond_385

    .line 3426
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKillAppLongpressBack:Z

    if-nez v0, :cond_377

    const/4 v8, 0x1

    invoke-direct {v1, v8}, Lcom/android/server/policy/PhoneWindowManager;->unpinActivity(Z)Z

    move-result v0

    if-eqz v0, :cond_385

    .line 3427
    :cond_377
    if-eqz v7, :cond_385

    if-nez v5, :cond_385

    .line 3428
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKillTimeout:I

    int-to-long v12, v9

    invoke-virtual {v0, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3438
    :cond_385
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/high16 v8, 0x10000000

    if-eqz v0, :cond_3e8

    .line 3439
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 3440
    invoke-virtual {v0, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v9

    if-eqz v9, :cond_3e8

    .line 3441
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3442
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3443
    if-eqz v7, :cond_3e7

    if-nez v5, :cond_3e7

    if-nez v3, :cond_3e7

    .line 3444
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual {v2, v0, v4, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v0

    .line 3445
    if-eqz v0, :cond_3cf

    .line 3446
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3448
    :try_start_3ac
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3449
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3b4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3ac .. :try_end_3b4} :catch_3b5

    goto :goto_3ce

    .line 3450
    :catch_3b5
    move-exception v0

    .line 3451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3451
    invoke-static {v11, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3454
    :goto_3ce
    goto :goto_3e7

    .line 3456
    :cond_3cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3456
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    :cond_3e7
    :goto_3e7
    return-wide v18

    .line 3465
    :cond_3e8
    if-eqz v7, :cond_42f

    if-nez v5, :cond_42f

    if-nez v3, :cond_42f

    const/high16 v0, 0x10000

    and-int/2addr v0, v6

    if-eqz v0, :cond_42f

    .line 3467
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 3468
    invoke-virtual {v0, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v9

    if-eqz v9, :cond_42f

    .line 3469
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v12, -0x70001

    and-int/2addr v12, v6

    invoke-virtual {v9, v0, v4, v12}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v0

    .line 3472
    if-eqz v0, :cond_42f

    .line 3473
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3475
    :try_start_40c
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3476
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_414
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40c .. :try_end_414} :catch_415

    .line 3481
    goto :goto_42e

    .line 3477
    :catch_415
    move-exception v0

    .line 3478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3478
    invoke-static {v11, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3482
    :goto_42e
    return-wide v18

    .line 3488
    :cond_42f
    if-eqz v7, :cond_470

    if-nez v5, :cond_470

    if-nez v3, :cond_470

    .line 3489
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 3490
    if-eqz v9, :cond_470

    .line 3491
    const-string v0, "android.intent.action.MAIN"

    invoke-static {v0, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3492
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3494
    :try_start_449
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3495
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_451
    .catch Landroid/content/ActivityNotFoundException; {:try_start_449 .. :try_end_451} :catch_452

    .line 3500
    goto :goto_46f

    .line 3496
    :catch_452
    move-exception v0

    .line 3497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3501
    :goto_46f
    return-wide v18

    .line 3506
    :cond_470
    if-eqz v7, :cond_498

    if-nez v5, :cond_498

    const/16 v0, 0x3d

    if-ne v4, v0, :cond_498

    .line 3507
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v0, :cond_4a8

    if-nez v3, :cond_4a8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_4a8

    .line 3508
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 3509
    invoke-static {v0, v10}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_497

    .line 3510
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3511
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 3512
    return-wide v18

    .line 3514
    :cond_497
    goto :goto_4a8

    .line 3515
    :cond_498
    if-nez v7, :cond_4a8

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v0, :cond_4a8

    and-int/2addr v0, v6

    if-nez v0, :cond_4a8

    .line 3517
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3518
    const/4 v8, 0x1

    invoke-direct {v1, v8, v3}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 3522
    :cond_4a8
    :goto_4a8
    const/16 v0, 0x3e

    if-ne v4, v0, :cond_4b4

    const v0, 0x77000

    and-int/2addr v0, v6

    if-eqz v0, :cond_4b4

    const/4 v0, 0x1

    goto :goto_4b5

    :cond_4b4
    const/4 v0, 0x0

    .line 3524
    :goto_4b5
    if-eqz v7, :cond_4d0

    if-nez v5, :cond_4d0

    const/16 v3, 0xcc

    if-eq v4, v3, :cond_4bf

    if-eqz v0, :cond_4d0

    .line 3526
    :cond_4bf
    and-int/lit16 v0, v6, 0xc1

    if-eqz v0, :cond_4c5

    const/4 v15, -0x1

    goto :goto_4c6

    :cond_4c5
    const/4 v15, 0x1

    .line 3527
    :goto_4c6
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-interface {v0, v1, v15}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3528
    return-wide v18

    .line 3530
    :cond_4d0
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v0, :cond_4e2

    if-nez v7, :cond_4e2

    const/16 v0, 0xcc

    if-eq v4, v0, :cond_4de

    const/16 v0, 0x3e

    if-ne v4, v0, :cond_4e2

    .line 3533
    :cond_4de
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3534
    return-wide v18

    .line 3537
    :cond_4e2
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_4f3

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3538
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4f3

    .line 3539
    return-wide v18

    .line 3543
    :cond_4f3
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4fa

    .line 3544
    return-wide v18

    .line 3547
    :cond_4fa
    if-eqz v7, :cond_545

    .line 3548
    int-to-long v3, v4

    .line 3549
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_509

    .line 3550
    const-wide v7, 0x100000000000L

    or-long/2addr v3, v7

    .line 3553
    :cond_509
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_515

    .line 3554
    const-wide v7, 0x200000000L

    or-long/2addr v3, v7

    .line 3557
    :cond_515
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_521

    .line 3558
    const-wide v7, 0x100000000L

    or-long/2addr v3, v7

    .line 3561
    :cond_521
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_52a

    .line 3562
    const-wide/high16 v7, 0x1000000000000L

    or-long/2addr v3, v7

    .line 3565
    :cond_52a
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    .line 3566
    if-eqz v0, :cond_545

    .line 3568
    :try_start_534
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_53d

    .line 3569
    invoke-interface {v0, v3, v4}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_53d
    .catch Landroid/os/RemoteException; {:try_start_534 .. :try_end_53d} :catch_53e

    .line 3573
    :cond_53d
    goto :goto_544

    .line 3571
    :catch_53e
    move-exception v0

    .line 3572
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3574
    :goto_544
    return-wide v18

    .line 3579
    :cond_545
    const/high16 v0, 0x10000

    and-int/2addr v0, v6

    if-eqz v0, :cond_54b

    .line 3580
    return-wide v18

    .line 3584
    :cond_54b
    return-wide v16

    .line 3358
    :cond_54c
    :goto_54c
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    .line 3359
    return-wide v18

    .line 3317
    :cond_550
    :goto_550
    if-eqz v7, :cond_5bd

    .line 3318
    if-ne v4, v8, :cond_556

    const/4 v0, 0x1

    goto :goto_557

    :cond_556
    const/4 v0, -0x1

    .line 3321
    :goto_557
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3322
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3321
    const/4 v3, -0x3

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 3326
    if-eqz v2, :cond_574

    .line 3327
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3333
    :cond_574
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    .line 3334
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    .line 3335
    sub-int v5, v4, v2

    add-int/lit8 v5, v5, 0xa

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0xa

    mul-int/2addr v5, v0

    .line 3336
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 3338
    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    .line 3336
    const-string/jumbo v7, "screen_brightness"

    invoke-static {v0, v7, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3340
    add-int/2addr v0, v5

    .line 3342
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3343
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3345
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_brightness"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3348
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3351
    :cond_5bd
    return-wide v18
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .registers 8

    .line 1098
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1099
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1103
    :cond_d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v0, :cond_18

    .line 1104
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1107
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 1110
    const/4 v0, 0x1

    if-eqz p2, :cond_3a

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v1, :cond_3a

    .line 1111
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_3a

    .line 1112
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 1114
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 1115
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    .line 1119
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 1120
    nop

    .line 1121
    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    .line 1122
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1125
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_5f

    .line 1126
    :cond_4c
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5f

    .line 1128
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_5f

    if-eqz p2, :cond_5f

    .line 1131
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    goto :goto_60

    .line 1135
    :cond_5f
    :goto_5f
    move v1, v2

    :goto_60
    const-class v3, Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GestureLauncherService;

    .line 1137
    nop

    .line 1138
    if-eqz v3, :cond_7e

    .line 1139
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v3

    .line 1141
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v4, v4, Landroid/util/MutableBoolean;->value:Z

    if-eqz v4, :cond_7f

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    if-eqz v4, :cond_7f

    .line 1142
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    goto :goto_7f

    .line 1138
    :cond_7e
    move v3, v2

    .line 1147
    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 1149
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->schedulePossibleVeryLongPressReboot()V

    .line 1153
    if-nez v1, :cond_95

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v1, :cond_95

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v1, :cond_95

    if-eqz v3, :cond_96

    :cond_95
    move v2, v0

    :cond_96
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1155
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_157

    .line 1156
    const/16 v1, 0x19

    const/16 v2, 0xe

    if-eqz p2, :cond_eb

    .line 1159
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result p2

    if-eqz p2, :cond_157

    .line 1160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_b5

    .line 1161
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto/16 :goto_157

    .line 1163
    :cond_b5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    .line 1164
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1165
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1166
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1167
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 1166
    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1169
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 1170
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1171
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1172
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1174
    :cond_ea
    goto :goto_157

    .line 1177
    :cond_eb
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz p2, :cond_145

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result p2

    if-eqz p2, :cond_145

    .line 1178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_101

    .line 1179
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_142

    .line 1181
    :cond_101
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    .line 1182
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    const/4 v3, 0x6

    if-eq p2, v3, :cond_113

    .line 1183
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1185
    :cond_113
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1186
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1187
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1188
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 1187
    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1190
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result p1

    if-eqz p1, :cond_142

    .line 1191
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1192
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1193
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v1, v1

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1197
    :cond_142
    :goto_142
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_157

    .line 1199
    :cond_145
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1201
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p1

    .line 1203
    if-gt p1, v0, :cond_155

    .line 1204
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_157

    .line 1206
    :cond_155
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1211
    :cond_157
    :goto_157
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .registers 8

    .line 1214
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_b

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz p3, :cond_9

    goto :goto_b

    :cond_9
    move p3, v0

    goto :goto_c

    :cond_b
    :goto_b
    move p3, v1

    .line 1215
    :goto_c
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1216
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1217
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1219
    if-nez p3, :cond_5f

    .line 1220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p3

    and-int/lit16 p3, p3, 0x80

    if-nez p3, :cond_2d

    .line 1222
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v2, v0}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1226
    :cond_2d
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1228
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p3

    .line 1229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 1230
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge p1, p3, :cond_5a

    .line 1233
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 p3, 0xd

    .line 1234
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1233
    invoke-virtual {p1, p3, p2, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1235
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1236
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1237
    return-void

    .line 1241
    :cond_5a
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v2, v3, p2, p1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1245
    :cond_5f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1246
    return-void
.end method

.method private interceptRingerToggleChord()V
    .registers 7

    .line 1587
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_35

    .line 1589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1590
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_35

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1594
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1596
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1597
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v2

    .line 1596
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1600
    :cond_35
    return-void
.end method

.method private interceptScreenshotChord()V
    .registers 7

    .line 1555
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_3a

    .line 1558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1559
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3a

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3a

    .line 1562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1563
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1564
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 1565
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1568
    :cond_3a
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .registers 4

    .line 4809
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 4810
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4811
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 4812
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_26

    .line 4813
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4817
    :cond_26
    return-void
.end method

.method private isBuiltInKeyboardVisible()Z
    .registers 2

    .line 2689
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isDozeMode()Z
    .registers 4

    .line 1520
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 1523
    if-eqz v0, :cond_17

    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_e

    if-eqz v0, :cond_17

    .line 1524
    const/4 v0, 0x1

    return v0

    .line 1526
    :catch_e
    move-exception v0

    .line 1527
    const-string v1, "WindowManager"

    const-string v2, "RemoteException when checking if dreaming"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 1528
    :cond_17
    nop

    .line 1529
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method private isHidden(I)Z
    .registers 6

    .line 2677
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 2678
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    const/4 v3, 0x2

    if-eq p1, v3, :cond_e

    .line 2684
    return v1

    .line 2682
    :cond_e
    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1

    .line 2680
    :cond_12
    if-nez v0, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method private isRoundWindow()Z
    .registers 2

    .line 2000
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isTheaterModeEnabled()Z
    .registers 4

    .line 6071
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method private isTvUserSetupComplete()Z
    .registers 5

    .line 1711
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "tv_user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private static isValidGlobalKey(I)Z
    .registers 2

    .line 4848
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_e

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_e

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_e

    .line 4854
    const/4 p0, 0x1

    return p0

    .line 4852
    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private isWakeKeyEnabled(I)Z
    .registers 4

    .line 4863
    const/4 v0, 0x4

    if-eq p1, v0, :cond_42

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x50

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xa4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_28

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_25

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2b

    .line 4882
    return v1

    .line 4875
    :cond_25
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistWakeScreen:Z

    return p1

    .line 4877
    :cond_28
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchWakeScreen:Z

    return p1

    .line 4868
    :cond_2b
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4869
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v1, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    nop

    .line 4868
    :goto_3b
    return v1

    .line 4873
    :cond_3c
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuWakeScreen:Z

    return p1

    .line 4880
    :cond_3f
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraWakeScreen:Z

    return p1

    .line 4871
    :cond_42
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackWakeScreen:Z

    return p1
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .registers 5

    .line 4893
    const/4 v0, 0x4

    if-eq p1, v0, :cond_58

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_55

    const/16 v0, 0x52

    if-eq p1, v0, :cond_52

    const/16 v0, 0x82

    const/4 v1, 0x0

    if-eq p1, v0, :cond_51

    const/16 v0, 0xa4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_43

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_40

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_3d

    const/16 v0, 0xde

    if-eq p1, v0, :cond_51

    const/16 v0, 0x18

    if-eq p1, v0, :cond_43

    const/16 v0, 0x19

    if-eq p1, v0, :cond_43

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_51

    const/16 v0, 0x50

    if-eq p1, v0, :cond_55

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_51

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_51

    packed-switch p1, :pswitch_data_5c

    .line 4928
    return v2

    .line 4921
    :cond_3d
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistWakeScreen:Z

    return p1

    .line 4923
    :cond_40
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchWakeScreen:Z

    return p1

    .line 4898
    :cond_43
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4899
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result p1

    if-eqz p1, :cond_50

    :cond_4f
    move v1, v2

    .line 4898
    :cond_50
    return v1

    .line 4914
    :cond_51
    :pswitch_51  #0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b
    return v1

    .line 4919
    :cond_52
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuWakeScreen:Z

    return p1

    .line 4926
    :cond_55
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraWakeScreen:Z

    return p1

    .line 4917
    :cond_58
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackWakeScreen:Z

    return p1

    nop

    :pswitch_data_5c
    .packed-switch 0x55
        :pswitch_51  #00000055
        :pswitch_51  #00000056
        :pswitch_51  #00000057
        :pswitch_51  #00000058
        :pswitch_51  #00000059
        :pswitch_51  #0000005a
        :pswitch_51  #0000005b
    .end packed-switch
.end method

.method private launchAllAppsAction()V
    .registers 6

    .line 1778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1779
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2e

    .line 1780
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1781
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1782
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1786
    if-eqz v1, :cond_2e

    .line 1787
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    :cond_2e
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1791
    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .registers 5

    .line 3874
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3875
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3877
    return-void

    .line 3879
    :cond_c
    const/4 v0, 0x0

    .line 3880
    const/high16 v1, -0x80000000

    if-le p2, v1, :cond_1b

    .line 3881
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3882
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3884
    :cond_1b
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0xf

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3f

    .line 3887
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SearchManager;

    .line 3888
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p2, p1, v1, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_56

    .line 3890
    :cond_3f
    if-eqz p1, :cond_4d

    .line 3891
    if-nez v0, :cond_49

    .line 3892
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    move-object v0, p2

    .line 3894
    :cond_49
    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3896
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    .line 3897
    if-eqz p1, :cond_56

    .line 3898
    invoke-interface {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 3901
    :cond_56
    :goto_56
    return-void
.end method

.method private launchAssistLongPressAction()V
    .registers 4

    .line 3852
    const/4 v0, 0x0

    const-string v1, "Assist - Long Press"

    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 3854
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3858
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3862
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    .line 3863
    if-eqz v1, :cond_20

    .line 3864
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 3866
    :cond_20
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_25} :catch_26

    .line 3869
    goto :goto_2e

    .line 3867
    :catch_26
    move-exception v0

    .line 3868
    const-string v1, "WindowManager"

    const-string v2, "No activity to handle assist long press action."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3870
    :goto_2e
    return-void
.end method

.method private launchCameraAction()V
    .registers 4

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 1810
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lineageos.intent.action.SCREEN_CAMERA_GESTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1811
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1812
    return-void
.end method

.method private launchVoiceAssist(Z)V
    .registers 5

    .line 3905
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    .line 3906
    const/4 v0, 0x0

    goto :goto_a

    .line 3907
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 3908
    :goto_a
    if-nez v0, :cond_19

    .line 3909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3910
    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3914
    :cond_19
    return-void
.end method

.method private static lidBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6538
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 6546
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6540
    :cond_d
    const-string p0, "LID_BEHAVIOR_LOCK"

    return-object p0

    .line 6542
    :cond_10
    const-string p0, "LID_BEHAVIOR_SLEEP"

    return-object p0

    .line 6544
    :cond_13
    const-string p0, "LID_BEHAVIOR_NONE"

    return-object p0
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6417
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6423
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6421
    :cond_a
    const-string p0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object p0

    .line 6419
    :cond_d
    const-string p0, "LONG_PRESS_BACK_NOTHING"

    return-object p0
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6428
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 6436
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6434
    :cond_d
    const-string p0, "LONG_PRESS_HOME_ASSIST"

    return-object p0

    .line 6432
    :cond_10
    const-string p0, "LONG_PRESS_HOME_ALL_APPS"

    return-object p0

    .line 6430
    :cond_13
    const-string p0, "LONG_PRESS_HOME_NOTHING"

    return-object p0
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 1

    .line 6471
    packed-switch p0, :pswitch_data_1e

    .line 6487
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6485
    :pswitch_8  #0x6
    const-string p0, "LONG_PRESS_POWER_TORCH"

    return-object p0

    .line 6483
    :pswitch_b  #0x5
    const-string p0, "LONG_PRESS_POWER_ASSISTANT"

    return-object p0

    .line 6481
    :pswitch_e  #0x4
    const-string p0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object p0

    .line 6479
    :pswitch_11  #0x3
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object p0

    .line 6477
    :pswitch_14  #0x2
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object p0

    .line 6475
    :pswitch_17  #0x1
    const-string p0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 6473
    :pswitch_1a  #0x0
    const-string p0, "LONG_PRESS_POWER_NOTHING"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
    .end packed-switch
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6503
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 6511
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6509
    :cond_d
    const-string p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object p0

    .line 6507
    :cond_10
    const-string p0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object p0

    .line 6505
    :cond_13
    const-string p0, "MULTI_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method private performHapticFeedback(IZLjava/lang/String;)Z
    .registers 10

    .line 6076
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V
    .registers 5

    .line 1827
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager$17;->$SwitchMap$org$lineageos$internal$util$DeviceKeysConstants$Action:[I

    invoke-virtual {p1}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_46

    goto :goto_44

    .line 1855
    :pswitch_c  #0xa
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleSplitScreen()V

    .line 1856
    goto :goto_44

    .line 1852
    :pswitch_10  #0x9
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {p1, p2}, Lorg/lineageos/internal/util/ActionUtils;->switchToLastApp(Landroid/content/Context;I)Z

    .line 1853
    goto :goto_44

    .line 1849
    :pswitch_18  #0x8
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1850
    goto :goto_44

    .line 1846
    :pswitch_22  #0x7
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchCameraAction()V

    .line 1847
    goto :goto_44

    .line 1843
    :pswitch_26  #0x6
    const/16 p1, 0x54

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 1844
    goto :goto_44

    .line 1840
    :pswitch_2c  #0x5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    .line 1841
    goto :goto_44

    .line 1837
    :pswitch_30  #0x4
    const/4 p1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 1838
    goto :goto_44

    .line 1834
    :pswitch_39  #0x3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1835
    goto :goto_44

    .line 1831
    :pswitch_3d  #0x2
    const/16 p1, 0x52

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 1832
    goto :goto_44

    .line 1829
    :pswitch_43  #0x1
    nop

    .line 1860
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_43  #00000001
        :pswitch_3d  #00000002
        :pswitch_39  #00000003
        :pswitch_30  #00000004
        :pswitch_2c  #00000005
        :pswitch_26  #00000006
        :pswitch_22  #00000007
        :pswitch_18  #00000008
        :pswitch_10  #00000009
        :pswitch_c  #0000000a
    .end packed-switch
.end method

.method private powerLongPress()V
    .registers 6

    .line 1427
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    .line 1428
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5e

    goto :goto_5c

    .line 1462
    :pswitch_8  #0x6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1465
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1466
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1467
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1468
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5c

    .line 1455
    :pswitch_1e  #0x5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1456
    const-string v0, "Power - Long Press - Go To Assistant"

    invoke-direct {p0, v2, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1459
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 1460
    goto :goto_5c

    .line 1446
    :pswitch_2c  #0x4
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1447
    const-string v0, "Power - Long Press - Go To Voice Assist"

    invoke-direct {p0, v2, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1452
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    .line 1453
    goto :goto_5c

    .line 1439
    :pswitch_39  #0x2, 0x3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1440
    const-string v3, "Power - Long Press - Shut Off"

    invoke-direct {p0, v2, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1442
    const-string v3, "globalactions"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1443
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    invoke-interface {v3, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1444
    goto :goto_5c

    .line 1432
    :pswitch_50  #0x1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1433
    const-string v0, "Power - Long Press - Global Actions"

    invoke-direct {p0, v2, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1436
    goto :goto_5c

    .line 1430
    :pswitch_5b  #0x0
    nop

    .line 1471
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5b  #00000000
        :pswitch_50  #00000001
        :pswitch_39  #00000002
        :pswitch_39  #00000003
        :pswitch_2c  #00000004
        :pswitch_1e  #00000005
        :pswitch_8  #00000006
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .registers 9

    .line 1375
    if-eqz p4, :cond_5e

    const/4 v0, 0x1

    const-string v1, "WindowManager"

    if-eq p4, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p4, v0, :cond_b

    goto :goto_5f

    .line 1402
    :cond_b
    const-string p4, "Starting brightness boost."

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    if-nez p3, :cond_15

    .line 1404
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1406
    :cond_15
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_5f

    .line 1379
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-nez p4, :cond_27

    .line 1380
    const-string p1, "Ignoring toggling theater mode - device not setup."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    goto :goto_5f

    .line 1384
    :cond_27
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result p4

    const/4 v2, 0x0

    const-string/jumbo v3, "theater_mode_on"

    if-eqz p4, :cond_45

    .line 1385
    const-string p4, "Toggling theater mode off."

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1388
    if-nez p3, :cond_5f

    .line 1389
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_5f

    .line 1392
    :cond_45
    const-string p4, "Toggling theater mode on."

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1396
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz p4, :cond_5f

    if-eqz p3, :cond_5f

    .line 1397
    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_5f

    .line 1377
    :cond_5e
    nop

    .line 1409
    :cond_5f
    :goto_5f
    return-void
.end method

.method private powerPress(JZI)V
    .registers 8

    .line 1280
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1281
    const-string p1, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void

    .line 1285
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerPress: eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " interactive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " beganFromNonInteractive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShortPressOnPowerBehavior="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v0, 0x2

    if-ne p4, v0, :cond_5a

    .line 1290
    iget p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_b0

    .line 1291
    :cond_5a
    const/4 v1, 0x3

    if-ne p4, v1, :cond_63

    .line 1292
    iget p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_b0

    .line 1293
    :cond_63
    if-eqz p3, :cond_b0

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez p3, :cond_b0

    .line 1294
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    if-eqz p3, :cond_b0

    const/4 p4, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_ac

    if-eq p3, v0, :cond_a8

    if-eq p3, v1, :cond_9e

    const/4 p1, 0x4

    if-eq p3, p1, :cond_9a

    const/4 p1, 0x5

    if-eq p3, p1, :cond_7c

    goto :goto_b0

    .line 1313
    :cond_7c
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz p1, :cond_96

    .line 1314
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez p1, :cond_8e

    .line 1315
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1316
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1318
    :cond_8e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p1, :cond_b0

    .line 1319
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    goto :goto_b0

    .line 1322
    :cond_96
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_b0

    .line 1310
    :cond_9a
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    .line 1311
    goto :goto_b0

    .line 1304
    :cond_9e
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 1306
    invoke-virtual {p0, p4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    goto :goto_b0

    .line 1301
    :cond_a8
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1302
    goto :goto_b0

    .line 1298
    :cond_ac
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1299
    nop

    .line 1328
    :cond_b0
    :goto_b0
    return-void
.end method

.method private powerVeryLongPress()V
    .registers 3

    .line 1474
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_15

    .line 1478
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1479
    const/4 v0, 0x0

    const-string v1, "Power - Very Long Press - Show Global Actions"

    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1481
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_15

    .line 1476
    :cond_14
    nop

    .line 1484
    :goto_15
    return-void
.end method

.method private preloadRecentApps()V
    .registers 2

    .line 3941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3942
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3943
    if-eqz v0, :cond_c

    .line 3944
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 3946
    :cond_c
    return-void
.end method

.method private readCameraLensCoverState()V
    .registers 2

    .line 2673
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2674
    return-void
.end method

.method private reportScreenStateToVrManager(Z)V
    .registers 3

    .line 5392
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_5

    .line 5393
    return-void

    .line 5395
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    .line 5396
    return-void
.end method

.method private requestFullBugreport()V
    .registers 4

    .line 3640
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3641
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 3644
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3645
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 3648
    goto :goto_2f

    .line 3646
    :catch_27
    move-exception v0

    .line 3647
    const-string v1, "WindowManager"

    const-string v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3650
    :cond_2f
    :goto_2f
    return-void
.end method

.method private schedulePossibleVeryLongPressReboot()V
    .registers 5

    .line 5827
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5828
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5829
    return-void
.end method

.method private sendLidChangeBroadcast()V
    .registers 4

    .line 5889
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 5890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending cover change broadcast, lidState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5891
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lineageos.intent.action.LID_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5892
    const-string v2, "lineageos.intent.extra.LID_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5893
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5894
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5895
    return-void
.end method

.method private sendSystemKeyToStatusBar(I)V
    .registers 3

    .line 4823
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 4824
    if-eqz v0, :cond_b

    .line 4826
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 4829
    goto :goto_b

    .line 4827
    :catch_a
    move-exception p1

    .line 4831
    :cond_b
    :goto_b
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(I)V
    .registers 5

    .line 4837
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4838
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4839
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4840
    return-void
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .registers 7

    .line 4098
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4099
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 4100
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, p1, :cond_11

    if-eqz p2, :cond_f

    goto :goto_11

    :cond_f
    move p2, v3

    goto :goto_12

    :cond_11
    :goto_11
    move p2, v2

    .line 4101
    :goto_12
    if-nez p1, :cond_43

    if-eqz p2, :cond_43

    if-eqz v1, :cond_43

    .line 4102
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4103
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1, v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4104
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p1, :cond_42

    .line 4105
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p2, p2, 0x400

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4106
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result p1

    if-nez p1, :cond_42

    .line 4107
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x100000

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4110
    :cond_42
    return v2

    .line 4111
    :cond_43
    if-eqz p1, :cond_6d

    if-eqz p2, :cond_6d

    if-eqz v1, :cond_6d

    .line 4112
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4113
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4114
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p1, :cond_6c

    .line 4115
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p2, p2, -0x401

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4116
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, -0x100001

    and-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4118
    :cond_6c
    return v2

    .line 4119
    :cond_6d
    if-eqz p2, :cond_77

    .line 4120
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4121
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4122
    return v3

    .line 4124
    :cond_77
    return v3
.end method

.method private setVolumeWakeTriggered(IZ)V
    .registers 4

    .line 4129
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x19

    if-eq p1, v0, :cond_27

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_24

    .line 4140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setVolumeWakeTriggered: unexpected keyCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 4137
    :cond_24
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeMuteWakeTriggered:Z

    .line 4138
    goto :goto_2d

    .line 4131
    :cond_27
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownWakeTriggered:Z

    .line 4132
    goto :goto_2d

    .line 4134
    :cond_2a
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpWakeTriggered:Z

    .line 4135
    nop

    .line 4142
    :goto_2d
    return-void
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6452
    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 6466
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6464
    :cond_16
    const-string p0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object p0

    .line 6462
    :cond_19
    const-string p0, "SHORT_PRESS_POWER_GO_HOME"

    return-object p0

    .line 6460
    :cond_1c
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 6458
    :cond_1f
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object p0

    .line 6456
    :cond_22
    const-string p0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object p0

    .line 6454
    :cond_25
    const-string p0, "SHORT_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6516
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6522
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6520
    :cond_a
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 6518
    :cond_d
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object p0
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6527
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6533
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6531
    :cond_a
    const-string p0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object p0

    .line 6529
    :cond_d
    const-string p0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object p0
.end method

.method private shortPressPowerGoHome()V
    .registers 3

    .line 1365
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1370
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    .line 1372
    :cond_10
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 8

    .line 2746
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2748
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x7f2

    if-ne v1, v4, :cond_17

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x3

    .line 2749
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    .line 2750
    :goto_18
    if-eqz v1, :cond_1b

    .line 2751
    return v3

    .line 2759
    :cond_1b
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2760
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_2d
    move v1, v3

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 2761
    :goto_30
    if-eqz v1, :cond_33

    .line 2762
    return v3

    .line 2765
    :cond_33
    if-eqz p2, :cond_49

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2766
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result p2

    if-nez p2, :cond_49

    :cond_47
    move p2, v3

    goto :goto_4a

    :cond_49
    move p2, v2

    .line 2769
    :goto_4a
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v1

    if-eqz v1, :cond_54

    if-eqz p2, :cond_54

    move p2, v3

    goto :goto_55

    :cond_54
    move p2, v2

    .line 2771
    :goto_55
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 2773
    if-eqz v1, :cond_74

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2775
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v4

    if-nez v4, :cond_72

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_70

    goto :goto_72

    :cond_70
    move v0, v2

    goto :goto_73

    :cond_72
    :goto_72
    move v0, v3

    :goto_73
    or-int/2addr p2, v0

    .line 2780
    :cond_74
    if-eqz v1, :cond_7f

    if-nez p2, :cond_7f

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_7f

    move v2, v3

    :cond_7f
    return v2
.end method

.method private shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .registers 2

    .line 5065
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return v0
.end method

.method private shouldDispatchInputWhenNonInteractive(II)Z
    .registers 8

    .line 4960
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    .line 4962
    :goto_b
    if-eqz v2, :cond_10

    .line 4963
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_16

    .line 4964
    :cond_10
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 4965
    :goto_16
    if-eqz p1, :cond_21

    .line 4966
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    if-ne p1, v0, :cond_1f

    goto :goto_21

    :cond_1f
    move p1, v1

    goto :goto_22

    :cond_21
    :goto_21
    move p1, v0

    .line 4968
    :goto_22
    if-eqz p1, :cond_29

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v3, :cond_29

    .line 4969
    return v1

    .line 4972
    :cond_29
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDozeMode()Z

    move-result v3

    .line 4974
    const/16 v4, 0x19

    if-eq p2, v4, :cond_35

    const/16 v4, 0x18

    if-ne p2, v4, :cond_38

    :cond_35
    if-eqz v3, :cond_38

    .line 4976
    return v1

    .line 4980
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_41

    if-nez p1, :cond_41

    .line 4981
    return v0

    .line 4985
    :cond_41
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz p1, :cond_4d

    const/4 p1, 0x4

    if-eq p2, p1, :cond_4c

    const/16 p1, 0x108

    if-ne p2, p1, :cond_4d

    .line 4987
    :cond_4c
    return v1

    .line 4991
    :cond_4d
    if-eqz v2, :cond_52

    .line 4994
    if-eqz v3, :cond_52

    .line 4995
    return v0

    .line 5000
    :cond_52
    return v1
.end method

.method private shouldEnableWakeGestureLp()Z
    .registers 3

    .line 2514
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2515
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2516
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_24

    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2517
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 2514
    :goto_25
    return v1
.end method

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .registers 3

    .line 1795
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1796
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1797
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1798
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1799
    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .registers 2

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1803
    if-eqz v0, :cond_9

    .line 1804
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    .line 1806
    :cond_9
    return-void
.end method

.method private showRecentApps(Z)V
    .registers 3

    .line 3980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3981
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3982
    if-eqz v0, :cond_c

    .line 3983
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 3985
    :cond_c
    return-void
.end method

.method private sleepPress()V
    .registers 3

    .line 1503
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1504
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1507
    :cond_9
    return-void
.end method

.method private sleepRelease(J)V
    .registers 5

    .line 1510
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_15

    .line 1513
    :cond_8
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1517
    :goto_15
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5

    .line 3921
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3922
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .registers 5

    .line 3926
    if-nez p4, :cond_20

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_20

    .line 3929
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not starting activity because user setup is in progress: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3927
    :cond_20
    :goto_20
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3931
    :goto_25
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    .line 3917
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3918
    return-void
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .registers 3

    .line 3988
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3989
    if-eqz v0, :cond_9

    .line 3990
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    .line 3992
    :cond_9
    return-void
.end method

.method private toggleRecentApps()V
    .registers 2

    .line 3959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3960
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3961
    if-eqz v0, :cond_c

    .line 3962
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 3964
    :cond_c
    return-void
.end method

.method private toggleSplitScreen()V
    .registers 2

    .line 3967
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3968
    if-eqz v0, :cond_9

    .line 3969
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 3971
    :cond_9
    return-void
.end method

.method private toggleTorch()V
    .registers 7

    .line 6328
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelTorchOff()V

    .line 6329
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    .line 6331
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRearFlashCameraId()Ljava/lang/String;

    move-result-object v2

    .line 6332
    if-eqz v2, :cond_21

    .line 6333
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    const/4 v5, 0x1

    if-nez v4, :cond_15

    move v4, v5

    goto :goto_16

    :cond_15
    move v4, v1

    :goto_16
    invoke-virtual {v3, v2, v4}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 6334
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-nez v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v5, v1

    :goto_1f
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z
    :try_end_21
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_21} :catch_22

    .line 6338
    :cond_21
    goto :goto_23

    .line 6336
    :catch_22
    move-exception v2

    .line 6340
    :goto_23
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-eqz v2, :cond_53

    if-nez v0, :cond_53

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchTimeout:I

    if-lez v0, :cond_53

    .line 6341
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.policy.PhoneWindowManager.ACTION_TORCH_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6342
    const/high16 v2, 0x50000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6344
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    .line 6345
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 6346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchTimeout:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    .line 6345
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 6348
    :cond_53
    return-void
.end method

.method private triggerVirtualKeypress(I)V
    .registers 17

    .line 1815
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1817
    new-instance v14, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x101

    move-object v1, v14

    move-wide v2, v4

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1820
    const/4 v1, 0x1

    invoke-static {v14, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1822
    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1823
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1824
    return-void
.end method

.method private unpinActivity(Z)Z
    .registers 3

    .line 3670
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3672
    :try_start_6
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3673
    if-nez p1, :cond_19

    .line 3674
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1c

    .line 3676
    :cond_19
    const/4 p1, 0x1

    return p1

    .line 3680
    :cond_1b
    goto :goto_1d

    .line 3678
    :catch_1c
    move-exception p1

    .line 3682
    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    return p1
.end method

.method private updateKeyAssignments()V
    .registers 10

    .line 2296
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceHardwareKeys:I

    .line 2298
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceNavbar:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 2299
    move v0, v2

    .line 2302
    :cond_9
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    .line 2303
    :goto_10
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    .line 2304
    :goto_17
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1d

    move v0, v3

    goto :goto_1e

    :cond_1d
    move v0, v2

    .line 2306
    :goto_1e
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2307
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2310
    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->MENU:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2312
    const v7, 0x3f080009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromIntSafe(I)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2315
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v8, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-ne v7, v8, :cond_49

    if-eqz v1, :cond_49

    if-nez v4, :cond_49

    .line 2317
    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2319
    :cond_49
    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2320
    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->VOICE_SEARCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2321
    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2322
    const v7, 0x3f080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromIntSafe(I)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2325
    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeLongSwipeAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2327
    const v7, 0x3f080008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromIntSafe(I)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2329
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-virtual {v7}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->ordinal()I

    move-result v7

    sget-object v8, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SLEEP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-virtual {v8}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->ordinal()I

    move-result v8

    if-le v7, v8, :cond_85

    .line 2330
    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2333
    :cond_85
    const v7, 0x3f080006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromIntSafe(I)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2335
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-virtual {v6}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->ordinal()I

    move-result v6

    sget-object v7, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SLEEP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-virtual {v7}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->ordinal()I

    move-result v7

    if-le v6, v7, :cond_a4

    .line 2336
    sget-object v6, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2339
    :cond_a4
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v7, "key_home_long_press_action"

    invoke-static {v5, v7, v6}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2342
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v7, "key_home_double_tap_action"

    invoke-static {v5, v7, v6}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2346
    if-eqz v1, :cond_ce

    .line 2347
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v6, "key_menu_action"

    invoke-static {v5, v6, v1}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2350
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v6, "key_menu_long_press_action"

    invoke-static {v5, v6, v1}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2354
    :cond_ce
    if-eqz v4, :cond_e4

    .line 2355
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v4, "key_assist_action"

    invoke-static {v5, v4, v1}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2358
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v4, "key_assist_long_press_action"

    invoke-static {v5, v4, v1}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2362
    :cond_e4
    if-eqz v0, :cond_f0

    .line 2363
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v1, "key_app_switch_action"

    invoke-static {v5, v1, v0}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2367
    :cond_f0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v1, "key_app_switch_long_press_action"

    invoke-static {v5, v1, v0}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2371
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeLongSwipeAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    const-string v1, "key_edge_long_swipe_action"

    invoke-static {v5, v1, v0}, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeLongSwipeAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    .line 2375
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2376
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 2377
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2379
    :cond_116
    return-void
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .line 5808
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5809
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 5810
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 5811
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 5812
    :goto_24
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_45

    .line 5813
    if-eqz v1, :cond_3c

    .line 5815
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5816
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43

    .line 5819
    :cond_3c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5821
    :goto_43
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5823
    :cond_45
    monitor-exit v0

    .line 5824
    return-void

    .line 5823
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .registers 4

    .line 5837
    if-eqz p1, :cond_12

    .line 5838
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez p1, :cond_1c

    .line 5839
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    const-string v1, "ScreenOff"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_1c

    .line 5843
    :cond_12
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz p1, :cond_1c

    .line 5844
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 5845
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5848
    :cond_1c
    :goto_1c
    return-void
.end method

.method private updateWakeGestureListenerLp()V
    .registers 2

    .line 2506
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2507
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_11

    .line 2509
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    .line 2511
    :goto_11
    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    .line 6492
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6498
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6496
    :cond_a
    const-string p0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 6494
    :cond_d
    const-string p0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method private wakeUp(JZILjava/lang/String;)Z
    .registers 13

    .line 5285
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private wakeUp(JZILjava/lang/String;Z)Z
    .registers 9

    .line 5290
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 5291
    const/4 v1, 0x0

    if-nez p3, :cond_a

    if-eqz v0, :cond_a

    .line 5292
    return v1

    .line 5295
    :cond_a
    if-eqz v0, :cond_18

    .line 5296
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "theater_mode_on"

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5300
    :cond_18
    if-eqz p6, :cond_20

    .line 5301
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/os/PowerManager;->wakeUpWithProximityCheck(JILjava/lang/String;)V

    goto :goto_25

    .line 5303
    :cond_20
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 5305
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method private wakeUpFromPowerKey(J)V
    .registers 9

    .line 5279
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const/4 v4, 0x1

    const-string v5, "android.policy:POWER"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 5281
    return-void
.end method


# virtual methods
.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 24

    .line 2791
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p6

    move-object/from16 v6, p10

    move/from16 v7, p11

    const/4 v8, 0x0

    if-nez v3, :cond_e

    .line 2792
    return-object v8

    .line 2795
    :cond_e
    nop

    .line 2796
    nop

    .line 2799
    :try_start_10
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2805
    invoke-direct {p0, v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v9

    .line 2806
    if-nez v9, :cond_1b

    .line 2808
    nop

    .line 2921
    nop

    .line 2808
    return-object v8

    .line 2810
    :cond_1b
    nop

    .line 2812
    invoke-virtual {v9}, Landroid/content/Context;->getThemeResId()I

    move-result v0
    :try_end_20
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_10 .. :try_end_20} :catch_153
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_20} :catch_126
    .catchall {:try_start_10 .. :try_end_20} :catchall_123

    if-ne v4, v0, :cond_24

    if-eqz v5, :cond_2e

    .line 2814
    :cond_24
    const/4 v0, 0x4

    :try_start_25
    invoke-virtual {v9, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 2815
    invoke-virtual {v9, p3}, Landroid/content/Context;->setTheme(I)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_2c} :catch_2d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_25 .. :try_end_2c} :catch_153
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2c} :catch_126
    .catchall {:try_start_25 .. :try_end_2c} :catchall_123

    .line 2818
    goto :goto_2e

    .line 2816
    :catch_2d
    move-exception v0

    .line 2821
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_57

    :try_start_32
    sget-object v11, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v6, v11}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v11

    if-nez v11, :cond_57

    .line 2824
    invoke-virtual {v9, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v6

    .line 2825
    invoke-virtual {v6, p3}, Landroid/content/Context;->setTheme(I)V

    .line 2826
    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v6, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2828
    invoke-virtual {v4, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 2829
    if-eqz v11, :cond_54

    invoke-virtual {v6, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_54

    .line 2835
    move-object v9, v6

    .line 2837
    :cond_54
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2840
    :cond_57
    new-instance v4, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v4, v9}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 2841
    invoke-virtual {v4, v10}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 2843
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2845
    if-eqz v5, :cond_6d

    .line 2846
    invoke-virtual {v4, v5, v10}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_72

    .line 2848
    :cond_6d
    move-object/from16 v5, p5

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 2851
    :goto_72
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2854
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_7d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_32 .. :try_end_7d} :catch_153
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_7d} :catch_126
    .catchall {:try_start_32 .. :try_end_7d} :catchall_123

    .line 2859
    if-nez v7, :cond_88

    :try_start_7f
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v6, :cond_88

    .line 2860
    const/high16 v6, 0x80000

    or-int v6, p9, v6

    goto :goto_8a

    .line 2862
    :cond_88
    move/from16 v6, p9

    :goto_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_120

    .line 2868
    or-int/lit8 v5, v6, 0x10

    const/16 v6, 0x8

    or-int/2addr v5, v6

    const/high16 v7, 0x20000

    or-int/2addr v5, v7

    :try_start_93
    invoke-virtual {v4, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2878
    move/from16 v5, p7

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 2879
    move/from16 v5, p8

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 2881
    const/4 v5, -0x1

    invoke-virtual {v4, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2884
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2885
    iput-object v2, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2886
    iput-object v3, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2887
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2889
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v10

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2891
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2893
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 2894
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2897
    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Splash Screen "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2898
    invoke-direct {p0, v4, v9}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V

    .line 2900
    const-string/jumbo v0, "window"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager;
    :try_end_ee
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_93 .. :try_end_ee} :catch_153
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_ee} :catch_126
    .catchall {:try_start_93 .. :try_end_ee} :catchall_123

    .line 2901
    :try_start_ee
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3
    :try_end_f2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_ee .. :try_end_f2} :catch_11d
    .catch Ljava/lang/RuntimeException; {:try_start_ee .. :try_end_f2} :catch_11a
    .catchall {:try_start_ee .. :try_end_f2} :catchall_117

    .line 2906
    :try_start_f2
    invoke-interface {v1, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2910
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_101

    new-instance v0, Lcom/android/server/policy/SplashScreenSurface;

    invoke-direct {v0, v3, p1}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_100
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_f2 .. :try_end_100} :catch_115
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_100} :catch_113
    .catchall {:try_start_f2 .. :try_end_100} :catchall_17d

    move-object v8, v0

    .line 2921
    :cond_101
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_112

    .line 2922
    const-string v0, "WindowManager"

    const-string/jumbo v2, "view not successfully added to wm, removing view"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2910
    :cond_112
    return-object v8

    .line 2915
    :catch_113
    move-exception v0

    goto :goto_129

    .line 2911
    :catch_115
    move-exception v0

    goto :goto_156

    .line 2921
    :catchall_117
    move-exception v0

    goto/16 :goto_17f

    .line 2915
    :catch_11a
    move-exception v0

    move-object v3, v8

    goto :goto_129

    .line 2911
    :catch_11d
    move-exception v0

    move-object v3, v8

    goto :goto_156

    .line 2862
    :catchall_120
    move-exception v0

    :try_start_121
    monitor-exit v5
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    :try_start_122
    throw v0
    :try_end_123
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_122 .. :try_end_123} :catch_153
    .catch Ljava/lang/RuntimeException; {:try_start_122 .. :try_end_123} :catch_126
    .catchall {:try_start_122 .. :try_end_123} :catchall_123

    .line 2921
    :catchall_123
    move-exception v0

    move-object v1, v8

    goto :goto_17f

    .line 2915
    :catch_126
    move-exception v0

    move-object v1, v8

    move-object v3, v1

    .line 2919
    :goto_129
    :try_start_129
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed creating starting window"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13f
    .catchall {:try_start_129 .. :try_end_13f} :catchall_17d

    .line 2921
    if-eqz v3, :cond_17c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_17c

    .line 2922
    :goto_147
    const-string v0, "WindowManager"

    const-string/jumbo v2, "view not successfully added to wm, removing view"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_17c

    .line 2911
    :catch_153
    move-exception v0

    move-object v1, v8

    move-object v3, v1

    .line 2913
    :goto_156
    :try_start_156
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already running, starting window not displayed. "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2913
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catchall {:try_start_156 .. :try_end_173} :catchall_17d

    .line 2921
    if-eqz v3, :cond_17c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_17c

    .line 2922
    goto :goto_147

    .line 2927
    :cond_17c
    :goto_17c
    return-object v8

    .line 2921
    :catchall_17d
    move-exception v0

    move-object v8, v3

    :goto_17f
    if-eqz v8, :cond_192

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_192

    .line 2922
    const-string v2, "WindowManager"

    const-string/jumbo v3, "view not successfully added to wm, removing view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    invoke-interface {v1, v8}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_192
    throw v0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7

    .line 2696
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2698
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 2700
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1c

    if-ne p2, v1, :cond_24

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2702
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 2703
    :cond_1c
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2704
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez p2, :cond_24

    .line 2705
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2709
    :cond_24
    iget p2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq p2, v1, :cond_32

    if-ne p3, v1, :cond_34

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2711
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 2712
    :cond_32
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2714
    :cond_34
    return-void
.end method

.method public applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4

    .line 4075
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4076
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    .line 4077
    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_14

    .line 4079
    :cond_11
    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4082
    :cond_14
    :goto_14
    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 6

    .line 2730
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2731
    return v1

    .line 2733
    :cond_8
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_2a

    const/16 v3, 0x7dd

    if-eq v0, v3, :cond_2a

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_2a

    const/16 v3, 0x7e7

    if-eq v0, v3, :cond_2a

    .line 2741
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    if-ge p1, v0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1

    .line 2738
    :cond_2a
    return v1
.end method

.method public canDismissBootAnimation()Z
    .registers 2

    .line 5655
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    return v0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .registers 12

    .line 2523
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2524
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 2527
    :goto_e
    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v5, -0x8

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1c

    .line 2529
    return v5

    .line 2532
    :cond_1c
    const/4 v1, -0x1

    aput v1, p2, v3

    .line 2534
    const/16 v1, 0xbb7

    const/16 v6, 0x7d0

    const/16 v7, 0x3e8

    if-lt v0, v2, :cond_2b

    const/16 v8, 0x63

    if-le v0, v8, :cond_37

    :cond_2b
    if-lt v0, v7, :cond_31

    const/16 v8, 0x7cf

    if-le v0, v8, :cond_37

    :cond_31
    if-lt v0, v6, :cond_d1

    if-le v0, v1, :cond_37

    goto/16 :goto_d1

    .line 2540
    :cond_37
    if-lt v0, v6, :cond_d0

    if-le v0, v1, :cond_3d

    goto/16 :goto_d0

    .line 2545
    :cond_3d
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 2546
    const/16 p1, 0x7d5

    if-eq v0, p1, :cond_6a

    const/16 p1, 0x7db

    if-eq v0, p1, :cond_69

    const/16 p1, 0x7dd

    if-eq v0, p1, :cond_69

    const/16 p1, 0x7e7

    if-eq v0, p1, :cond_69

    const/16 p1, 0x7f3

    if-eq v0, p1, :cond_69

    const/16 p1, 0x7f5

    if-eq v0, p1, :cond_69

    packed-switch v0, :pswitch_data_d4

    .line 2566
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2565
    invoke-virtual {p1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_67

    .line 2566
    goto :goto_68

    :cond_67
    move v3, v5

    .line 2565
    :goto_68
    return v3

    .line 2563
    :cond_69
    :pswitch_69  #0x7ee, 0x7ef, 0x7f0
    return v3

    .line 2552
    :cond_6a
    const/16 p1, 0x2d

    aput p1, p2, v3

    .line 2553
    return v3

    .line 2570
    :cond_6f
    const/16 v1, 0x18

    aput v1, p2, v3

    .line 2572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2574
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, v7, :cond_7e

    .line 2575
    return v3

    .line 2580
    :cond_7e
    :try_start_7e
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2583
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2580
    invoke-virtual {v6, v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7e .. :try_end_8e} :catch_8f

    .line 2586
    goto :goto_91

    .line 2584
    :catch_8f
    move-exception v6

    .line 2585
    const/4 v6, 0x0

    .line 2588
    :goto_91
    if-eqz v6, :cond_c5

    const/16 v7, 0x7f6

    if-eq v0, v7, :cond_9e

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1a

    if-lt v0, v7, :cond_9e

    goto :goto_c5

    .line 2601
    :cond_9e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget p2, p2, v3

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 2602
    if-eqz p1, :cond_c4

    if-eq p1, v2, :cond_c4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_bc

    .line 2617
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_ba

    .line 2618
    goto :goto_bb

    :cond_ba
    move v3, v5

    .line 2617
    :goto_bb
    return v3

    .line 2610
    :cond_bc
    iget p1, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_c3

    .line 2611
    return v3

    .line 2613
    :cond_c3
    return v5

    .line 2607
    :cond_c4
    return v3

    .line 2595
    :cond_c5
    :goto_c5
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_ce

    .line 2596
    goto :goto_cf

    :cond_ce
    move v3, v5

    .line 2595
    :goto_cf
    return v3

    .line 2542
    :cond_d0
    :goto_d0
    return v3

    .line 2537
    :cond_d1
    :goto_d1
    const/16 p1, -0xa

    return p1

    :pswitch_data_d4
    .packed-switch 0x7ee
        :pswitch_69  #000007ee
        :pswitch_69  #000007ef
        :pswitch_69  #000007f0
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5

    .line 2627
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7ee

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7f2

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7f5

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7ea

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7eb

    if-eq v0, v1, :cond_32

    packed-switch v0, :pswitch_data_40

    packed-switch v0, :pswitch_data_4a

    packed-switch v0, :pswitch_data_54

    .line 2634
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_32

    .line 2635
    return v2

    .line 2665
    :cond_32
    :pswitch_32  #0x7d0, 0x7d1, 0x7d2, 0x7d7, 0x7d8, 0x7d9, 0x7e1, 0x7e2, 0x7e3, 0x7e4, 0x7e5, 0x7e6
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    return v2

    nop

    :pswitch_data_40
    .packed-switch 0x7d0
        :pswitch_32  #000007d0
        :pswitch_32  #000007d1
        :pswitch_32  #000007d2
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x7d7
        :pswitch_32  #000007d7
        :pswitch_32  #000007d8
        :pswitch_32  #000007d9
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x7e1
        :pswitch_32  #000007e1
        :pswitch_32  #000007e2
        :pswitch_32  #000007e3
        :pswitch_32  #000007e4
        :pswitch_32  #000007e5
        :pswitch_32  #000007e6
    .end packed-switch
.end method

.method public createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
    .registers 6

    .line 2968
    if-eqz p2, :cond_c

    .line 2969
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const p2, 0x10a0069

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 2973
    :cond_c
    if-eqz p3, :cond_12

    .line 2974
    const p1, 0x10a006a

    goto :goto_1b

    .line 2975
    :cond_12
    if-eqz p1, :cond_18

    .line 2976
    const p1, 0x10a006b

    goto :goto_1b

    .line 2978
    :cond_18
    const p1, 0x10a0068

    .line 2981
    :goto_1b
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    .line 2984
    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p2

    .line 2985
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2d
    if-ltz p3, :cond_3d

    .line 2986
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2985
    add-int/lit8 p3, p3, -0x1

    goto :goto_2d

    .line 2989
    :cond_3d
    return-object p1
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 6

    .line 5936
    nop

    .line 5941
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 5942
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v0, :cond_2f

    .line 5943
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_30

    .line 5945
    :cond_e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    goto :goto_2f

    .line 5949
    :cond_12
    const/4 v3, 0x6

    if-ne v0, v3, :cond_29

    .line 5950
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 5951
    const/4 v3, 0x1

    if-eq v0, v3, :cond_26

    const/4 v3, 0x4

    if-eq v0, v3, :cond_26

    if-ne v0, v1, :cond_24

    goto :goto_26

    :cond_24
    move-object v0, v2

    goto :goto_28

    .line 5955
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 5957
    :goto_28
    goto :goto_30

    :cond_29
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2f

    .line 5959
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_30

    .line 5963
    :cond_2f
    :goto_2f
    move-object v0, v2

    :goto_30
    if-nez v0, :cond_33

    .line 5964
    return-object v2

    .line 5967
    :cond_33
    nop

    .line 5968
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v3, 0x10080

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 5972
    if-eqz v1, :cond_48

    .line 5973
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_49

    .line 5972
    :cond_48
    move-object v1, v2

    .line 5975
    :goto_49
    if-eqz v1, :cond_66

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_66

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 5977
    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 5978
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5979
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5980
    return-object v2

    .line 5983
    :cond_66
    return-object v2
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .registers 3

    .line 2995
    if-eqz p1, :cond_4

    .line 2996
    const/4 p1, 0x0

    return-object p1

    .line 2998
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v0, 0x10a006e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 4

    .line 5532
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5536
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 5537
    :cond_10
    if-eqz p1, :cond_1e

    .line 5539
    :try_start_12
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 5542
    goto :goto_1e

    .line 5540
    :catch_16
    move-exception p1

    .line 5541
    const-string p2, "WindowManager"

    const-string v0, "Failed to call callback"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5544
    :cond_1e
    :goto_1e
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6

    .line 5099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5101
    nop

    .line 5102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 5101
    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object p1

    .line 5107
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5108
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5109
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 5

    .line 5073
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_12

    .line 5078
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5080
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5083
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5085
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_38

    .line 5086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_38

    .line 5087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5089
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5091
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5092
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5093
    goto :goto_3d

    .line 5094
    :cond_38
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5096
    :goto_3d
    return-void
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 4

    .line 5112
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5113
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 5115
    :cond_12
    return-void
.end method

.method public dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 25

    .line 3700
    move-object/from16 v0, p0

    .line 3701
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-nez v1, :cond_90

    .line 3702
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 3703
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3704
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 3705
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_26

    .line 3706
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_26

    move v5, v6

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    .line 3710
    :goto_27
    if-eqz v5, :cond_2e

    .line 3711
    invoke-virtual {v1, v3, v4}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v1

    goto :goto_36

    .line 3713
    :cond_2e
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyCharacterMap$FallbackAction;

    .line 3716
    :goto_36
    if-eqz v1, :cond_90

    .line 3722
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    .line 3723
    nop

    .line 3724
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    .line 3725
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    iget v12, v1, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 3726
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    iget v14, v1, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3727
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v16

    .line 3728
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v19

    const/16 v20, 0x0

    .line 3723
    move/from16 v17, v4

    invoke-static/range {v7 .. v20}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v4

    .line 3730
    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-direct {v0, v7, v4, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v7

    if-nez v7, :cond_79

    .line 3731
    invoke-virtual {v4}, Landroid/view/KeyEvent;->recycle()V

    .line 3732
    goto :goto_7a

    .line 3730
    :cond_79
    move-object v2, v4

    .line 3735
    :goto_7a
    if-eqz v5, :cond_82

    .line 3736
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_90

    .line 3737
    :cond_82
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_90

    .line 3738
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 3739
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 3751
    :cond_90
    :goto_90
    return-object v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 6226
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSafeMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6227
    const-string p3, " mSystemReady="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6228
    const-string p3, " mSystemBooted="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6229
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCameraLensCoverState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6230
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6232
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6234
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6235
    const-string p3, "mUiMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6236
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {p3}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6237
    const-string p3, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6238
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLidKeyboardAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6239
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6240
    const-string p3, " mLidNavigationAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6241
    const-string p3, " getLidBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p3

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6243
    const-string p3, "mLongPressOnBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6244
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6245
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6246
    const-string p3, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6247
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6248
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6249
    const-string p3, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6250
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6251
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6252
    const-string p3, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6253
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6254
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6255
    const-string p3, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6256
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6257
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6258
    const-string p3, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6259
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6261
    const-string p3, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6262
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6264
    const-string p3, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6265
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6267
    const-string p3, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6268
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6269
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6270
    const-string p3, "mHasSoftInput="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6271
    const-string p3, " mHapticTextHandleEnabled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6273
    const-string p3, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6274
    const-string p3, " mIncallPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6275
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6276
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6277
    const-string p3, "mIncallBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6278
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6279
    const-string p3, " mEndcallBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6280
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6283
    const-string p3, "mDisplayHomeButtonHandlers="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6284
    const/4 p3, 0x0

    :goto_170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_18a

    .line 6285
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 6286
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6284
    add-int/lit8 p3, p3, 0x1

    goto :goto_170

    .line 6288
    :cond_18a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6289
    const-string p3, " mKeyguardOccludedChanged="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6290
    const-string p3, " mPendingKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6291
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6292
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 6293
    const-string p3, " mLockScreenTimeout="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 6294
    const-string p3, " mLockScreenTimerActive="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6295
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz p3, :cond_1fd

    .line 6296
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6297
    const-string p3, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6299
    const-string p3, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6300
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6301
    const-string p3, "mAccessibilityTvScheduled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6304
    :cond_1fd
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6306
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz p3, :cond_209

    .line 6307
    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6309
    :cond_209
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz p3, :cond_210

    .line 6310
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6312
    :cond_210
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_217

    .line 6313
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6316
    :cond_217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Looper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6317
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6318
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3

    .line 5478
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_7

    .line 5479
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 5481
    :cond_7
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .line 5853
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 5854
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 5855
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 5856
    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3

    .line 5486
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_7

    .line 5487
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5489
    :cond_7
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .registers 6

    .line 5207
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5212
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    const-string/jumbo v3, "screen_timeout"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5214
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 5215
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 5216
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5220
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5221
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5222
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5223
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3b

    .line 5224
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5226
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_31

    .line 5227
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 5230
    :cond_31
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p1, :cond_38

    .line 5231
    invoke-virtual {p1}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    .line 5233
    :cond_38
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 5234
    return-void

    .line 5223
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public finishedWakingUp(I)V
    .registers 2

    .line 5270
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_7

    .line 5271
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 5273
    :cond_7
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p1, :cond_e

    .line 5274
    invoke-virtual {p1}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    .line 5276
    :cond_e
    return-void
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .registers 3

    .line 1038
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_11

    .line 1040
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1042
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1043
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 3794
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_9

    .line 3795
    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3797
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .line 2718
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method getNotificationService()Landroid/app/NotificationManager;
    .registers 3

    .line 3023
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 1028
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 1030
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1031
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1033
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1034
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 1018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_14

    .line 1020
    const-string/jumbo v1, "statusbar"

    .line 1021
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1020
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1023
    :cond_14
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    .line 1024
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .registers 3

    .line 3019
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUiMode()I
    .registers 2

    .line 5910
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    return v0
.end method

.method goHome()Z
    .registers 16

    .line 6024
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 6025
    const-string v0, "Not going home because user setup is in progress."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6026
    return v2

    .line 6035
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    const-string/jumbo v3, "persist.sys.uts-test-mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1f

    .line 6037
    const-string v3, "UTS-TEST-MODE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 6039
    :cond_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 6040
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 6041
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v6

    .line 6042
    if-eqz v6, :cond_4d

    .line 6043
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6045
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 6044
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v1

    .line 6049
    if-ne v1, v0, :cond_4d

    .line 6050
    return v2

    .line 6054
    :cond_4d
    :goto_4d
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6056
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 6055
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v1
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_6c} :catch_70

    .line 6060
    if-ne v1, v0, :cond_6f

    .line 6061
    return v2

    .line 6065
    :cond_6f
    goto :goto_71

    .line 6063
    :catch_70
    move-exception v1

    .line 6067
    :goto_71
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .line 6168
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    .line 5723
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5724
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .line 5526
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5527
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 15

    .line 2014
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2015
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 2016
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2017
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2018
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2019
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2020
    const-class p2, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 2021
    const-class p2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/dreams/DreamManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2022
    const-class p2, Landroid/os/PowerManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2023
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2024
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class p3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2025
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.type.watch"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2026
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.software.leanback"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 2027
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.type.automotive"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 2028
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.hdmi.cec"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 2029
    new-instance p2, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p2, p3, v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 2031
    new-instance p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2033
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111006e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 2036
    nop

    .line 2037
    const/4 p3, 0x0

    const-string/jumbo v0, "persist.debug.force_burn_in"

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2038
    if-nez p2, :cond_c1

    if-eqz v0, :cond_10d

    .line 2044
    :cond_c1
    const/4 p2, -0x8

    if-eqz v0, :cond_d8

    .line 2045
    nop

    .line 2046
    const/16 v0, 0x8

    .line 2047
    nop

    .line 2048
    const/4 v1, -0x4

    .line 2049
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v2

    if-eqz v2, :cond_d1

    const/4 v2, 0x6

    goto :goto_d2

    :cond_d1
    const/4 v2, -0x1

    :goto_d2
    move v6, p2

    move v8, v6

    move v7, v0

    move v9, v1

    move v10, v2

    goto :goto_104

    .line 2051
    :cond_d8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2052
    const v0, 0x10e0024

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2054
    const v1, 0x10e0021

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2056
    const v2, 0x10e0025

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2058
    const v3, 0x10e0023

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2060
    const v4, 0x10e0022

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    move v10, p2

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    .line 2063
    :goto_104
    new-instance p2, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2067
    :cond_10d
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2068
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2069
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2072
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2073
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2074
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 2076
    new-instance p2, Lcom/android/server/policy/ShortcutManager;

    invoke-direct {p2, p1}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 2077
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e0040

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2079
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2080
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2081
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2083
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x111006f

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2085
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2086
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.CAR_DOCK"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2087
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2089
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2090
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.DESK_DOCK"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2091
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2093
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 2094
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string v0, "android.intent.category.VR_HOME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2095
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2098
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2099
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2101
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2103
    const-string/jumbo p2, "ro.debuggable"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2104
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e0064

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2106
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e0065

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2108
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110095

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    .line 2111
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110018

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 2113
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez p2, :cond_23f

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2114
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111001c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_23d

    goto :goto_23f

    :cond_23d
    move p2, p3

    goto :goto_240

    :cond_23f
    :goto_23f
    move p2, v0

    :goto_240
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 2116
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111001a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 2118
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111001b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 2120
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110015

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 2122
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110019

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 2124
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110017

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2127
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111008b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 2130
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x11100d4

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2133
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e0069

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2136
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00ad

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 2138
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e006b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2140
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00bb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2142
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e004e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 2144
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00b8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 2146
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00ae

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2148
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00bc

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    .line 2150
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110014

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2153
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110074

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    .line 2156
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_34c

    move p2, v0

    goto :goto_34d

    :cond_34c
    move p2, p3

    :goto_34d
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2158
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x111008d

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2161
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1110004

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 2164
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v2, 0x3f080000  # 0.53125f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKillTimeout:I

    .line 2167
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x3f080003

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceHardwareKeys:I

    .line 2170
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateKeyAssignments()V

    .line 2172
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    if-eqz p2, :cond_398

    .line 2173
    invoke-static {p1, p3}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    goto :goto_3a7

    .line 2174
    :cond_398
    const-string/jumbo p2, "persist.debug.force_foldable"

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3a7

    .line 2175
    invoke-static {p1, p3}, Lcom/android/server/policy/DisplayFoldController;->createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 2179
    :cond_3a7
    :goto_3a7
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2183
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 2184
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2185
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2186
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2187
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2188
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2189
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    .line 2190
    if-eqz p2, :cond_3e2

    .line 2192
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    .line 2197
    :cond_3e2
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 2198
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2199
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2200
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2203
    new-instance p2, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {p2, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2204
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2206
    const-string/jumbo p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2207
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x107004f

    invoke-static {p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2209
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x107001c

    invoke-static {p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 2211
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1070062

    invoke-static {p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2214
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x111007c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2217
    new-instance p2, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2220
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2223
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_463

    .line 2224
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2225
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2228
    :cond_463
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2240
    new-instance p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {p2, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2253
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2254
    const v1, 0x3f030001

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2256
    const/high16 v2, 0x3f030000  # 0.51171875f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 2259
    move v2, p3

    .line 2260
    :goto_48f
    array-length v3, v1

    if-ge v2, v3, :cond_4ec

    array-length v3, p2

    if-ge v2, v3, :cond_4ec

    .line 2262
    :try_start_495
    new-instance v3, Ldalvik/system/PathClassLoader;

    aget-object v4, v1, v2

    .line 2263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2264
    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2265
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2266
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    aput-object v6, v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/DeviceKeyHandler;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c5
    .catch Ljava/lang/Exception; {:try_start_495 .. :try_end_4c5} :catch_4c6

    .line 2271
    goto :goto_4e9

    .line 2267
    :catch_4c6
    move-exception v3

    .line 2268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate device key handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    :goto_4e9
    add-int/lit8 v2, v2, 0x1

    goto :goto_48f

    .line 2278
    :cond_4ec
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {p2, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2290
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 2291
    const-string v0, "com.android.server.policy.PhoneWindowManager.ACTION_TORCH_OFF"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2293
    return-void
.end method

.method initializeHdmiState()V
    .registers 3

    .line 4203
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 4205
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 4207
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 4208
    nop

    .line 4209
    return-void

    .line 4207
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method initializeHdmiStateInternal()V
    .registers 10

    .line 4212
    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    const-string v1, "WindowManager"

    .line 4214
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_8a

    .line 4215
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v6, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v2, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4218
    nop

    .line 4220
    :try_start_1c
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_23} :catch_48
    .catchall {:try_start_1c .. :try_end_23} :catchall_45

    .line 4221
    const/16 v3, 0xf

    :try_start_25
    new-array v3, v3, [C

    .line 4222
    invoke-virtual {v2, v3}, Ljava/io/FileReader;->read([C)I

    move-result v6

    .line 4223
    if-le v6, v5, :cond_3a

    .line 4224
    new-instance v7, Ljava/lang/String;

    sub-int/2addr v6, v5

    invoke-direct {v7, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_43
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_37} :catch_41
    .catchall {:try_start_25 .. :try_end_37} :catchall_81

    if-eqz v0, :cond_3a

    move v4, v5

    .line 4231
    :cond_3a
    nop

    .line 4233
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 4235
    :goto_3e
    goto :goto_80

    .line 4234
    :catch_3f
    move-exception v0

    goto :goto_3e

    .line 4228
    :catch_41
    move-exception v3

    goto :goto_4c

    .line 4226
    :catch_43
    move-exception v3

    goto :goto_68

    .line 4231
    :catchall_45
    move-exception v0

    move-object v2, v3

    goto :goto_82

    .line 4228
    :catch_48
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 4229
    :goto_4c
    :try_start_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_81

    .line 4231
    if-eqz v2, :cond_80

    .line 4233
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_3f

    goto :goto_3e

    .line 4226
    :catch_64
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 4227
    :goto_68
    :try_start_68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_81

    .line 4231
    if-eqz v2, :cond_80

    .line 4233
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_3f

    goto :goto_3e

    .line 4238
    :cond_80
    :goto_80
    goto :goto_a3

    .line 4231
    :catchall_81
    move-exception v0

    :goto_82
    if-eqz v2, :cond_89

    .line 4233
    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 4235
    goto :goto_89

    .line 4234
    :catch_88
    move-exception v1

    .line 4235
    :cond_89
    :goto_89
    throw v0

    .line 4238
    :cond_8a
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 4239
    const-string v0, "hdmi"

    invoke-static {v0}, Lcom/android/server/ExtconUEventObserver;->namedExtconDirExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 4240
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 4241
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->access$4400(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;)Z

    move-result v4

    .line 4242
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 4249
    :cond_a3
    :goto_a3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 4250
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 8

    .line 3048
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatchingInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    .line 3049
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    .line 3050
    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_65

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    if-nez p3, :cond_65

    const/4 p3, -0x1

    if-eq p1, p3, :cond_65

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq p1, p3, :cond_65

    .line 3054
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 3055
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTime:J

    cmp-long p3, v2, v0

    const-wide/16 v2, 0xa

    if-gez p3, :cond_37

    .line 3058
    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTime:J

    .line 3059
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    .line 3060
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x1c

    const/4 v0, 0x0

    .line 3061
    invoke-virtual {p2, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3060
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3062
    return-wide v2

    .line 3063
    :cond_37
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    if-eqz p3, :cond_3c

    .line 3065
    return-wide v2

    .line 3069
    :cond_3c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropping key targeting non-focused display #"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " keyCode="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3070
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3069
    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    const-wide/16 p1, -0x1

    return-wide p1

    .line 3073
    :cond_65
    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 23

    .line 4256
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/4 v3, 0x0

    if-nez v0, :cond_a

    .line 4258
    return v3

    .line 4261
    :cond_a
    const/high16 v0, 0x20000000

    and-int v4, p2, v0

    const/4 v5, 0x1

    if-eqz v4, :cond_13

    move v4, v5

    goto :goto_14

    :cond_13
    move v4, v3

    .line 4262
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1c

    move v6, v5

    goto :goto_1d

    :cond_1c
    move v6, v3

    .line 4263
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    .line 4264
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    .line 4265
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v8

    .line 4267
    const/high16 v9, 0x1000000

    and-int v9, p2, v9

    if-eqz v9, :cond_31

    move v9, v5

    goto :goto_32

    :cond_31
    move v9, v3

    .line 4273
    :goto_32
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v10, :cond_38

    move v10, v3

    goto :goto_43

    .line 4274
    :cond_38
    if-eqz v4, :cond_3f

    .line 4275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v10

    goto :goto_43

    .line 4276
    :cond_3f
    invoke-virtual {v10}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v10

    .line 4286
    :goto_43
    and-int/lit8 v11, p2, 0x1

    if-nez v11, :cond_50

    .line 4287
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v11

    if-eqz v11, :cond_4e

    goto :goto_50

    :cond_4e
    move v11, v3

    goto :goto_51

    :cond_50
    :goto_50
    move v11, v5

    .line 4288
    :goto_51
    const/4 v12, -0x1

    if-nez v4, :cond_8b

    if-eqz v9, :cond_59

    if-nez v11, :cond_59

    goto :goto_8b

    .line 4303
    :cond_59
    if-nez v4, :cond_74

    invoke-direct {v1, v8, v15}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 4308
    nop

    .line 4309
    if-eqz v11, :cond_6c

    invoke-direct {v1, v15}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_6c

    move v8, v5

    goto :goto_6d

    :cond_6c
    move v8, v3

    .line 4311
    :goto_6d
    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v17, v5

    move/from16 v16, v8

    goto :goto_a3

    .line 4315
    :cond_74
    nop

    .line 4316
    if-eqz v11, :cond_80

    if-eqz v6, :cond_7f

    invoke-direct {v1, v15}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v8

    if-nez v8, :cond_80

    .line 4317
    :cond_7f
    move v11, v3

    .line 4320
    :cond_80
    if-eqz v11, :cond_86

    if-eqz v6, :cond_86

    .line 4321
    iput v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 4327
    :cond_86
    move/from16 v17, v3

    move/from16 v16, v11

    goto :goto_a3

    .line 4291
    :cond_8b
    :goto_8b
    nop

    .line 4292
    nop

    .line 4294
    if-eqz v4, :cond_9f

    .line 4297
    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v15, v8, :cond_97

    if-nez v6, :cond_97

    .line 4298
    move v8, v3

    goto :goto_98

    .line 4301
    :cond_97
    move v8, v5

    :goto_98
    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v16, v3

    move/from16 v17, v8

    goto :goto_a3

    .line 4294
    :cond_9f
    move/from16 v16, v3

    move/from16 v17, v5

    .line 4327
    :goto_a3
    invoke-static {v15}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v8

    if-eqz v8, :cond_c3

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 4328
    invoke-virtual {v8, v15, v2}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 4329
    if-eqz v16, :cond_c2

    .line 4330
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v5, 0x6

    const/4 v7, 0x1

    const-string v6, "android.policy:KEY"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;Z)Z

    .line 4333
    :cond_c2
    return v17

    .line 4338
    :cond_c3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_cd

    move v8, v5

    goto :goto_ce

    :cond_cd
    move v8, v3

    .line 4339
    :goto_ce
    if-eqz v6, :cond_e3

    and-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_e3

    if-eqz v8, :cond_da

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v8, :cond_e3

    .line 4342
    :cond_da
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_e3

    move/from16 v18, v5

    goto :goto_e5

    :cond_e3
    move/from16 v18, v3

    .line 4345
    :goto_e5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 4346
    return v3

    .line 4350
    :cond_ec
    const/4 v14, 0x4

    const/4 v8, 0x3

    if-eq v15, v8, :cond_502

    if-eq v15, v14, :cond_4c3

    const/4 v9, 0x5

    const-string v11, "WindowManager"

    if-eq v15, v9, :cond_4a7

    const/4 v9, 0x6

    if-eq v15, v9, :cond_442

    const/16 v9, 0x4f

    if-eq v15, v9, :cond_165

    const/16 v9, 0x50

    if-eq v15, v9, :cond_3e2

    const/16 v9, 0x7e

    if-eq v15, v9, :cond_165

    const/16 v9, 0x7f

    if-eq v15, v9, :cond_165

    const/16 v9, 0x82

    if-eq v15, v9, :cond_165

    const/16 v9, 0xa4

    if-eq v15, v9, :cond_20a

    const/16 v9, 0xab

    if-eq v15, v9, :cond_299

    const/16 v9, 0xdb

    if-eq v15, v9, :cond_23f

    const/16 v9, 0xe7

    if-eq v15, v9, :cond_221

    const/16 v9, 0x114

    if-eq v15, v9, :cond_20e

    packed-switch v15, :pswitch_data_57a

    packed-switch v15, :pswitch_data_586

    packed-switch v15, :pswitch_data_598

    packed-switch v15, :pswitch_data_5a2

    move v10, v14

    move v9, v15

    goto/16 :goto_513

    .line 4624
    :pswitch_132  #0x118, 0x119, 0x11a, 0x11b
    and-int/lit8 v17, v17, -0x2

    .line 4625
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    .line 4626
    move v10, v14

    move v9, v15

    goto/16 :goto_513

    .line 4653
    :pswitch_13b  #0xe0
    and-int/lit8 v17, v17, -0x2

    .line 4654
    nop

    .line 4655
    move/from16 v16, v5

    move v10, v14

    move v9, v15

    goto/16 :goto_513

    .line 4630
    :pswitch_144  #0xdf
    and-int/lit8 v17, v17, -0x2

    .line 4631
    nop

    .line 4632
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_151

    .line 4633
    move/from16 v18, v3

    .line 4635
    :cond_151
    if-eqz v6, :cond_157

    .line 4636
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_15f

    .line 4638
    :cond_157
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 4640
    nop

    .line 4763
    :goto_15f
    move/from16 v16, v3

    move v10, v14

    move v9, v15

    goto/16 :goto_513

    .line 4350
    :cond_165
    :pswitch_165  #0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0xde
    move v9, v15

    goto/16 :goto_418

    .line 4530
    :pswitch_168  #0x1b
    if-eqz v6, :cond_170

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    if-eqz v0, :cond_170

    .line 4531
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    .line 4533
    :cond_170
    const/16 v0, 0x65

    if-eqz v6, :cond_1a5

    .line 4534
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    .line 4536
    new-instance v4, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    .line 4537
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v7, 0x0

    move-object v8, v4

    move v14, v15

    move/from16 v19, v15

    move v15, v7

    invoke-direct/range {v8 .. v15}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 4538
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4539
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4540
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4542
    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4544
    :cond_1a5
    move/from16 v19, v15

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4546
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    if-eqz v0, :cond_1d2

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCameraLaunch:Z

    if-eqz v0, :cond_1d2

    .line 4548
    if-eqz v10, :cond_1be

    .line 4549
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1c5

    .line 4551
    :cond_1be
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4553
    :goto_1c5
    nop

    .line 4554
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4555
    move/from16 v16, v5

    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4546
    :cond_1d2
    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4597
    :pswitch_1d7  #0x1a
    move/from16 v19, v15

    .line 4598
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    invoke-static {v8}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    .line 4599
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 4597
    invoke-static {v8, v9, v10}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    .line 4600
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindowStatePrivateFlags()I

    move-result v8

    and-int/2addr v0, v8

    if-eqz v0, :cond_1fa

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4602
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 4603
    return v17

    .line 4606
    :cond_1fa
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4607
    and-int/lit8 v17, v17, -0x2

    .line 4608
    nop

    .line 4609
    if-eqz v6, :cond_206

    .line 4610
    invoke-direct {v1, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto :goto_21a

    .line 4612
    :cond_206
    invoke-direct {v1, v2, v4, v7}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    .line 4614
    goto :goto_21a

    .line 4350
    :cond_20a
    :pswitch_20a  #0x18, 0x19
    move/from16 v19, v15

    goto/16 :goto_2b9

    .line 4644
    :cond_20e
    move/from16 v19, v15

    and-int/lit8 v17, v17, -0x2

    .line 4645
    nop

    .line 4646
    if-nez v6, :cond_21a

    .line 4647
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 4763
    :cond_21a
    :goto_21a
    move/from16 v16, v3

    move/from16 v9, v19

    :cond_21e
    :goto_21e
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4735
    :cond_221
    move/from16 v19, v15

    if-nez v6, :cond_238

    .line 4736
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4737
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4738
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4739
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4741
    :cond_238
    and-int/lit8 v17, v17, -0x2

    .line 4742
    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4708
    :cond_23f
    move/from16 v19, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_249

    move v0, v5

    goto :goto_24a

    :cond_249
    move v0, v3

    .line 4709
    :goto_24a
    if-eqz v6, :cond_25b

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v8, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v4, v8, :cond_258

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v8, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-ne v4, v8, :cond_25b

    .line 4711
    :cond_258
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 4713
    :cond_25b
    if-eqz v6, :cond_27e

    if-eqz v0, :cond_27e

    .line 4714
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    if-nez v4, :cond_27e

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v8, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v4, v8, :cond_27e

    .line 4715
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v8, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v4, v8, :cond_274

    .line 4716
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 4718
    :cond_274
    const-string v4, "Assist - Long Press"

    invoke-direct {v1, v3, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 4720
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistLongPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-direct {v1, v4, v2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 4723
    :cond_27e
    if-nez v6, :cond_292

    if-nez v0, :cond_292

    .line 4724
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    sget-object v4, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq v0, v4, :cond_28b

    .line 4725
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 4727
    :cond_28b
    if-nez v7, :cond_292

    .line 4728
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAssistPressAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 4731
    :cond_292
    and-int/lit8 v17, v17, -0x2

    .line 4732
    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4745
    :cond_299
    move/from16 v19, v15

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    if-ne v0, v5, :cond_2b4

    .line 4746
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_2af

    .line 4750
    if-nez v6, :cond_2a8

    .line 4751
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    .line 4753
    :cond_2a8
    and-int/lit8 v17, v17, -0x2

    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4746
    :cond_2af
    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4745
    :cond_2b4
    move/from16 v9, v19

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4387
    :goto_2b9
    if-eqz v16, :cond_2c7

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-eqz v0, :cond_2c7

    .line 4388
    move/from16 v9, v19

    invoke-direct {v1, v9, v5}, Lcom/android/server/policy/PhoneWindowManager;->setVolumeWakeTriggered(IZ)V

    .line 4389
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4387
    :cond_2c7
    move/from16 v9, v19

    .line 4390
    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->getVolumeWakeTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_2d9

    if-nez v6, :cond_2d9

    .line 4391
    and-int/lit8 v17, v17, -0x2

    .line 4392
    invoke-direct {v1, v9, v3}, Lcom/android/server/policy/PhoneWindowManager;->setVolumeWakeTriggered(IZ)V

    .line 4393
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4396
    :cond_2d9
    const/16 v0, 0x19

    if-ne v9, v0, :cond_30d

    .line 4397
    if-eqz v6, :cond_304

    .line 4399
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4401
    if-eqz v4, :cond_346

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_346

    .line 4402
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_346

    .line 4403
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4404
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 4405
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 4406
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4407
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4408
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    goto :goto_346

    .line 4411
    :cond_304
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4412
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4413
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_346

    .line 4415
    :cond_30d
    const/16 v0, 0x18

    if-ne v9, v0, :cond_346

    .line 4416
    if-eqz v6, :cond_33b

    .line 4417
    if-eqz v4, :cond_346

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_346

    .line 4418
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_346

    .line 4419
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 4420
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    .line 4421
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 4422
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4423
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4424
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4426
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    .line 4427
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_346

    .line 4430
    :cond_33b
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 4431
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4432
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4433
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4436
    :cond_346
    :goto_346
    const/high16 v7, -0x80000000

    if-eqz v6, :cond_3b2

    .line 4437
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4439
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object v0

    .line 4440
    if-eqz v0, :cond_35e

    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v10, :cond_35e

    .line 4441
    invoke-virtual {v0}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    .line 4444
    :cond_35e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v10

    .line 4445
    if-eqz v10, :cond_382

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_382

    .line 4448
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_382

    .line 4449
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeAnswerCall:Z

    if-eqz v0, :cond_375

    .line 4450
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 4459
    :cond_375
    const-string v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 4468
    and-int/lit8 v17, v17, -0x2

    .line 4469
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4472
    :cond_382
    nop

    .line 4474
    :try_start_383
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_383 .. :try_end_38b} :catch_38c

    .line 4477
    goto :goto_393

    .line 4475
    :catch_38c
    move-exception v0

    .line 4476
    const-string v12, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 4478
    :goto_393
    if-eqz v10, :cond_39b

    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v10

    if-nez v10, :cond_39d

    :cond_39b
    if-ne v0, v8, :cond_39f

    :cond_39d
    move v0, v5

    goto :goto_3a0

    :cond_39f
    move v0, v3

    .line 4480
    :goto_3a0
    if-eqz v0, :cond_3b2

    and-int/lit8 v0, v17, 0x1

    if-nez v0, :cond_3b2

    .line 4483
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 4485
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4488
    :cond_3b2
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_3dd

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_3bb

    goto :goto_3dd

    .line 4492
    :cond_3bb
    and-int/lit8 v0, v17, 0x1

    if-nez v0, :cond_3da

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-nez v0, :cond_3da

    .line 4493
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLineageButtons:Lorg/lineageos/internal/buttons/LineageButtons;

    invoke-virtual {v0, v2, v4}, Lorg/lineageos/internal/buttons/LineageButtons;->handleVolumeKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3ce

    .line 4494
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4500
    :cond_3ce
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4492
    :cond_3da
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4491
    :cond_3dd
    :goto_3dd
    or-int/lit8 v17, v17, 0x1

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4516
    :cond_3e2
    move v9, v15

    if-eqz v6, :cond_3f0

    if-nez v4, :cond_3f0

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCameraSleepOnRelease:Z

    if-eqz v0, :cond_3f0

    .line 4517
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4518
    :cond_3f0
    if-nez v6, :cond_415

    .line 4520
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_408

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    if-eqz v0, :cond_408

    .line 4521
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_410

    .line 4522
    :cond_408
    if-nez v4, :cond_410

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCameraSleepOnRelease:Z

    if-eqz v0, :cond_410

    .line 4523
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusReleasedGoToSleep:Z

    .line 4525
    :cond_410
    :goto_410
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4518
    :cond_415
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4670
    :goto_418
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_426

    .line 4673
    and-int/lit8 v17, v17, -0x2

    .line 4675
    :cond_426
    and-int/lit8 v0, v17, 0x1

    if-nez v0, :cond_21e

    .line 4681
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4682
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4684
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4685
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4686
    goto/16 :goto_21e

    .line 4560
    :cond_442
    move v9, v15

    and-int/lit8 v17, v17, -0x2

    .line 4561
    if-eqz v6, :cond_471

    .line 4562
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 4563
    nop

    .line 4564
    if-eqz v0, :cond_453

    .line 4565
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    goto :goto_454

    .line 4564
    :cond_453
    move v0, v3

    .line 4567
    :goto_454
    if-eqz v4, :cond_46c

    if-nez v0, :cond_46c

    .line 4568
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4569
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4570
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v7

    .line 4569
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46e

    .line 4572
    :cond_46c
    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4574
    :goto_46e
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4575
    :cond_471
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_4a4

    .line 4576
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4577
    if-nez v7, :cond_4a1

    .line 4578
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_48c

    .line 4580
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_48c

    .line 4581
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4584
    :cond_48c
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_49e

    .line 4586
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    const/4 v10, 0x4

    invoke-direct {v1, v7, v8, v10, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 4588
    move/from16 v16, v3

    goto/16 :goto_513

    .line 4584
    :cond_49e
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4577
    :cond_4a1
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4575
    :cond_4a4
    const/4 v10, 0x4

    goto/16 :goto_513

    .line 4691
    :cond_4a7
    move v10, v14

    move v9, v15

    if-eqz v6, :cond_513

    .line 4692
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 4693
    if-eqz v0, :cond_4c1

    .line 4694
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_4c1

    .line 4695
    const-string v4, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 4701
    and-int/lit8 v17, v17, -0x2

    .line 4704
    :cond_4c1
    goto/16 :goto_513

    .line 4352
    :cond_4c3
    move v10, v14

    move v9, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v4, 0xc8

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_4d0

    move v0, v5

    goto :goto_4d1

    :cond_4d0
    move v0, v3

    .line 4353
    :goto_4d1
    iget-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongSwipeDown:Z

    if-eqz v4, :cond_4e3

    if-eqz v0, :cond_4e3

    if-nez v6, :cond_4e3

    .line 4355
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEdgeLongSwipeAction:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 4357
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongSwipeDown:Z

    .line 4359
    and-int/lit8 v17, v17, -0x2

    .line 4360
    goto :goto_513

    .line 4362
    :cond_4e3
    if-eqz v0, :cond_4e9

    if-eqz v6, :cond_4e9

    move v0, v5

    goto :goto_4ea

    :cond_4e9
    move v0, v3

    :goto_4ea
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongSwipeDown:Z

    .line 4363
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongSwipeDown:Z

    if-eqz v0, :cond_4f3

    .line 4365
    and-int/lit8 v17, v17, -0x2

    .line 4366
    goto :goto_513

    .line 4369
    :cond_4f3
    if-eqz v6, :cond_4f9

    .line 4370
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    goto :goto_513

    .line 4372
    :cond_4f9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 4375
    if-eqz v0, :cond_501

    .line 4376
    and-int/lit8 v17, v17, -0x2

    .line 4379
    :cond_501
    goto :goto_513

    .line 4507
    :cond_502
    move v10, v14

    move v9, v15

    if-eqz v6, :cond_513

    if-nez v4, :cond_513

    .line 4508
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeScreen:Z

    .line 4509
    if-nez v0, :cond_511

    .line 4510
    move/from16 v16, v0

    move/from16 v18, v3

    goto :goto_513

    .line 4509
    :cond_511
    move/from16 v16, v0

    .line 4763
    :cond_513
    :goto_513
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_526

    .line 4764
    if-eq v9, v10, :cond_51e

    const/16 v0, 0x14

    if-eq v9, v0, :cond_51e

    goto :goto_526

    .line 4767
    :cond_51e
    invoke-direct {v1, v9, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv(IZ)Z

    move-result v0

    .line 4768
    if-eqz v0, :cond_526

    .line 4769
    and-int/lit8 v17, v17, -0x2

    .line 4777
    :cond_526
    :goto_526
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_552

    .line 4778
    const/16 v0, 0x36

    if-eq v9, v0, :cond_537

    goto :goto_552

    .line 4780
    :cond_537
    if-eqz v6, :cond_552

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_552

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_552

    .line 4781
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4782
    and-int/lit8 v17, v17, -0x2

    .line 4789
    :cond_552
    :goto_552
    if-eqz v18, :cond_559

    .line 4790
    const-string v0, "Virtual Key - Press"

    invoke-direct {v1, v5, v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 4794
    :cond_559
    if-eqz v16, :cond_578

    .line 4796
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v0, 0x6

    .line 4798
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v8, 0xe0

    if-ne v2, v8, :cond_56c

    move v8, v5

    goto :goto_56d

    :cond_56c
    move v8, v3

    .line 4796
    :goto_56d
    const-string v9, "android.policy:KEY"

    move-object/from16 v1, p0

    move-wide v2, v6

    move v5, v0

    move-object v6, v9

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;Z)Z

    .line 4801
    :cond_578
    return v17

    nop

    :pswitch_data_57a
    .packed-switch 0x18
        :pswitch_20a  #00000018
        :pswitch_20a  #00000019
        :pswitch_1d7  #0000001a
        :pswitch_168  #0000001b
    .end packed-switch

    :pswitch_data_586
    .packed-switch 0x55
        :pswitch_165  #00000055
        :pswitch_165  #00000056
        :pswitch_165  #00000057
        :pswitch_165  #00000058
        :pswitch_165  #00000059
        :pswitch_165  #0000005a
        :pswitch_165  #0000005b
    .end packed-switch

    :pswitch_data_598
    .packed-switch 0xde
        :pswitch_165  #000000de
        :pswitch_144  #000000df
        :pswitch_13b  #000000e0
    .end packed-switch

    :pswitch_data_5a2
    .packed-switch 0x118
        :pswitch_132  #00000118
        :pswitch_132  #00000119
        :pswitch_132  #0000011a
        :pswitch_132  #0000011b
    .end packed-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 15

    .line 4936
    const/4 v0, 0x1

    and-int/2addr p4, v0

    const-wide/32 v1, 0xf4240

    const/4 v3, 0x0

    if-eqz p4, :cond_17

    .line 4937
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4939
    return v3

    .line 4943
    :cond_17
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 4944
    return v0

    .line 4950
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_31

    if-eqz p4, :cond_31

    .line 4951
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4955
    :cond_31
    return v3
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .line 1696
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1697
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1696
    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isKeyguardDrawnLw()Z
    .registers 3

    .line 5548
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5549
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    .line 5550
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    .line 2723
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 5506
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .registers 2

    .line 5519
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5520
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .registers 3

    .line 5512
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 5513
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p1

    return p1
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 3

    .line 5493
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5494
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .registers 2

    .line 5499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5500
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .registers 2

    .line 5467
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .registers 4

    .line 6198
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_10

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_10

    .line 6200
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 6202
    :cond_10
    return v0
.end method

.method public isUserSetupComplete()Z
    .registers 5

    .line 1702
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    .line 1704
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1b

    .line 1705
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v0

    and-int/2addr v1, v0

    .line 1707
    :cond_1b
    return v1
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    .line 6155
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 5

    .line 6159
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6162
    :cond_10
    return-void
.end method

.method keyguardOn()Z
    .registers 2

    .line 3036
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method launchHomeFromHotKey(I)V
    .registers 3

    .line 4010
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 4011
    return-void
.end method

.method launchHomeFromHotKey(IZZ)V
    .registers 5

    .line 4019
    if-eqz p3, :cond_20

    .line 4020
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 4022
    return-void

    .line 4025
    :cond_9
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez p3, :cond_20

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p3

    if-eqz p3, :cond_20

    .line 4028
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {p3, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4036
    return-void

    .line 4041
    :cond_20
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_39

    .line 4043
    :try_start_25
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_2e

    .line 4044
    :catch_2d
    move-exception p1

    :goto_2e
    nop

    .line 4047
    if-eqz p2, :cond_34

    .line 4048
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 4050
    :cond_34
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_44

    .line 4051
    :cond_39
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result p3

    if-eqz p3, :cond_44

    .line 4053
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    .line 4055
    :cond_44
    :goto_44
    return-void
.end method

.method launchVoiceAssistWithWakeLock()V
    .registers 4

    .line 5118
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5121
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_35

    .line 5124
    :cond_13
    nop

    .line 5125
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5124
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 5126
    if-eqz v0, :cond_28

    .line 5128
    :try_start_20
    const-string/jumbo v1, "voice-search"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    .line 5130
    goto :goto_28

    .line 5129
    :catch_27
    move-exception v0

    .line 5132
    :cond_28
    :goto_28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5133
    const/4 v1, 0x1

    const-string v2, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5135
    :goto_35
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5136
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5137
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5

    .line 5786
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5787
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5788
    if-eqz p1, :cond_16

    .line 5791
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 5793
    :cond_16
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5794
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 13

    .line 4181
    nop

    .line 4182
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v0, p3, :cond_6

    .line 4183
    return-void

    .line 4185
    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    if-nez p3, :cond_39

    .line 4188
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_15

    .line 4189
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 4190
    :goto_15
    if-eqz v0, :cond_1f

    .line 4191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_26

    .line 4193
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4195
    :goto_26
    const-wide/32 v1, 0xf4240

    div-long v4, p1, v1

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const/4 v7, 0x5

    const-string v8, "android.policy:CAMERA_COVER"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4197
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4199
    :cond_39
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 4200
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 10

    .line 4162
    nop

    .line 4163
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p1

    if-ne p3, p1, :cond_a

    .line 4164
    return-void

    .line 4167
    :cond_a
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 4168
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 4169
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 4171
    if-eqz p3, :cond_27

    .line 4172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/16 v4, 0x9

    const-string v5, "android.policy:LID"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_37

    .line 4174
    :cond_27
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p2

    if-eq p2, p1, :cond_37

    .line 4175
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 4177
    :cond_37
    :goto_37
    return-void
.end method

.method public okToAnimate()Z
    .registers 2

    .line 5472
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 3

    .line 3802
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_10

    .line 3803
    nop

    .line 3804
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 3803
    :goto_d
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    .line 3806
    :cond_10
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .registers 3

    .line 3823
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3824
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 3825
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    goto :goto_14

    .line 3827
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 3829
    :goto_14
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 1

    .line 5594
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5595
    return-void
.end method

.method public performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
    .registers 15

    .line 6083
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 6084
    return v1

    .line 6086
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 6088
    :goto_1d
    if-eqz v0, :cond_22

    if-nez p4, :cond_22

    .line 6089
    return v1

    .line 6092
    :cond_22
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 6093
    if-nez v6, :cond_29

    .line 6094
    return v1

    .line 6097
    :cond_29
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move v4, p1

    move-object v5, p2

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 6098
    return v2
.end method

.method readLidState()V
    .registers 3

    .line 2669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 2670
    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    .line 3773
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_7

    .line 3774
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3776
    :cond_7
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3811
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3812
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IShortcutService;

    .line 3813
    if-eqz v1, :cond_20

    invoke-interface {v1}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_20

    .line 3814
    :cond_18
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Key already exists."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3817
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3818
    monitor-exit v0

    .line 3819
    return-void

    .line 3818
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public requestUserActivityNotification()V
    .registers 3

    .line 5728
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 5729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 5731
    :cond_11
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 5330
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5331
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 5332
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5333
    :try_start_c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_15

    .line 5334
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    .line 5336
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_20

    .line 5337
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5339
    return-void

    .line 5336
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .line 5373
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5374
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_c

    .line 5375
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 5377
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 5378
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5379
    return-void

    .line 5377
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3

    .line 5383
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 5384
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5385
    :try_start_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_11

    .line 5386
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    .line 5388
    :cond_11
    monitor-exit p1

    .line 5389
    return-void

    .line 5388
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 6

    .line 5353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5354
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5356
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5357
    :try_start_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 5358
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5359
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 5360
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v2

    .line 5359
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5361
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_35

    .line 5365
    :cond_2f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5367
    :goto_35
    monitor-exit p1

    .line 5368
    return-void

    .line 5367
    :catchall_37
    move-exception v0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_37

    throw v0
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .line 5562
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5563
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3

    .line 5566
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5567
    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .registers 3

    .line 5799
    if-eqz p2, :cond_c

    .line 5800
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 5802
    :cond_c
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5804
    :goto_15
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5805
    return-void
.end method

.method public setAodShowing(Z)Z
    .registers 3

    .line 6552
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-eq v0, p1, :cond_8

    .line 6553
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    .line 6554
    const/4 p1, 0x1

    return p1

    .line 6556
    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentUserLw(I)V
    .registers 3

    .line 6178
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6179
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 6180
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 6182
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_10

    .line 6183
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 6185
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 6186
    if-eqz v0, :cond_19

    .line 6187
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 6189
    :cond_19
    return-void
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 3

    .line 2005
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 2006
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2007
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2008
    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2

    .line 6173
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 6174
    return-void
.end method

.method public setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 3

    .line 4087
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4088
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 4089
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .registers 2

    .line 4069
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 4070
    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 3

    .line 3787
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_7

    .line 3788
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 3790
    :cond_7
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .registers 2

    .line 4064
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 4065
    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .registers 2

    .line 4059
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 4060
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 4

    .line 5571
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 5572
    if-eqz p1, :cond_c

    .line 5573
    const/16 p1, 0x2711

    const/4 v0, 0x1

    const-string v1, "Safe Mode Enabled"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 5576
    :cond_c
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 3

    .line 6193
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    .line 6194
    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .registers 2

    .line 3768
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 3769
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 4

    .line 5663
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5718
    return-void
.end method

.method public showGlobalActions()V
    .registers 3

    .line 1680
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1682
    return-void
.end method

.method showGlobalActionsInternal()V
    .registers 5

    .line 1685
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_f

    .line 1686
    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1688
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1689
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1692
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1693
    return-void
.end method

.method public showRecentApps()V
    .registers 3

    .line 3975
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3976
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3977
    return-void
.end method

.method startDockOrHome(IZZ)V
    .registers 10

    .line 5988
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    .line 5989
    :catch_8
    move-exception v0

    :goto_9
    nop

    .line 5990
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5992
    if-eqz p3, :cond_14

    .line 5993
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 5996
    :cond_14
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-nez p3, :cond_26

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p3

    if-nez p3, :cond_26

    .line 5997
    const-string p1, "WindowManager"

    const-string p2, "Not going home because user setup is in progress."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    return-void

    .line 6002
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object p3

    .line 6003
    if-eqz p3, :cond_3a

    .line 6005
    if-eqz p2, :cond_33

    .line 6006
    :try_start_2e
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6008
    :cond_33
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2e .. :try_end_38} :catch_39

    .line 6009
    return-void

    .line 6010
    :catch_39
    move-exception p3

    .line 6015
    :cond_3a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v4, 0x1

    const-string/jumbo v2, "startDockOrHome"

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    .line 6017
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 6

    .line 5555
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_7

    .line 5557
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 5559
    :cond_7
    return-void
.end method

.method public startedGoingToSleep(I)V
    .registers 3

    .line 5196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 5197
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 5199
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_c

    .line 5200
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 5202
    :cond_c
    return-void
.end method

.method public startedWakingUp(I)V
    .registers 3

    .line 5239
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5245
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5251
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5252
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5253
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5254
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_20

    .line 5255
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5257
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_1f

    .line 5258
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 5260
    :cond_1f
    return-void

    .line 5254
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public systemBooted()V
    .registers 3

    .line 5640
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5641
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5642
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 5643
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_12

    .line 5644
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5646
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_22

    .line 5647
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(I)V

    .line 5648
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(I)V

    .line 5649
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5650
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 5651
    return-void

    .line 5646
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public systemReady()V
    .registers 4

    .line 5602
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 5604
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 5605
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_1a

    .line 5606
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 5609
    :cond_1a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Llineageos/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Llineageos/hardware/LineageHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    .line 5612
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 5614
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 5615
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 5616
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5617
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5618
    const/4 v1, 0x1

    :try_start_36
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 5619
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5627
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_4b

    .line 5628
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5630
    :cond_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_60

    .line 5632
    new-instance v0, Lorg/lineageos/internal/buttons/LineageButtons;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/lineageos/internal/buttons/LineageButtons;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLineageButtons:Lorg/lineageos/internal/buttons/LineageButtons;

    .line 5634
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 5635
    return-void

    .line 5630
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    .line 3780
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_7

    .line 3781
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3783
    :cond_7
    return-void
.end method

.method updateRotation(Z)V
    .registers 4

    .line 5916
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 5919
    goto :goto_8

    .line 5917
    :catch_7
    move-exception p1

    .line 5920
    :goto_8
    return-void
.end method

.method public updateSettings()V
    .registers 9

    .line 2382
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2383
    nop

    .line 2384
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2386
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2387
    :try_start_17
    const-string v3, "end_button_behavior"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2391
    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2395
    const-string v3, "incall_back_button_behavior"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 2399
    const-string/jumbo v3, "ring_home_button_behavior"

    invoke-static {v0, v3, v4, v5}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingHomeBehavior:I

    .line 2403
    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_47

    move v3, v4

    goto :goto_48

    :cond_47
    move v3, v6

    :goto_48
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 2406
    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2409
    const-string/jumbo v3, "power_button_suppression_delay_after_gesture_wake"

    const/16 v7, 0x320

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 2412
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11100fd

    .line 2413
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 2414
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2417
    :cond_6f
    const-string/jumbo v3, "torch_long_press_power_gesture"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_7a

    move v3, v4

    goto :goto_7b

    :cond_7a
    move v3, v6

    :goto_7b
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchLongPressPowerEnabled:Z

    .line 2420
    const-string/jumbo v3, "torch_long_press_power_timeout"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchTimeout:I

    .line 2423
    const-string v3, "home_wake_screen"

    invoke-static {v0, v3, v4, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_94

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_94

    move v3, v4

    goto :goto_95

    :cond_94
    move v3, v6

    :goto_95
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeScreen:Z

    .line 2426
    const-string v3, "back_wake_screen"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_a5

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_a5

    move v3, v4

    goto :goto_a6

    :cond_a5
    move v3, v6

    :goto_a6
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackWakeScreen:Z

    .line 2429
    const-string v3, "menu_wake_screen"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_b6

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_b6

    move v3, v4

    goto :goto_b7

    :cond_b6
    move v3, v6

    :goto_b7
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuWakeScreen:Z

    .line 2432
    const-string v3, "assist_wake_screen"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_c7

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_c7

    move v3, v4

    goto :goto_c8

    :cond_c7
    move v3, v6

    :goto_c8
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistWakeScreen:Z

    .line 2435
    const-string v3, "app_switch_wake_screen"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_d8

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_d8

    move v3, v4

    goto :goto_d9

    :cond_d8
    move v3, v6

    :goto_d9
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchWakeScreen:Z

    .line 2438
    const-string/jumbo v3, "volume_wake_screen"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_ea

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_ea

    move v3, v4

    goto :goto_eb

    :cond_ea
    move v3, v6

    :goto_eb
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    .line 2441
    const-string/jumbo v3, "volume_answer_call"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_fc

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_fc

    move v3, v4

    goto :goto_fd

    :cond_fc
    move v3, v6

    :goto_fd
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeAnswerCall:Z

    .line 2444
    const-string v3, "camera_wake_screen"

    invoke-static {v0, v3, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/16 v7, 0x20

    if-ne v3, v4, :cond_10e

    and-int/2addr v1, v7

    if-eqz v1, :cond_10e

    move v1, v4

    goto :goto_10f

    :cond_10e
    move v1, v6

    :goto_10f
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraWakeScreen:Z

    .line 2447
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraWakeScreen:Z

    if-eqz v1, :cond_11f

    const-string v1, "camera_sleep_on_release"

    .line 2448
    invoke-static {v0, v1, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_11f

    move v1, v4

    goto :goto_120

    :cond_11f
    move v1, v6

    :goto_120
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraSleepOnRelease:Z

    .line 2451
    const-string v1, "camera_launch"

    invoke-static {v0, v1, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_12c

    move v1, v4

    goto :goto_12d

    :cond_12c
    move v1, v6

    :goto_12d
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLaunch:Z

    .line 2456
    const-string/jumbo v1, "wake_gesture_enabled"

    invoke-static {v0, v1, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_13a

    move v1, v4

    goto :goto_13b

    :cond_13a
    move v1, v6

    .line 2459
    :goto_13b
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v3, v1, :cond_144

    .line 2460
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2461
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2464
    :cond_144
    const-string v1, "force_show_navbar"

    invoke-static {v0, v1, v6, v5}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2467
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceNavbar:I

    if-eq v1, v3, :cond_164

    .line 2468
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceNavbar:I

    .line 2469
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    invoke-virtual {v1, v7}, Llineageos/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_164

    .line 2470
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceNavbar:I

    if-ne v3, v4, :cond_160

    move v3, v4

    goto :goto_161

    :cond_160
    move v3, v6

    :goto_161
    invoke-virtual {v1, v7, v3}, Llineageos/hardware/LineageHardwareManager;->set(IZ)Z

    .line 2475
    :cond_164
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateKeyAssignments()V

    .line 2478
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v0, v1, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2480
    const-string v1, "default_input_method"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2482
    if-eqz v1, :cond_180

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_180

    move v1, v4

    goto :goto_181

    :cond_180
    move v1, v6

    .line 2483
    :goto_181
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v3, v1, :cond_189

    .line 2484
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 2485
    move v1, v4

    goto :goto_18a

    .line 2483
    :cond_189
    move v1, v6

    .line 2488
    :goto_18a
    const-string/jumbo v3, "power_button_long_press"

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2490
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10e006b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2488
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2492
    const-string/jumbo v3, "power_button_very_long_press"

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2494
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10e00bb

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2492
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2497
    const-string v3, "kill_app_longpress_back"

    invoke-static {v0, v3, v6}, Llineageos/providers/LineageSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1bf

    move v6, v4

    :cond_1bf
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKillAppLongpressBack:Z

    .line 2499
    monitor-exit v2
    :try_end_1c2
    .catchall {:try_start_17 .. :try_end_1c2} :catchall_1c8

    .line 2500
    if-eqz v1, :cond_1c7

    .line 2501
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 2503
    :cond_1c7
    return-void

    .line 2499
    :catchall_1c8
    move-exception v0

    :try_start_1c9
    monitor-exit v2
    :try_end_1ca
    .catchall {:try_start_1c9 .. :try_end_1ca} :catchall_1c8

    throw v0
.end method

.method updateUiMode()V
    .registers 2

    .line 5898
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_12

    .line 5899
    nop

    .line 5900
    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5899
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 5903
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 5905
    goto :goto_1c

    .line 5904
    :catch_1b
    move-exception v0

    .line 5906
    :goto_1c
    return-void
.end method

.method public userActivity()V
    .registers 6

    .line 5747
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5748
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 5750
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5751
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5753
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_32

    .line 5755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-eqz v0, :cond_31

    .line 5756
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 5760
    :cond_31
    return-void

    .line 5753
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 6207
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 6208
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v0

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    const-wide v1, 0x10e00000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v0

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6211
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6212
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6213
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6214
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v0

    .line 6213
    const-wide v1, 0x10800000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6215
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const-wide v1, 0x1080000000cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6216
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-wide v1, 0x1080000000dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6217
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const-wide v1, 0x1080000000eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6218
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_82

    .line 6219
    const-wide v1, 0x10b00000014L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6221
    :cond_82
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6222
    return-void
.end method
