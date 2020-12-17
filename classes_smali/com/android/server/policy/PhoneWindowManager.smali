.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;,
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
.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field private static final CAPTURE_PERF_LOG_DELAY_MILLIS:J = 0x1388L

.field static DEBUG_INPUT:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field static DEBUG_SPLASH_SCREEN:Z = false

.field static DEBUG_WAKEUP:Z = false

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field private static final FLYME_CAPTURE_PERFORMANCE_LOG_DELAY_MILLIS:J = 0x320L

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x3

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_TURN_SCREEN_OFF:I = 0x3

.field static final LONG_PRESS_POWER_ASSISTANT:I = 0x5

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MOVING_DISPLAY_TO_TOP_DURATION_MILLIS:J = 0xaL

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x11

.field private static final MSG_ACCESSIBILITY_TV:I = 0x13

.field private static final MSG_BACK_LONG_PRESS:I = 0x10

.field private static final MSG_BUGREPORT_TV:I = 0x12

.field private static final MSG_CAPTURE_PERFORMANCE_LOG:I = 0x1

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

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field private static final MZ_LONGSCREENSHOT_MILLIS:I = 0x1f4

.field private static final MZ_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x320L

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

.field static SHOW_SPLASH_SCREENS:Z = false

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

.field static final localLOGV:Z

.field private static mVolumeUpKeyDispatchingDelay:J

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

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field volatile mBackKeyHandled:Z

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

.field mCameraLensCoverState:I

.field final mCapturePerformanceLogRunnable:Ljava/lang/Runnable;

.field mCarDockIntent:Landroid/content/Intent;

.field mConsumeSearchKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field mDeskDockIntent:Landroid/content/Intent;

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

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableCarDockHomeCapture:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private mExtEventObserver:Landroid/os/UEventObserver;

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field private mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field mHapticTextHandleEnabled:Z

.field private mHasFeatureHdmiCec:Z

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHomeIntent:Landroid/content/Intent;

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private mKeyguardBound:Z

.field private mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardOccludedChanged:Z

.field mLanguageSwitchKeyPressed:Z

.field private mLastCapturePerformanceTime:J

.field private mLidControlsDisplayFold:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field private volatile mMovingDisplayToTopKeyTime:J

.field private volatile mMovingDisplayToTopKeyTriggered:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field private mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

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

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field volatile mRequestedOrGoingToSleep:Z

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

.field private mScreenshotChordVolumeUpKeyTriggered:Z

.field private final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field private mScreenshotflag:Z

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

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field private mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

.field mUseTvRouting:Z

.field mVeryLongPressOnPowerBehavior:I

.field mVeryLongPressTimeout:I

.field mVibrator:Landroid/os/Vibrator;

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

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

    .line 264
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 265
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 266
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    .line 267
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 268
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    .line 335
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 336
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 337
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 353
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 354
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2724
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_68
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 432
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 436
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 441
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 448
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 475
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 481
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 486
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 509
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 536
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 600
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 627
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 630
    new-instance v3, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v4, 0x64

    invoke-direct {v3, v4, v0}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 633
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 637
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 638
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 640
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 764
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 771
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    .line 848
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 856
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    .line 1515
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1538
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    .line 1849
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 4626
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 4645
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 4660
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5163
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5287
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 6201
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    .line 6214
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastCapturePerformanceTime:J

    .line 6229
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCapturePerformanceLogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # Z

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestFullBugreport()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # Z

    .line 261
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # Ljava/lang/String;

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager;JZILjava/lang/String;)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # J
    .param p3, "x2"  # Z
    .param p4, "x3"  # I
    .param p5, "x4"  # Ljava/lang/String;

    .line 261
    invoke-direct/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/MzPhoneWindowManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$3200()[I
    .registers 1

    .line 261
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/policy/PhoneWindowManager;IJ)I
    .registers 5
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # J

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # Z

    .line 261
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotflag:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/policy/PhoneWindowManager;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastCapturePerformanceTime:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/server/policy/PhoneWindowManager;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # J

    .line 261
    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastCapturePerformanceTime:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->capturePerformanceLog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"  # J
    .param p3, "x2"  # Z
    .param p4, "x3"  # I

    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method private accessibilityShortcutActivated()V
    .registers 2

    .line 1388
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 1389
    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .registers 7
    .param p1, "win"  # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "ctx"  # Landroid/content/Context;

    .line 2627
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2628
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2629
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2630
    if-nez v1, :cond_13

    .line 2631
    return-void

    .line 2633
    :cond_13
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2634
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1a

    .line 2635
    return-void

    .line 2639
    :cond_1a
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2640
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2641
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 2642
    return-void
.end method

.method private applyLidSwitchState()V
    .registers 7

    .line 5364
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 5365
    .local v0, "lidState":I
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_17

    .line 5366
    if-nez v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v1, v2}, Lcom/android/server/policy/DisplayFoldController;->requestDeviceFolded(Z)V

    goto :goto_31

    .line 5367
    :cond_17
    if-nez v0, :cond_31

    .line 5368
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v1

    .line 5369
    .local v1, "lidBehavior":I
    if-eq v1, v2, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_23

    goto :goto_31

    .line 5371
    :cond_23
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 5372
    goto :goto_31

    .line 5374
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 5385
    .end local v1  # "lidBehavior":I
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5386
    :try_start_34
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5387
    monitor-exit v1

    .line 5388
    return-void

    .line 5387
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private static awakenDreams()V
    .registers 2

    .line 2692
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2693
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_b

    .line 2695
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2698
    goto :goto_b

    .line 2696
    :catch_a
    move-exception v1

    .line 2700
    :cond_b
    :goto_b
    return-void
.end method

.method private backLongPress()V
    .registers 3

    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1378
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v1, :cond_f

    if-eq v1, v0, :cond_a

    goto :goto_10

    .line 1382
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    goto :goto_10

    .line 1380
    :cond_f
    nop

    .line 1385
    :goto_10
    return-void
.end method

.method private bindKeyguard()V
    .registers 3

    .line 5084
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5085
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_9

    .line 5086
    monitor-exit v0

    return-void

    .line 5088
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 5089
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 5090
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 5091
    return-void

    .line 5089
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

    .line 1508
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1509
    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .registers 3

    .line 1145
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_e

    .line 1146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1147
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    :cond_e
    return-void
.end method

.method private cancelPendingLongScreenshotAction()V
    .registers 3

    .line 6103
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->getScreenshotTriggeredGestureType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 6104
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6106
    :cond_10
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .registers 3

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_e

    .line 1135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1136
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1138
    :cond_e
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1139
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPossibleVeryLongPressReboot()V

    .line 1142
    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .registers 3

    .line 1512
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1513
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .line 1504
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1505
    return-void
.end method

.method private cancelPossibleVeryLongPressReboot()V
    .registers 3

    .line 5337
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5338
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .registers 2

    .line 3557
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_10

    .line 3558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3559
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3560
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_10

    .line 3561
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    .line 3564
    .end local v0  # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_10
    return-void
.end method

.method private capturePerformanceLog()V
    .registers 5

    .line 6188
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.perfui"

    const-string v2, "com.meizu.perfui.performance_log.PerformanceLogService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6190
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6191
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6192
    const-string/jumbo v2, "perf_ext"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6193
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6194
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .registers 2

    .line 3596
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3597
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 3598
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    .line 3600
    :cond_9
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .registers 13
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 4493
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    .line 4494
    .local v0, "hdmiControlManager":Landroid/hardware/hdmi/HdmiControlManager;
    if-eqz v0, :cond_2a

    .line 4495
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4496
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4497
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v1

    .line 4498
    .local v1, "audioSystemClient":Landroid/hardware/hdmi/HdmiAudioSystemClient;
    if-eqz v1, :cond_2a

    .line 4499
    nop

    .line 4500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 4499
    :goto_26
    invoke-virtual {v1, v2, v3}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    .line 4501
    return-void

    .line 4504
    .end local v1  # "audioSystemClient":Landroid/hardware/hdmi/HdmiAudioSystemClient;
    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_31

    .line 4505
    return-void

    .line 4507
    :cond_31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 4508
    .local v1, "keyCode":I
    const/16 v8, 0x1005

    .line 4510
    .local v8, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4512
    .local v9, "pkgName":Ljava/lang/String;
    const/16 v2, 0x18

    const-string v10, "WindowManager"

    if-eq v1, v2, :cond_7f

    const/16 v2, 0x19

    if-eq v1, v2, :cond_69

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_4c

    goto :goto_95

    .line 4531
    :cond_4c
    :try_start_4c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_61

    .line 4532
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    const/16 v3, 0x65

    const/high16 v4, -0x80000000

    const-string v7, "WindowManager"

    move v5, v8

    move-object v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_61} :catch_62

    .line 4538
    :cond_61
    goto :goto_95

    .line 4536
    :catch_62
    move-exception v2

    .line 4537
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v10, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    .line 4523
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_69
    :try_start_69
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    const-string v7, "WindowManager"

    move v5, v8

    move-object v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_77} :catch_78

    .line 4527
    goto :goto_95

    .line 4525
    :catch_78
    move-exception v2

    .line 4526
    .restart local v2  # "e":Ljava/lang/Exception;
    const-string v3, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v10, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4528
    .end local v2  # "e":Ljava/lang/Exception;
    goto :goto_95

    .line 4515
    :cond_7f
    :try_start_7f
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const-string v7, "WindowManager"

    move v5, v8

    move-object v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8d} :catch_8e

    .line 4519
    goto :goto_95

    .line 4517
    :catch_8e
    move-exception v2

    .line 4518
    .restart local v2  # "e":Ljava/lang/Exception;
    const-string v3, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v10, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4520
    .end local v2  # "e":Ljava/lang/Exception;
    nop

    .line 4541
    :goto_95
    return-void
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5892
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 5898
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5896
    :cond_a
    const-string v0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object v0

    .line 5894
    :cond_d
    const-string v0, "DOUBLE_TAP_HOME_NOTHING"

    return-object v0
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "behavior"  # I

    .line 5834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5835
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 5836
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5838
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_18

    .line 5839
    const-string/jumbo v1, "sleep|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5842
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 5843
    .local v1, "N":I
    if-nez v1, :cond_21

    .line 5844
    const-string v2, "<nothing>"

    return-object v2

    .line 5847
    :cond_21
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishKeyguardDrawn()V
    .registers 5

    .line 4813
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4814
    return-void

    .line 4817
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4818
    :try_start_c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_16

    .line 4819
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4821
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_21

    .line 4825
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 4827
    return-void

    .line 4821
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

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1127
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1128
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1129
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1131
    :cond_12
    return-void
.end method

.method private finishScreenTurningOn()V
    .registers 7

    .line 4915
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 4917
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    .line 4918
    .local v0, "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_14

    .line 4919
    return-void

    .line 4923
    :cond_14
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 4924
    .local v1, "awake":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4927
    :try_start_1d
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v4, 0x0

    if-nez v3, :cond_32

    if-eqz v1, :cond_32

    .line 4928
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 4929
    const/4 v3, 0x1

    .line 4930
    .local v3, "enableScreen":Z
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v5, :cond_33

    .line 4931
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 4932
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_33

    .line 4935
    .end local v3  # "enableScreen":Z
    :cond_32
    move v3, v4

    .line 4937
    .restart local v3  # "enableScreen":Z
    :cond_33
    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_43

    .line 4939
    if-eqz v0, :cond_39

    .line 4940
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 4943
    :cond_39
    if-eqz v3, :cond_42

    .line 4945
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41

    .line 4947
    goto :goto_42

    .line 4946
    :catch_41
    move-exception v2

    .line 4949
    :cond_42
    :goto_42
    return-void

    .line 4937
    .end local v3  # "enableScreen":Z
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v3
.end method

.method private finishWindowsDrawn()V
    .registers 2

    .line 4905
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4906
    return-void

    .line 4909
    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 4910
    return-void
.end method

.method private getAccessibilityShortcutTimeout()J
    .registers 6

    .line 1482
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1484
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1483
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1c

    .line 1485
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v1

    goto :goto_20

    .line 1486
    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v1

    .line 1483
    :goto_20
    return-wide v1
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .line 2712
    nop

    .line 2713
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2712
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2714
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_14

    .line 2715
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    :cond_14
    return-object v0
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "displayId"  # I

    .line 2646
    if-nez p2, :cond_3

    .line 2648
    return-object p1

    .line 2651
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2652
    .local v0, "targetDisplay":Landroid/view/Display;
    if-nez v0, :cond_d

    .line 2655
    const/4 v1, 0x0

    return-object v1

    .line 2658
    :cond_d
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    .line 2703
    nop

    .line 2704
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2703
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .registers 5

    .line 1616
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_22

    .line 1617
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1618
    return-object v1

    .line 1620
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1622
    .local v0, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v2, 0x0

    .line 1623
    .local v2, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v0, :cond_1b

    .line 1624
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    .line 1626
    :cond_1b
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1628
    .end local v0  # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    .end local v2  # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .registers 3

    .line 4545
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_6

    .line 4546
    const/4 v0, 0x0

    return-object v0

    .line 4548
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method private getKeyguardDrawnTimeout()J
    .registers 4

    .line 4846
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 4847
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    .line 4849
    .local v0, "bootCompleted":Z
    if-eqz v0, :cond_11

    const-wide/16 v1, 0x3e8

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x1388

    :goto_13
    return-wide v1
.end method

.method private getLidBehavior()I
    .registers 4

    .line 1290
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lid_behavior"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 3
    .param p0, "r"  # Landroid/content/res/Resources;
    .param p1, "resid"  # I

    .line 5080
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v0

    return-object v0
.end method

.method private getMaxMultiPressPowerCount()I
    .registers 5

    .line 1295
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    .line 1296
    return v1

    .line 1298
    :cond_6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/4 v2, 0x2

    if-eqz v0, :cond_c

    .line 1299
    return v2

    .line 1302
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "power_double_click"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1c

    .line 1303
    return v2

    .line 1306
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .registers 2

    .line 1409
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1410
    const/4 v0, 0x3

    return v0

    .line 1414
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->voicePowerLongPressEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    :goto_14
    return v0
.end method

.method private getRingerToggleChordDelay()J
    .registers 3

    .line 1500
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 4

    .line 1490
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1492
    const/high16 v0, 0x40200000  # 2.5f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1493
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 1492
    return-wide v0

    .line 1495
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

    .line 3542
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_11

    .line 3543
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3545
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getUnderglassFingerprintControllerInternal()Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;
    .registers 2

    .line 6221
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    if-nez v0, :cond_e

    .line 6222
    const-class v0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    .line 6225
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    return-object v0
.end method

.method private getVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 7
    .param p1, "effectId"  # I

    .line 5604
    if-eqz p1, :cond_4a

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_45

    const/16 v2, 0x2711

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_50

    .line 5646
    return-object v3

    .line 5636
    :pswitch_10  #0x11
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5608
    :pswitch_15  #0x9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    if-nez v0, :cond_27

    .line 5609
    return-object v3

    .line 5619
    :pswitch_1a  #0x7, 0x8, 0xa, 0xb, 0xd
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5606
    :pswitch_1f  #0x6
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5639
    :pswitch_24  #0x5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 5640
    .local v2, "pattern":[J
    goto :goto_31

    .line 5613
    .end local v2  # "pattern":[J
    :cond_27
    :pswitch_27  #0x4
    const/16 v0, 0x15

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5642
    :cond_2e
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 5643
    .restart local v2  # "pattern":[J
    nop

    .line 5648
    :goto_31
    array-length v4, v2

    if-nez v4, :cond_35

    .line 5650
    return-object v3

    .line 5651
    :cond_35
    array-length v3, v2

    const/4 v4, -0x1

    if-ne v3, v1, :cond_40

    .line 5653
    aget-wide v0, v2, v0

    invoke-static {v0, v1, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5656
    :cond_40
    invoke-static {v2, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5625
    .end local v2  # "pattern":[J
    :cond_45
    :pswitch_45  #0x3, 0xc, 0xf, 0x10
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5632
    :cond_4a
    :pswitch_4a  #0xe
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

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

.method private goToSleep(JII)V
    .registers 6
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I
    .param p4, "flags"  # I

    .line 1233
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->gameModePowerkeyHandle()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1234
    return-void

    .line 1238
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 1239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1240
    return-void
.end method

.method private goToSleepFromPowerButton(JI)Z
    .registers 13
    .param p1, "eventTime"  # J
    .param p3, "flags"  # I

    .line 1213
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    .line 1214
    .local v0, "lastWakeUp":Landroid/os/PowerManager$WakeData;
    const/4 v1, 0x4

    if-eqz v0, :cond_50

    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v1, :cond_50

    .line 1215
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x320

    const-string/jumbo v4, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1218
    .local v2, "gestureDelayMillis":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1219
    .local v3, "now":J
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v5, :cond_50

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gez v5, :cond_50

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleep from power button suppressed. Time since gesture: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long v5, v3, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WindowManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v1, 0x0

    return v1

    .line 1227
    .end local v2  # "gestureDelayMillis":I
    .end local v3  # "now":J
    :cond_50
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1228
    const/4 v1, 0x1

    return v1
.end method

.method private handleHideBootMessage()V
    .registers 3

    .line 4952
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4953
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_c

    .line 4954
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 4955
    monitor-exit v0

    return-void

    .line 4957
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_25

    .line 4959
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_24

    .line 4960
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1c

    const-string v0, "WindowManager"

    const-string v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    :cond_1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 4964
    :cond_24
    return-void

    .line 4957
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private handleRingerChordGesture()V
    .registers 4

    .line 864
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_5

    .line 865
    return-void

    .line 867
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 868
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hush_gesture_used"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 870
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 871
    return-void
.end method

.method private handleShortPressOnHome(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 1593
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    .line 1594
    .local v0, "hdmiControl":Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    if-eqz v0, :cond_9

    .line 1595
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1600
    :cond_9
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1601
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1602
    return-void

    .line 1606
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    .line 1607
    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJ)I
    .registers 8
    .param p1, "transit"  # I
    .param p2, "duration"  # J

    .line 3440
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 3441
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transition/occluded changed occluded="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_22
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 3444
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3445
    const/4 v0, 0x5

    return v0

    .line 3448
    :cond_2e
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3449
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_3d

    const-string v0, "Starting keyguard exit animation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 3452
    :cond_44
    return v2
.end method

.method private hasLongPressOnBackBehavior()Z
    .registers 2

    .line 1430
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

    .line 1419
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

    .line 1425
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->voicePowerLongPressEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .registers 4
    .param p1, "triggeredFromAltTab"  # Z
    .param p2, "triggeredFromHome"  # Z

    .line 3603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3604
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3605
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 3606
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    .line 3608
    :cond_c
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5860
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 5861
    const-string v0, "hangup"

    return-object v0

    .line 5863
    :cond_7
    const-string v0, "<nothing>"

    return-object v0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5852
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_7

    .line 5853
    const-string v0, "hangup"

    return-object v0

    .line 5855
    :cond_7
    const-string/jumbo v0, "sleep"

    return-object v0
.end method

.method private interceptAccessibilityGestureTv(IZ)Z
    .registers 7
    .param p1, "keyCode"  # I
    .param p2, "down"  # Z

    .line 3259
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 3260
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    goto :goto_c

    .line 3261
    :cond_6
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    .line 3262
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    .line 3265
    :cond_c
    :goto_c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz v0, :cond_30

    .line 3266
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez v0, :cond_3c

    .line 3267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3268
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3269
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3270
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3271
    .end local v1  # "msg":Landroid/os/Message;
    goto :goto_3c

    .line 3272
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz v0, :cond_3c

    .line 3273
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3277
    :cond_3c
    :goto_3c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return v0
.end method

.method private interceptAccessibilityShortcutChord()V
    .registers 7

    .line 1450
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

    .line 1453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1454
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_40

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_40

    .line 1457
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1458
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1459
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1460
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v4

    .line 1459
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1463
    .end local v0  # "now":J
    :cond_40
    return-void
.end method

.method private interceptBackKeyDown()V
    .registers 5

    .line 903
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    const-string/jumbo v2, "key_back_down"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 907
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 908
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 909
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 910
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 911
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 910
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 913
    .end local v0  # "msg":Landroid/os/Message;
    :cond_2c
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 917
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    const-string/jumbo v2, "key_back_up"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 919
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 922
    .local v0, "handled":Z
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    .line 924
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v2, :cond_33

    .line 925
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 927
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_33

    .line 928
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 931
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 934
    const/4 v1, 0x0

    return v1

    .line 935
    :cond_23
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_33

    .line 937
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 940
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    return v1

    .line 945
    .end local v2  # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_33
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_49

    .line 946
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 949
    :cond_49
    return v0
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .registers 7
    .param p1, "keyCode"  # I
    .param p2, "down"  # Z

    .line 3233
    const/16 v0, 0x17

    if-ne p1, v0, :cond_7

    .line 3234
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    goto :goto_c

    .line 3235
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 3236
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    .line 3239
    :cond_c
    :goto_c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    const/16 v1, 0x12

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz v0, :cond_2e

    .line 3240
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez v0, :cond_3a

    .line 3241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3242
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3243
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3244
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3245
    .end local v1  # "msg":Landroid/os/Message;
    goto :goto_3a

    .line 3246
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz v0, :cond_3a

    .line 3247
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3251
    :cond_3a
    :goto_3a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return v0
.end method

.method private interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 9
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 3363
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 3364
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_14

    .line 3365
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 3367
    .local v1, "delayMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_14

    .line 3368
    const/4 v3, 0x1

    return v3

    .line 3371
    .end local v1  # "delayMillis":J
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method private interceptKeyBeforeDispatchingInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 35
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 2770
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    .line 2771
    .local v4, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 2772
    .local v5, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 2773
    .local v6, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 2774
    .local v7, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    .line 2775
    .local v8, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    move v11, v0

    .line 2776
    .local v11, "down":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v12

    .line 2777
    .local v12, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    .line 2779
    .local v13, "displayId":I
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v14, " canceled="

    const-string v15, " keyguardOn="

    const-string v9, " repeatCount="

    const-string v10, " down="

    move/from16 v18, v7

    .end local v7  # "metaState":I
    .local v18, "metaState":I
    const-string v7, "WindowManager"

    if-eqz v0, :cond_6c

    .line 2780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v13

    .end local v13  # "displayId":I
    .local v19, "displayId":I
    const-string/jumbo v13, "interceptKeyTi keyCode="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 2779
    .end local v19  # "displayId":I
    .restart local v13  # "displayId":I
    :cond_6c
    move/from16 v19, v13

    .line 2784
    .end local v13  # "displayId":I
    .restart local v19  # "displayId":I
    :goto_6e
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    move/from16 v13, p3

    move/from16 v20, v8

    .end local v8  # "flags":I
    .local v20, "flags":I
    invoke-virtual {v0, v2, v3, v13}, Lcom/android/server/wm/FlymeWindowManagerInternal;->adjustInterceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v8

    .line 2785
    .local v8, "res":I
    if-eqz v8, :cond_b3

    .line 2786
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_b1

    .line 2787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "interceptKey By FlymeWindowManger keyCode="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_b1
    int-to-long v9, v8

    return-wide v9

    .line 2796
    :cond_b3
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const-wide/16 v9, 0x96

    if-eqz v0, :cond_fd

    move/from16 v14, v20

    .end local v20  # "flags":I
    .local v14, "flags":I
    and-int/lit16 v0, v14, 0x400

    if-nez v0, :cond_fb

    .line 2797
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_d7

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_d7

    .line 2798
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 2799
    .local v21, "now":J
    move/from16 v20, v14

    .end local v14  # "flags":I
    .restart local v20  # "flags":I
    iget-wide v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v13, v9

    .line 2801
    .local v13, "timeoutTime":J
    cmp-long v15, v21, v13

    if-gez v15, :cond_d9

    .line 2802
    sub-long v9, v13, v21

    return-wide v9

    .line 2797
    .end local v13  # "timeoutTime":J
    .end local v20  # "flags":I
    .end local v21  # "now":J
    .restart local v14  # "flags":I
    :cond_d7
    move/from16 v20, v14

    .line 2805
    .end local v14  # "flags":I
    .restart local v20  # "flags":I
    :cond_d9
    const/16 v0, 0x19

    if-ne v5, v0, :cond_e9

    iget-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v13, :cond_e9

    .line 2807
    if-nez v11, :cond_e6

    .line 2808
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 2810
    :cond_e6
    const-wide/16 v9, -0x1

    return-wide v9

    .line 2814
    :cond_e9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->mzInterceptVolumeUpKeyTriggeredBeforeDispatching()Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 2815
    sget-wide v9, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyDispatchingDelay:J

    return-wide v9

    .line 2817
    :cond_f2
    invoke-direct {v1, v5, v11}, Lcom/android/server/policy/PhoneWindowManager;->mzInterceptVolumeUpKeyConsumedBeforeDispatching(IZ)Z

    move-result v13

    if-eqz v13, :cond_fd

    .line 2818
    const-wide/16 v9, -0x1

    return-wide v9

    .line 2796
    .end local v20  # "flags":I
    .restart local v14  # "flags":I
    :cond_fb
    move/from16 v20, v14

    .line 2825
    .end local v14  # "flags":I
    .restart local v20  # "flags":I
    :cond_fd
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v13

    if-eqz v13, :cond_148

    move/from16 v13, v20

    .end local v20  # "flags":I
    .local v13, "flags":I
    and-int/lit16 v15, v13, 0x400

    if-nez v15, :cond_14a

    .line 2827
    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v0, v15

    if-eqz v0, :cond_128

    .line 2828
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 2829
    .restart local v21  # "now":J
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_11e

    .line 2830
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    goto :goto_120

    :cond_11e
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    :goto_120
    add-long/2addr v14, v9

    .line 2832
    .local v14, "timeoutTime":J
    cmp-long v0, v21, v14

    if-gez v0, :cond_128

    .line 2833
    sub-long v9, v14, v21

    return-wide v9

    .line 2836
    .end local v14  # "timeoutTime":J
    .end local v21  # "now":J
    :cond_128
    const/16 v0, 0x19

    if-ne v5, v0, :cond_138

    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v14, :cond_138

    .line 2837
    if-nez v11, :cond_135

    .line 2838
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 2840
    :cond_135
    const-wide/16 v9, -0x1

    return-wide v9

    .line 2842
    :cond_138
    const/16 v14, 0x18

    if-ne v5, v14, :cond_14a

    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v14, :cond_14a

    .line 2843
    if-nez v11, :cond_145

    .line 2844
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 2846
    :cond_145
    const-wide/16 v9, -0x1

    return-wide v9

    .line 2825
    .end local v13  # "flags":I
    .restart local v20  # "flags":I
    :cond_148
    move/from16 v13, v20

    .line 2852
    .end local v20  # "flags":I
    .restart local v13  # "flags":I
    :cond_14a
    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v14, :cond_180

    and-int/lit16 v14, v13, 0x400

    if-nez v14, :cond_180

    .line 2853
    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v14, :cond_16c

    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v14, :cond_16c

    .line 2854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2855
    .local v14, "now":J
    move/from16 v20, v12

    move/from16 v21, v13

    .end local v12  # "canceled":Z
    .end local v13  # "flags":I
    .local v20, "canceled":Z
    .local v21, "flags":I
    iget-wide v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v12, v9

    .line 2857
    .local v12, "timeoutTime":J
    cmp-long v9, v14, v12

    if-gez v9, :cond_170

    .line 2858
    sub-long v9, v12, v14

    return-wide v9

    .line 2853
    .end local v14  # "now":J
    .end local v20  # "canceled":Z
    .end local v21  # "flags":I
    .local v12, "canceled":Z
    .restart local v13  # "flags":I
    :cond_16c
    move/from16 v20, v12

    move/from16 v21, v13

    .line 2861
    .end local v12  # "canceled":Z
    .end local v13  # "flags":I
    .restart local v20  # "canceled":Z
    .restart local v21  # "flags":I
    :cond_170
    const/16 v9, 0x18

    if-ne v5, v9, :cond_184

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v9, :cond_184

    .line 2862
    if-nez v11, :cond_17d

    .line 2863
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 2865
    :cond_17d
    const-wide/16 v9, -0x1

    return-wide v9

    .line 2852
    .end local v20  # "canceled":Z
    .end local v21  # "flags":I
    .restart local v12  # "canceled":Z
    .restart local v13  # "flags":I
    :cond_180
    move/from16 v20, v12

    move/from16 v21, v13

    .line 2871
    .end local v12  # "canceled":Z
    .end local v13  # "flags":I
    .restart local v20  # "canceled":Z
    .restart local v21  # "flags":I
    :cond_184
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v9, :cond_191

    invoke-static {v5}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v9

    if-nez v9, :cond_191

    .line 2872
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 2875
    :cond_191
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v9, :cond_1a4

    invoke-static {v5}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v9

    if-nez v9, :cond_1a4

    invoke-static {v5}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v9

    if-nez v9, :cond_1a4

    .line 2876
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2883
    :cond_1a4
    const/4 v9, 0x3

    if-ne v5, v9, :cond_1c4

    .line 2884
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    move/from16 v9, v19

    .end local v19  # "displayId":I
    .local v9, "displayId":I
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 2885
    .local v0, "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    if-nez v0, :cond_1be

    .line 2886
    new-instance v7, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {v7, v1, v9}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    move-object v0, v7

    .line 2887
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v7, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2889
    :cond_1be
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)I

    move-result v7

    int-to-long v12, v7

    return-wide v12

    .line 2890
    .end local v0  # "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    .end local v9  # "displayId":I
    .restart local v19  # "displayId":I
    :cond_1c4
    move/from16 v9, v19

    .end local v19  # "displayId":I
    .restart local v9  # "displayId":I
    const/16 v10, 0x52

    const-wide/16 v12, 0x0

    if-ne v5, v10, :cond_1fd

    .line 2892
    const/4 v0, 0x1

    .line 2894
    .local v0, "chordBug":I
    if-eqz v11, :cond_1fb

    if-nez v6, :cond_1fb

    .line 2895
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v10, :cond_1fb

    and-int/lit8 v10, v18, 0x1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_1fb

    .line 2896
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.BUG_REPORT"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v23, v7

    .line 2897
    .local v23, "intent":Landroid/content/Intent;
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v30}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2899
    const-wide/16 v12, -0x1

    return-wide v12

    .line 2902
    .end local v0  # "chordBug":I
    .end local v23  # "intent":Landroid/content/Intent;
    :cond_1fb
    goto/16 :goto_339

    :cond_1fd
    const/16 v10, 0x54

    if-ne v5, v10, :cond_219

    .line 2903
    if-eqz v11, :cond_20c

    .line 2904
    if-nez v6, :cond_218

    .line 2905
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2906
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto :goto_218

    .line 2909
    :cond_20c
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2910
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v0, :cond_218

    .line 2911
    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2912
    const-wide/16 v12, -0x1

    return-wide v12

    .line 2915
    :cond_218
    :goto_218
    return-wide v12

    .line 2916
    :cond_219
    const/16 v10, 0xbb

    if-ne v5, v10, :cond_22f

    .line 2917
    if-nez v4, :cond_22c

    .line 2918
    if-eqz v11, :cond_227

    if-nez v6, :cond_227

    .line 2919
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_22c

    .line 2920
    :cond_227
    if-nez v11, :cond_22c

    .line 2921
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 2924
    :cond_22c
    :goto_22c
    const-wide/16 v12, -0x1

    return-wide v12

    .line 2925
    :cond_22f
    const/16 v10, 0x2a

    if-ne v5, v10, :cond_248

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v10

    if-eqz v10, :cond_248

    .line 2926
    if-eqz v11, :cond_339

    .line 2927
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    .line 2928
    .local v10, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v10, :cond_246

    .line 2930
    :try_start_241
    invoke-interface {v10}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_244
    .catch Landroid/os/RemoteException; {:try_start_241 .. :try_end_244} :catch_245

    .line 2933
    goto :goto_246

    .line 2931
    :catch_245
    move-exception v0

    .line 2935
    .end local v10  # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_246
    :goto_246
    goto/16 :goto_339

    .line 2936
    :cond_248
    const/16 v10, 0x2f

    if-ne v5, v10, :cond_279

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v10

    if-eqz v10, :cond_279

    .line 2937
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-eqz v10, :cond_279

    .line 2938
    if-eqz v11, :cond_339

    if-nez v6, :cond_339

    .line 2939
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_266

    const/4 v0, 0x2

    move/from16 v16, v0

    goto :goto_268

    .line 2940
    :cond_266
    const/16 v16, 0x1

    :goto_268
    move/from16 v0, v16

    .line 2941
    .local v0, "type":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v7, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 2942
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2943
    const-wide/16 v12, -0x1

    return-wide v12

    .line 2945
    .end local v0  # "type":I
    :cond_279
    const/16 v10, 0x4c

    if-ne v5, v10, :cond_296

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v10

    if-eqz v10, :cond_296

    .line 2946
    if-eqz v11, :cond_339

    if-nez v6, :cond_339

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_339

    .line 2947
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_339

    .line 2949
    :cond_296
    const/16 v10, 0xdb

    if-ne v5, v10, :cond_2a2

    .line 2950
    const-string v0, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    const-wide/16 v14, -0x1

    return-wide v14

    .line 2952
    :cond_2a2
    const-wide/16 v14, -0x1

    const/16 v10, 0xe7

    if-ne v5, v10, :cond_2ae

    .line 2953
    const-string v0, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    return-wide v14

    .line 2955
    :cond_2ae
    const/16 v10, 0x78

    if-ne v5, v10, :cond_2c6

    .line 2956
    if-eqz v11, :cond_2c3

    if-nez v6, :cond_2c3

    .line 2957
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 2958
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2960
    :cond_2c3
    const-wide/16 v12, -0x1

    return-wide v12

    .line 2961
    :cond_2c6
    const/16 v10, 0xdd

    if-eq v5, v10, :cond_5a4

    const/16 v10, 0xdc

    if-ne v5, v10, :cond_2d2

    move/from16 v12, v18

    goto/16 :goto_5a6

    .line 2998
    :cond_2d2
    const/16 v10, 0x18

    if-eq v5, v10, :cond_314

    const/16 v0, 0x19

    if-eq v5, v0, :cond_314

    const/16 v0, 0xa4

    if-ne v5, v0, :cond_2df

    goto :goto_314

    .line 3017
    :cond_2df
    const/16 v0, 0x3d

    if-ne v5, v0, :cond_2ea

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2ea

    .line 3019
    return-wide v12

    .line 3020
    :cond_2ea
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_2f7

    invoke-direct {v1, v5, v11}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_2f7

    .line 3021
    const-wide/16 v12, -0x1

    return-wide v12

    .line 3022
    :cond_2f7
    const/16 v0, 0x11c

    if-ne v5, v0, :cond_339

    .line 3023
    if-nez v11, :cond_311

    .line 3024
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x16

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3025
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3026
    .local v0, "msg":Landroid/os/Message;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3027
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3029
    .end local v0  # "msg":Landroid/os/Message;
    :cond_311
    const-wide/16 v12, -0x1

    return-wide v12

    .line 3001
    :cond_314
    :goto_314
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_59c

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_322

    move/from16 v12, v18

    const-wide/16 v15, -0x1

    goto/16 :goto_5a0

    .line 3011
    :cond_322
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_339

    .line 3012
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 3013
    .local v0, "d":Landroid/view/InputDevice;
    if-eqz v0, :cond_339

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v10

    if-nez v10, :cond_339

    .line 3014
    const-wide/16 v12, -0x1

    return-wide v12

    .line 3033
    .end local v0  # "d":Landroid/view/InputDevice;
    :cond_339
    :goto_339
    const/4 v0, 0x0

    .line 3034
    .local v0, "actionTriggered":Z
    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v10

    if-eqz v10, :cond_374

    .line 3035
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v10, :cond_34c

    .line 3037
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    iput v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    .line 3038
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_374

    .line 3039
    :cond_34c
    const/4 v10, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    if-ne v14, v10, :cond_374

    .line 3040
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v14, v10, 0x32

    .line 3041
    .local v14, "altOnMask":I
    const/high16 v15, 0x70000

    and-int/2addr v15, v10

    .line 3044
    .local v15, "metaOnMask":I
    if-eqz v15, :cond_36f

    if-eqz v14, :cond_36f

    .line 3046
    iget v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    or-int v13, v14, v15

    xor-int/2addr v10, v13

    if-ne v12, v10, :cond_36f

    .line 3048
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 3049
    const/4 v0, 0x1

    .line 3054
    :cond_36f
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    move v10, v0

    goto :goto_375

    .line 3058
    .end local v14  # "altOnMask":I
    .end local v15  # "metaOnMask":I
    :cond_374
    :goto_374
    move v10, v0

    .end local v0  # "actionTriggered":Z
    .local v10, "actionTriggered":Z
    :goto_375
    move/from16 v12, v18

    .end local v18  # "metaState":I
    .local v12, "metaState":I
    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    .line 3060
    if-eqz v10, :cond_37e

    .line 3061
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3064
    :cond_37e
    invoke-static {v5}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-eqz v0, :cond_39a

    .line 3065
    if-eqz v11, :cond_38a

    .line 3066
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_397

    .line 3067
    :cond_38a
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_397

    .line 3068
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const-string v7, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 3070
    :cond_397
    :goto_397
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3074
    :cond_39a
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0, v5}, Lcom/android/server/policy/MzPhoneWindowManager;->isHeadSetMiddleKey(I)Z

    move-result v0

    if-eqz v0, :cond_3bd

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->isHeadSetMiddleKeyLongPressEnabled()Z

    move-result v0

    if-eqz v0, :cond_3bd

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0, v5, v3}, Lcom/android/server/policy/MzPhoneWindowManager;->handleLongPressOnHeadSetIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3ba

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3bd

    .line 3075
    :cond_3ba
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3084
    :cond_3bd
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/high16 v13, 0x10000000

    if-eqz v0, :cond_422

    .line 3085
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v14

    .line 3086
    .local v14, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v14, v5}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_422

    .line 3087
    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3088
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3089
    if-eqz v11, :cond_41f

    if-nez v6, :cond_41f

    if-nez v4, :cond_41f

    .line 3090
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual {v0, v14, v5, v12}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v15

    .line 3091
    .local v15, "shortcutIntent":Landroid/content/Intent;
    if-eqz v15, :cond_407

    .line 3092
    invoke-virtual {v15, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3094
    :try_start_3e4
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v15, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3095
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3ec
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e4 .. :try_end_3ec} :catch_3ed

    goto :goto_406

    .line 3096
    :catch_3ed
    move-exception v0

    .line 3097
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3097
    invoke-static {v7, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3100
    .end local v0  # "ex":Landroid/content/ActivityNotFoundException;
    :goto_406
    goto :goto_41f

    .line 3102
    :cond_407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3102
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    .end local v15  # "shortcutIntent":Landroid/content/Intent;
    :cond_41f
    :goto_41f
    const-wide/16 v15, -0x1

    return-wide v15

    .line 3111
    .end local v14  # "kcm":Landroid/view/KeyCharacterMap;
    :cond_422
    if-eqz v11, :cond_46b

    if-nez v6, :cond_46b

    if-nez v4, :cond_46b

    const/high16 v0, 0x10000

    and-int/2addr v0, v12

    if-eqz v0, :cond_46b

    .line 3113
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 3114
    .local v2, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2, v5}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_46b

    .line 3115
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v14, -0x70001

    and-int/2addr v14, v12

    invoke-virtual {v0, v2, v5, v14}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v14

    .line 3118
    .local v14, "shortcutIntent":Landroid/content/Intent;
    if-eqz v14, :cond_46b

    .line 3119
    invoke-virtual {v14, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3121
    :try_start_446
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v14, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3122
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_44e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_446 .. :try_end_44e} :catch_44f

    .line 3127
    goto :goto_468

    .line 3123
    :catch_44f
    move-exception v0

    .line 3124
    .restart local v0  # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3124
    invoke-static {v7, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3128
    .end local v0  # "ex":Landroid/content/ActivityNotFoundException;
    :goto_468
    const-wide/16 v15, -0x1

    return-wide v15

    .line 3134
    .end local v2  # "kcm":Landroid/view/KeyCharacterMap;
    .end local v14  # "shortcutIntent":Landroid/content/Intent;
    :cond_46b
    if-eqz v11, :cond_4ae

    if-nez v6, :cond_4ae

    if-nez v4, :cond_4ae

    .line 3135
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 3136
    .local v2, "category":Ljava/lang/String;
    if-eqz v2, :cond_4ae

    .line 3137
    const-string v0, "android.intent.action.MAIN"

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 3138
    .local v14, "intent":Landroid/content/Intent;
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3140
    :try_start_485
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v14, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3141
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_48d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_485 .. :try_end_48d} :catch_48e

    .line 3146
    goto :goto_4ab

    .line 3142
    :catch_48e
    move-exception v0

    .line 3143
    .restart local v0  # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", category="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3147
    .end local v0  # "ex":Landroid/content/ActivityNotFoundException;
    :goto_4ab
    const-wide/16 v15, -0x1

    return-wide v15

    .line 3152
    .end local v2  # "category":Ljava/lang/String;
    .end local v14  # "intent":Landroid/content/Intent;
    :cond_4ae
    if-eqz v11, :cond_4d9

    if-nez v6, :cond_4d9

    const/16 v0, 0x3d

    if-ne v5, v0, :cond_4d9

    .line 3153
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v0, :cond_4e9

    if-nez v4, :cond_4e9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_4e9

    .line 3154
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 3155
    .local v0, "shiftlessModifiers":I
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_4d8

    .line 3156
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3157
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 3158
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3160
    .end local v0  # "shiftlessModifiers":I
    :cond_4d8
    goto :goto_4e9

    .line 3161
    :cond_4d9
    if-nez v11, :cond_4e9

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v0, :cond_4e9

    and-int/2addr v0, v12

    if-nez v0, :cond_4e9

    .line 3163
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3164
    const/4 v7, 0x1

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 3168
    :cond_4e9
    :goto_4e9
    const/16 v0, 0x3e

    if-ne v5, v0, :cond_4f5

    const v0, 0x77000

    and-int/2addr v0, v12

    if-eqz v0, :cond_4f5

    const/4 v0, 0x1

    goto :goto_4f6

    :cond_4f5
    const/4 v0, 0x0

    :goto_4f6
    move v2, v0

    .line 3170
    .local v2, "isCtrlOrMetaSpace":Z
    if-eqz v11, :cond_519

    if-nez v6, :cond_519

    const/16 v0, 0xcc

    if-eq v5, v0, :cond_501

    if-eqz v2, :cond_519

    .line 3172
    :cond_501
    and-int/lit16 v0, v12, 0xc1

    if-eqz v0, :cond_509

    const/4 v0, -0x1

    move/from16 v16, v0

    goto :goto_50b

    :cond_509
    const/16 v16, 0x1

    :goto_50b
    move/from16 v0, v16

    .line 3173
    .local v0, "direction":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    invoke-interface {v7, v13, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3174
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3176
    .end local v0  # "direction":I
    :cond_519
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v0, :cond_52d

    if-nez v11, :cond_52d

    const/16 v0, 0xcc

    if-eq v5, v0, :cond_527

    const/16 v0, 0x3e

    if-ne v5, v0, :cond_52d

    .line 3179
    :cond_527
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3180
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3183
    :cond_52d
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_540

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3184
    invoke-virtual {v0, v7, v5, v3}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_540

    .line 3185
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3188
    :cond_540
    if-eqz v11, :cond_591

    .line 3189
    int-to-long v13, v5

    .line 3190
    .local v13, "shortcutCode":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_54f

    .line 3191
    const-wide v15, 0x100000000000L

    or-long/2addr v13, v15

    .line 3194
    :cond_54f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 3195
    const-wide v15, 0x200000000L

    or-long/2addr v13, v15

    .line 3198
    :cond_55b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_567

    .line 3199
    const-wide v15, 0x100000000L

    or-long/2addr v13, v15

    .line 3202
    :cond_567
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_570

    .line 3203
    const-wide/high16 v15, 0x1000000000000L

    or-long/2addr v13, v15

    .line 3206
    :cond_570
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/policy/IShortcutService;

    .line 3207
    .local v7, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v7, :cond_58e

    .line 3209
    :try_start_57b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_584

    .line 3210
    invoke-interface {v7, v13, v14}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_584
    .catch Landroid/os/RemoteException; {:try_start_57b .. :try_end_584} :catch_585

    .line 3214
    :cond_584
    goto :goto_58b

    .line 3212
    :catch_585
    move-exception v0

    .line 3213
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3215
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_58b
    const-wide/16 v15, -0x1

    return-wide v15

    .line 3207
    :cond_58e
    const-wide/16 v15, -0x1

    goto :goto_593

    .line 3188
    .end local v7  # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    .end local v13  # "shortcutCode":J
    :cond_591
    const-wide/16 v15, -0x1

    .line 3220
    :goto_593
    const/high16 v0, 0x10000

    and-int/2addr v0, v12

    if-eqz v0, :cond_599

    .line 3221
    return-wide v15

    .line 3225
    :cond_599
    const-wide/16 v13, 0x0

    return-wide v13

    .line 3001
    .end local v2  # "isCtrlOrMetaSpace":Z
    .end local v10  # "actionTriggered":Z
    .end local v12  # "metaState":I
    .restart local v18  # "metaState":I
    :cond_59c
    move/from16 v12, v18

    const-wide/16 v15, -0x1

    .line 3004
    .end local v18  # "metaState":I
    .restart local v12  # "metaState":I
    :goto_5a0
    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    .line 3005
    return-wide v15

    .line 2961
    .end local v12  # "metaState":I
    .restart local v18  # "metaState":I
    :cond_5a4
    move/from16 v12, v18

    .line 2963
    .end local v18  # "metaState":I
    .restart local v12  # "metaState":I
    :goto_5a6
    if-eqz v11, :cond_61a

    .line 2964
    const/16 v0, 0xdd

    if-ne v5, v0, :cond_5ae

    const/4 v0, 0x1

    goto :goto_5af

    :cond_5ae
    const/4 v0, -0x1

    .line 2967
    .local v0, "direction":I
    :goto_5af
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2968
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2967
    const/4 v7, -0x3

    const-string/jumbo v10, "screen_brightness_mode"

    const/4 v13, 0x0

    invoke-static {v2, v10, v13, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2972
    .local v2, "auto":I
    if-eqz v2, :cond_5cc

    .line 2973
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v14, "screen_brightness_mode"

    invoke-static {v10, v14, v13, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2979
    :cond_5cc
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v10}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v10

    .line 2980
    .local v10, "min":I
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v13

    .line 2981
    .local v13, "max":I
    sub-int v14, v13, v10

    add-int/lit8 v14, v14, 0xa

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0xa

    mul-int/2addr v14, v0

    .line 2982
    .local v14, "step":I
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2984
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    .line 2982
    move/from16 v17, v0

    .end local v0  # "direction":I
    .local v17, "direction":I
    const-string/jumbo v0, "screen_brightness"

    move/from16 v18, v2

    const/4 v2, -0x3

    .end local v2  # "auto":I
    .local v18, "auto":I
    invoke-static {v15, v0, v7, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2986
    .local v0, "brightness":I
    add-int/2addr v0, v14

    .line 2988
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2989
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2991
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v15, "screen_brightness"

    invoke-static {v7, v15, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2994
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v7}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2997
    .end local v0  # "brightness":I
    .end local v10  # "min":I
    .end local v13  # "max":I
    .end local v14  # "step":I
    .end local v17  # "direction":I
    .end local v18  # "auto":I
    :cond_61a
    const-wide/16 v13, -0x1

    return-wide v13
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .registers 13
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "interactive"  # Z

    .line 954
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    .line 955
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 959
    :cond_d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v0, :cond_18

    .line 960
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 963
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 966
    const/4 v0, 0x1

    if-eqz p2, :cond_3a

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v1, :cond_3a

    .line 967
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_3a

    .line 968
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 969
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 972
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->mzInterceptScreenshotChord()V

    .line 974
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    .line 978
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 979
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 980
    .local v2, "hungUp":Z
    if-eqz v1, :cond_63

    .line 981
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_51

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_51

    .line 988
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_63

    .line 989
    :cond_51
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_63

    .line 991
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_63

    if-eqz p2, :cond_63

    .line 994
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    .line 998
    :cond_63
    :goto_63
    const-class v3, Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GestureLauncherService;

    .line 1000
    .local v3, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v4, 0x0

    .line 1001
    .local v4, "gesturedServiceIntercepted":Z
    if-eqz v3, :cond_80

    .line 1002
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v4

    .line 1004
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v5, v5, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_80

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    if-eqz v5, :cond_80

    .line 1005
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 1010
    :cond_80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 1012
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->schedulePossibleVeryLongPressReboot()V

    .line 1016
    if-nez v2, :cond_99

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v5, :cond_99

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v5, :cond_99

    if-eqz v4, :cond_97

    goto :goto_99

    :cond_97
    const/4 v5, 0x0

    goto :goto_9a

    :cond_99
    :goto_99
    move v5, v0

    :goto_9a
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1018
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v5, :cond_12a

    .line 1019
    const/16 v5, 0x19

    const/16 v6, 0xe

    if-eqz p2, :cond_dc

    .line 1022
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v7

    if-eqz v7, :cond_12a

    .line 1028
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1029
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v6, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1030
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1031
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 1030
    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1033
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v7

    if-eqz v7, :cond_db

    .line 1034
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1035
    .local v5, "longMsg":Landroid/os/Message;
    invoke-virtual {v5, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v7, v7

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1038
    .end local v5  # "longMsg":Landroid/os/Message;
    .end local v6  # "msg":Landroid/os/Message;
    :cond_db
    goto :goto_12a

    .line 1041
    :cond_dc
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1043
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v7, :cond_11f

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 1049
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1050
    .restart local v6  # "msg":Landroid/os/Message;
    invoke-virtual {v6, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1051
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1052
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 1051
    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1054
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v7

    if-eqz v7, :cond_11c

    .line 1055
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1056
    .restart local v5  # "longMsg":Landroid/os/Message;
    invoke-virtual {v5, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1057
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1061
    .end local v5  # "longMsg":Landroid/os/Message;
    .end local v6  # "msg":Landroid/os/Message;
    :cond_11c
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_12a

    .line 1063
    :cond_11f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v5

    .line 1065
    .local v5, "maxCount":I
    if-gt v5, v0, :cond_128

    .line 1066
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_12a

    .line 1068
    :cond_128
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1073
    .end local v5  # "maxCount":I
    :cond_12a
    :goto_12a
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .registers 13
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "interactive"  # Z
    .param p3, "canceled"  # Z

    .line 1078
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_b

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz v2, :cond_9

    goto :goto_b

    :cond_9
    move v2, v0

    goto :goto_c

    :cond_b
    :goto_b
    move v2, v1

    .line 1079
    .local v2, "handled":Z
    :goto_c
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    const/16 v4, 0x1a

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptPowerKey(ILandroid/view/KeyEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v0

    :goto_1f
    or-int/2addr v2, v3

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptPowerKeyUp handled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", canceled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mPowerKeyHandled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mBeganFromNonInteractive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingLongScreenshotAction()V

    .line 1087
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->mzScreenshotShortPicture()V

    .line 1089
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1090
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1091
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1093
    if-nez v2, :cond_a9

    .line 1094
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7a

    .line 1096
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v4, v3}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1100
    :cond_7a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1102
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v0

    .line 1103
    .local v0, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 1104
    .local v3, "eventTime":J
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v5, v0, :cond_a4

    .line 1107
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    .line 1108
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1107
    invoke-virtual {v5, v6, p2, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1109
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1112
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1114
    return-void

    .line 1118
    .end local v5  # "msg":Landroid/os/Message;
    :cond_a4
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v3, v4, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1122
    .end local v0  # "maxCount":I
    .end local v3  # "eventTime":J
    :cond_a9
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1123
    return-void
.end method

.method private interceptRingerToggleChord()V
    .registers 7

    .line 1466
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_35

    .line 1468
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1469
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    .line 1472
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1473
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1475
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1476
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v4

    .line 1475
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1479
    .end local v0  # "now":J
    :cond_35
    return-void
.end method

.method private interceptScreenshotChord()V
    .registers 7

    .line 1434
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_3a

    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1438
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3a

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3a

    .line 1441
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1442
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1443
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 1444
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1447
    .end local v0  # "now":J
    :cond_3a
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 4336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 4337
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4338
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 4339
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_26

    .line 4340
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4344
    :cond_26
    return-void
.end method

.method private isHidden(I)Z
    .registers 6
    .param p1, "accessibilityMode"  # I

    .line 2372
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 2373
    .local v0, "lidState":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    const/4 v3, 0x2

    if-eq p1, v3, :cond_e

    .line 2379
    return v1

    .line 2377
    :cond_e
    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1

    .line 2375
    :cond_12
    if-nez v0, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method private isRoundWindow()Z
    .registers 2

    .line 1853
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

    .line 5564
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

    .line 1587
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
    .param p0, "keyCode"  # I

    .line 4375
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_e

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_e

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_e

    .line 4381
    const/4 v0, 0x1

    return v0

    .line 4379
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .registers 5
    .param p1, "keyCode"  # I

    .line 4393
    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x82

    if-eq p1, v0, :cond_2a

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xde

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2a

    packed-switch p1, :pswitch_data_36

    .line 4416
    return v2

    .line 4414
    :cond_2a
    :pswitch_2a  #0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b
    return v1

    .line 4398
    :cond_2b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    if-eqz v0, :cond_34

    move v1, v2

    :cond_34
    return v1

    nop

    :pswitch_data_36
    .packed-switch 0x55
        :pswitch_2a  #00000055
        :pswitch_2a  #00000056
        :pswitch_2a  #00000057
        :pswitch_2a  #00000058
        :pswitch_2a  #00000059
        :pswitch_2a  #0000005a
        :pswitch_2a  #0000005b
    .end packed-switch
.end method

.method private launchAllAppsAction()V
    .registers 6

    .line 1654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2e

    .line 1656
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1657
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    .local v2, "intentLauncher":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1662
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2e

    .line 1663
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    .end local v1  # "pm":Landroid/content/pm/PackageManager;
    .end local v2  # "intentLauncher":Landroid/content/Intent;
    .end local v3  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2e
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1667
    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .registers 6
    .param p1, "hint"  # Ljava/lang/String;
    .param p2, "deviceId"  # I

    .line 3482
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3485
    return-void

    .line 3487
    :cond_c
    const/4 v0, 0x0

    .line 3488
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v1, -0x80000000

    if-le p2, v1, :cond_1c

    .line 3489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3490
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3492
    :cond_1c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_40

    .line 3495
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3496
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_57

    .line 3498
    :cond_40
    if-eqz p1, :cond_4e

    .line 3499
    if-nez v0, :cond_4a

    .line 3500
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3502
    :cond_4a
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3504
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 3505
    .local v1, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_57

    .line 3506
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 3509
    .end local v1  # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_57
    :goto_57
    return-void
.end method

.method private launchAssistLongPressAction()V
    .registers 5

    .line 3460
    const/4 v0, 0x0

    const-string v1, "Assist - Long Press"

    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 3462
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3466
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3470
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    .line 3471
    .local v1, "searchManager":Landroid/app/SearchManager;
    if-eqz v1, :cond_20

    .line 3472
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 3474
    :cond_20
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_25} :catch_26

    .line 3477
    .end local v1  # "searchManager":Landroid/app/SearchManager;
    goto :goto_2e

    .line 3475
    :catch_26
    move-exception v1

    .line 3476
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist long press action."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3478
    .end local v1  # "e":Landroid/content/ActivityNotFoundException;
    :goto_2e
    return-void
.end method

.method private launchVoiceAssist(Z)V
    .registers 6
    .param p1, "allowDuringSetup"  # Z

    .line 3513
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    .line 3514
    const/4 v0, 0x0

    goto :goto_a

    .line 3515
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_a
    nop

    .line 3516
    .local v0, "keyguardActive":Z
    if-nez v0, :cond_1a

    .line 3517
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3518
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3522
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_1a
    return-void
.end method

.method private static lidBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5987
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 5995
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5989
    :cond_d
    const-string v0, "LID_BEHAVIOR_LOCK"

    return-object v0

    .line 5991
    :cond_10
    const-string v0, "LID_BEHAVIOR_SLEEP"

    return-object v0

    .line 5993
    :cond_13
    const-string v0, "LID_BEHAVIOR_NONE"

    return-object v0
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5868
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 5874
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5872
    :cond_a
    const-string v0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object v0

    .line 5870
    :cond_d
    const-string v0, "LONG_PRESS_BACK_NOTHING"

    return-object v0
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5879
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 5887
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5885
    :cond_d
    const-string v0, "LONG_PRESS_HOME_ASSIST"

    return-object v0

    .line 5883
    :cond_10
    const-string v0, "LONG_PRESS_HOME_ALL_APPS"

    return-object v0

    .line 5881
    :cond_13
    const-string v0, "LONG_PRESS_HOME_NOTHING"

    return-object v0
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5922
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

    .line 5936
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5934
    :cond_16
    const-string v0, "LONG_PRESS_POWER_ASSISTANT"

    return-object v0

    .line 5932
    :cond_19
    const-string v0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object v0

    .line 5930
    :cond_1c
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object v0

    .line 5928
    :cond_1f
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object v0

    .line 5926
    :cond_22
    const-string v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 5924
    :cond_25
    const-string v0, "LONG_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5952
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 5960
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5958
    :cond_d
    const-string v0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object v0

    .line 5956
    :cond_10
    const-string v0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object v0

    .line 5954
    :cond_13
    const-string v0, "MULTI_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private mzInterceptScreenshotChord()V
    .registers 13

    .line 6118
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_a2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_a2

    .line 6119
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6120
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6121
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 6122
    .local v3, "capturePerfLog":I
    const/4 v4, 0x0

    const-string/jumbo v5, "mz_capture_performance_log"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 6123
    const-wide/16 v5, 0x1f4

    const-wide/16 v7, 0x320

    const/4 v9, 0x1

    if-ne v9, v3, :cond_68

    .line 6124
    iget-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v10, v7

    cmp-long v4, v0, v10

    if-gtz v4, :cond_41

    iget-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v10, v7

    cmp-long v4, v0, v10

    if-gtz v4, :cond_41

    .line 6126
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6127
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 6128
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCapturePerformanceLogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a2

    .line 6129
    :cond_41
    iget-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v10, v7

    cmp-long v4, v0, v10

    if-gtz v4, :cond_a2

    iget-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v10, v7

    cmp-long v4, v0, v10

    if-gtz v4, :cond_a2

    .line 6131
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6132
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 6133
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotflag:Z

    .line 6134
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->reset()V

    .line 6135
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v4, v9}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->setScreenshotTriggeredGestureType(I)V

    .line 6136
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a2

    .line 6138
    :cond_68
    iget-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v10, v7

    cmp-long v10, v0, v10

    if-gtz v10, :cond_9e

    .line 6139
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v10

    if-eqz v10, :cond_7c

    iget-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v10, v7

    cmp-long v10, v0, v10

    if-lez v10, :cond_83

    :cond_7c
    iget-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v10, v7

    cmp-long v7, v0, v10

    if-gtz v7, :cond_9e

    .line 6141
    :cond_83
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6142
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 6143
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 6144
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotflag:Z

    .line 6145
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->reset()V

    .line 6146
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v4, v9}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->setScreenshotTriggeredGestureType(I)V

    .line 6147
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a2

    .line 6149
    :cond_9e
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 6150
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 6153
    .end local v0  # "now":J
    .end local v2  # "resolver":Landroid/content/ContentResolver;
    .end local v3  # "capturePerfLog":I
    :cond_a2
    :goto_a2
    return-void
.end method

.method private mzInterceptVolumeUpKeyBeforeQueueing(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 6180
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTime:J

    .line 6181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 6182
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->mzInterceptScreenshotChord()V

    .line 6183
    return-void
.end method

.method private mzInterceptVolumeUpKeyConsumedBeforeDispatching(IZ)Z
    .registers 5
    .param p1, "keyCode"  # I
    .param p2, "down"  # Z

    .line 6169
    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    if-eqz v1, :cond_f

    .line 6171
    if-nez p2, :cond_d

    .line 6172
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 6174
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 6176
    :cond_f
    return v0
.end method

.method private mzInterceptVolumeUpKeyTriggeredBeforeDispatching()Z
    .registers 7

    .line 6156
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_1b

    .line 6157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6158
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    .line 6160
    .local v2, "timeoutTime":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1b

    .line 6161
    sub-long v4, v2, v0

    sput-wide v4, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyDispatchingDelay:J

    .line 6162
    const/4 v4, 0x1

    return v4

    .line 6165
    .end local v0  # "now":J
    .end local v2  # "timeoutTime":J
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private mzScreenshotShortPicture()V
    .registers 3

    .line 6109
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotflag:Z

    if-eqz v0, :cond_18

    .line 6110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotflag:Z

    .line 6111
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->reset()V

    .line 6112
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->setScreenshotTriggeredGestureType(I)V

    .line 6113
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6115
    :cond_18
    return-void
.end method

.method private performHapticFeedback(IZLjava/lang/String;)Z
    .registers 10
    .param p1, "effectId"  # I
    .param p2, "always"  # Z
    .param p3, "reason"  # Ljava/lang/String;

    .line 5569
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

    move-result v0

    return v0
.end method

.method private powerLongPress()V
    .registers 6

    .line 1310
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1311
    .local v0, "behavior":I
    if-eqz v0, :cond_66

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_45

    const/4 v4, 0x3

    if-eq v0, v4, :cond_45

    const/4 v3, 0x4

    if-eq v0, v3, :cond_27

    const/4 v3, 0x5

    if-eq v0, v3, :cond_17

    goto :goto_67

    .line 1347
    :cond_17
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1348
    const-string v1, "Power - Long Press - Go To Assistant"

    invoke-direct {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1351
    const/high16 v1, -0x80000000

    .line 1352
    .local v1, "powerKeyDeviceId":I
    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_67

    .line 1331
    .end local v1  # "powerKeyDeviceId":I
    :cond_27
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1332
    const-string v1, "Power - Long Press - Go To Voice Assist"

    invoke-direct {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1339
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1340
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power_long_press"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1341
    goto :goto_67

    .line 1344
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    .line 1345
    goto :goto_67

    .line 1323
    :cond_45
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1324
    const-string v4, "Power - Long Press - Shut Off"

    invoke-direct {p0, v2, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1327
    const-string v4, "globalactions"

    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1328
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    if-ne v0, v3, :cond_56

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    invoke-interface {v4, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1329
    goto :goto_67

    .line 1315
    :cond_5b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1316
    const-string v1, "Power - Long Press - Global Actions"

    invoke-direct {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1319
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1320
    goto :goto_67

    .line 1313
    :cond_66
    nop

    .line 1357
    :goto_67
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/OfflineUsageStats;->collectPowerLongPress(Landroid/content/Context;)V

    .line 1359
    return-void
.end method

.method private powerMultiPressAction(JZI)V
    .registers 10
    .param p1, "eventTime"  # J
    .param p3, "interactive"  # Z
    .param p4, "behavior"  # I

    .line 1253
    if-eqz p4, :cond_5e

    const/4 v0, 0x1

    const-string v1, "WindowManager"

    if-eq p4, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p4, v0, :cond_b

    goto :goto_5f

    .line 1280
    :cond_b
    const-string v0, "Starting brightness boost."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    if-nez p3, :cond_15

    .line 1282
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1284
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_5f

    .line 1257
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1258
    const-string v0, "Ignoring toggling theater mode - device not setup."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    goto :goto_5f

    .line 1262
    :cond_27
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "theater_mode_on"

    if-eqz v2, :cond_45

    .line 1263
    const-string v0, "Toggling theater mode off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1266
    if-nez p3, :cond_5f

    .line 1267
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_5f

    .line 1270
    :cond_45
    const-string v2, "Toggling theater mode on."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1274
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_5f

    if-eqz p3, :cond_5f

    .line 1275
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_5f

    .line 1255
    :cond_5e
    nop

    .line 1287
    :cond_5f
    :goto_5f
    return-void
.end method

.method private powerPress(JZI)V
    .registers 10
    .param p1, "eventTime"  # J
    .param p3, "interactive"  # Z
    .param p4, "count"  # I

    .line 1152
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1153
    const-string v0, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-void

    .line 1157
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

    .line 1161
    const/4 v0, 0x2

    if-ne p4, v0, :cond_5a

    .line 1162
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_b0

    .line 1163
    :cond_5a
    const/4 v1, 0x3

    if-ne p4, v1, :cond_63

    .line 1164
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_b0

    .line 1165
    :cond_63
    if-eqz p3, :cond_b0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v2, :cond_b0

    .line 1166
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    if-eqz v2, :cond_b0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_ac

    if-eq v2, v0, :cond_a8

    if-eq v2, v1, :cond_9e

    const/4 v0, 0x4

    if-eq v2, v0, :cond_9a

    const/4 v0, 0x5

    if-eq v2, v0, :cond_7c

    goto :goto_b0

    .line 1185
    :cond_7c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz v0, :cond_96

    .line 1186
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_8e

    .line 1187
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1188
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1190
    :cond_8e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_b0

    .line 1191
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    goto :goto_b0

    .line 1194
    :cond_96
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_b0

    .line 1182
    :cond_9a
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    .line 1183
    goto :goto_b0

    .line 1176
    :cond_9e
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1178
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    goto :goto_b0

    .line 1173
    :cond_a8
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1174
    goto :goto_b0

    .line 1170
    :cond_ac
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1171
    nop

    .line 1200
    :cond_b0
    :goto_b0
    return-void
.end method

.method private powerVeryLongPress()V
    .registers 3

    .line 1362
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_15

    .line 1366
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1367
    const/4 v0, 0x0

    const-string v1, "Power - Very Long Press - Show Global Actions"

    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_15

    .line 1364
    :cond_14
    nop

    .line 1373
    :goto_15
    return-void
.end method

.method private preloadRecentApps()V
    .registers 2

    .line 3549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3550
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3551
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 3552
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 3554
    :cond_c
    return-void
.end method

.method private readCameraLensCoverState()V
    .registers 2

    .line 2368
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2369
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .registers 5

    .line 2114
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2116
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2118
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_17

    const/4 v3, 0x3

    if-le v1, v3, :cond_19

    .line 2120
    :cond_17
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2123
    :cond_19
    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2125
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v3, 0x1

    if-ltz v1, :cond_29

    if-le v1, v3, :cond_2b

    .line 2127
    :cond_29
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2130
    :cond_2b
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2131
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2132
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2134
    :cond_3d
    return-void
.end method

.method private reportScreenStateToVrManager(Z)V
    .registers 3
    .param p1, "isScreenOn"  # Z

    .line 4898
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_5

    .line 4899
    return-void

    .line 4901
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    .line 4902
    return-void
.end method

.method private requestFullBugreport()V
    .registers 4

    .line 3281
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3282
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 3285
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3286
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 3289
    goto :goto_2f

    .line 3287
    :catch_27
    move-exception v0

    .line 3288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3291
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private schedulePossibleVeryLongPressReboot()V
    .registers 5

    .line 5332
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5333
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5334
    return-void
.end method

.method private sendSystemKeyToStatusBar(I)V
    .registers 4
    .param p1, "keyCode"  # I

    .line 4350
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 4351
    .local v0, "statusBar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_b

    .line 4353
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 4356
    goto :goto_b

    .line 4354
    :catch_a
    move-exception v1

    .line 4358
    :cond_b
    :goto_b
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(I)V
    .registers 5
    .param p1, "keyCode"  # I

    .line 4364
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4365
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4366
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4367
    return-void
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .registers 10
    .param p1, "isOccluded"  # Z
    .param p2, "force"  # Z

    .line 3701
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardOccluded occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 3703
    .local v0, "wasOccluded":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 3704
    .local v1, "showing":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, p1, :cond_2c

    if-eqz p2, :cond_2a

    goto :goto_2c

    :cond_2a
    move v4, v3

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v4, v2

    .line 3705
    .local v4, "changed":Z
    :goto_2d
    if-nez p1, :cond_5e

    if-eqz v4, :cond_5e

    if-eqz v1, :cond_5e

    .line 3706
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 3707
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 3708
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5d

    .line 3709
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3710
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 3711
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3714
    :cond_5d
    return v2

    .line 3715
    :cond_5e
    if-eqz p1, :cond_88

    if-eqz v4, :cond_88

    if-eqz v1, :cond_88

    .line 3716
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 3717
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 3718
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_87

    .line 3719
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, -0x401

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3720
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3722
    :cond_87
    return v2

    .line 3723
    :cond_88
    if-eqz v4, :cond_92

    .line 3724
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 3725
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 3726
    return v3

    .line 3728
    :cond_92
    return v3
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5903
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

    .line 5917
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5915
    :cond_16
    const-string v0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object v0

    .line 5913
    :cond_19
    const-string v0, "SHORT_PRESS_POWER_GO_HOME"

    return-object v0

    .line 5911
    :cond_1c
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 5909
    :cond_1f
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object v0

    .line 5907
    :cond_22
    const-string v0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object v0

    .line 5905
    :cond_25
    const-string v0, "SHORT_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5965
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 5971
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5969
    :cond_a
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 5967
    :cond_d
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object v0
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5976
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 5982
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5980
    :cond_a
    const-string v0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object v0

    .line 5978
    :cond_d
    const-string v0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object v0
.end method

.method private shortPressPowerGoHome()V
    .registers 3

    .line 1243
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1248
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    .line 1250
    :cond_10
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 12
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2438
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2440
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x7f2

    if-ne v1, v4, :cond_17

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x3

    .line 2441
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    .line 2442
    .local v1, "hideDockDivider":Z
    :goto_18
    if-eqz v1, :cond_1b

    .line 2443
    return v3

    .line 2451
    :cond_1b
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2452
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_2d
    move v4, v3

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 2453
    .local v4, "hideIme":Z
    :goto_30
    if-eqz v4, :cond_33

    .line 2454
    return v3

    .line 2457
    :cond_33
    if-eqz p2, :cond_49

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2458
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v5

    if-nez v5, :cond_49

    :cond_47
    move v5, v3

    goto :goto_4a

    :cond_49
    move v5, v2

    .line 2461
    .local v5, "showImeOverKeyguard":Z
    :goto_4a
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v6

    if-eqz v6, :cond_54

    if-eqz v5, :cond_54

    move v6, v3

    goto :goto_55

    :cond_54
    move v6, v2

    .line 2463
    .local v6, "allowWhenLocked":Z
    :goto_55
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    .line 2465
    .local v7, "isKeyguardShowing":Z
    if-eqz v7, :cond_74

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 2467
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v8

    if-nez v8, :cond_72

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_70

    goto :goto_72

    :cond_70
    move v8, v2

    goto :goto_73

    :cond_72
    :goto_72
    move v8, v3

    :goto_73
    or-int/2addr v6, v8

    .line 2472
    :cond_74
    if-eqz v7, :cond_7f

    if-nez v6, :cond_7f

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_7f

    move v2, v3

    :cond_7f
    return v2
.end method

.method private shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .registers 2

    .line 4552
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return v0
.end method

.method private shouldDispatchInputWhenNonInteractive(II)Z
    .registers 11
    .param p1, "displayId"  # I
    .param p2, "keyCode"  # I

    .line 4448
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v0

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v1

    .line 4450
    .local v2, "isDefaultDisplay":Z
    :goto_b
    if-eqz v2, :cond_10

    .line 4451
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_16

    .line 4452
    :cond_10
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    :goto_16
    nop

    .line 4453
    .local v3, "display":Landroid/view/Display;
    if-eqz v3, :cond_22

    .line 4454
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v4

    if-ne v4, v1, :cond_20

    goto :goto_22

    :cond_20
    move v4, v0

    goto :goto_23

    :cond_22
    :goto_22
    move v4, v1

    .line 4456
    .local v4, "displayOff":Z
    :goto_23
    if-eqz v4, :cond_2a

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v5, :cond_2a

    .line 4457
    return v0

    .line 4461
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_33

    if-nez v4, :cond_33

    .line 4462
    return v1

    .line 4466
    :cond_33
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v5, :cond_3f

    const/4 v5, 0x4

    if-eq p2, v5, :cond_3e

    const/16 v5, 0x108

    if-ne p2, v5, :cond_3f

    .line 4468
    :cond_3e
    return v0

    .line 4472
    :cond_3f
    if-eqz v2, :cond_57

    .line 4475
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v5

    .line 4478
    .local v5, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v5, :cond_57

    :try_start_47
    invoke-interface {v5}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v6
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4b} :catch_4e

    if-eqz v6, :cond_57

    .line 4479
    return v1

    .line 4481
    :catch_4e
    move-exception v1

    .line 4482
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException when checking if dreaming"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    .line 4487
    .end local v1  # "e":Landroid/os/RemoteException;
    .end local v5  # "dreamManager":Landroid/service/dreams/IDreamManager;
    :cond_57
    return v0
.end method

.method private shouldEnableWakeGestureLp()Z
    .registers 3

    .line 2209
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2210
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2211
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_24

    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2212
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 2209
    :goto_25
    return v1
.end method

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 1670
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPictureInPictureMenu event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1672
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1673
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1674
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1675
    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .registers 2

    .line 1678
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1679
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 1680
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    .line 1682
    :cond_9
    return-void
.end method

.method private showRecentApps(Z)V
    .registers 3
    .param p1, "triggeredFromAltTab"  # Z

    .line 3581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3582
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3583
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 3584
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 3586
    :cond_c
    return-void
.end method

.method private sleepPress()V
    .registers 3

    .line 1392
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1393
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1396
    :cond_9
    return-void
.end method

.method private sleepRelease(J)V
    .registers 5
    .param p1, "eventTime"  # J

    .line 1399
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_15

    .line 1402
    :cond_8
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1406
    :goto_15
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "bundle"  # Landroid/os/Bundle;
    .param p3, "handle"  # Landroid/os/UserHandle;

    .line 3529
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3530
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "bundle"  # Landroid/os/Bundle;
    .param p3, "handle"  # Landroid/os/UserHandle;
    .param p4, "allowDuringSetup"  # Z

    .line 3534
    if-nez p4, :cond_20

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_20

    .line 3537
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not starting activity because user setup is in progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3535
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3539
    :goto_25
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "handle"  # Landroid/os/UserHandle;

    .line 3525
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3526
    return-void
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .registers 3
    .param p1, "deviceId"  # I

    .line 3589
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3590
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 3591
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    .line 3593
    :cond_9
    return-void
.end method

.method private toggleRecentApps()V
    .registers 2

    .line 3567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3568
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3569
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 3570
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 3572
    :cond_c
    return-void
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .line 5313
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 5315
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 5316
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 5317
    .local v1, "enable":Z
    :goto_24
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_45

    .line 5318
    if-eqz v1, :cond_3c

    .line 5320
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5321
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43

    .line 5324
    :cond_3c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5326
    :goto_43
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5328
    .end local v1  # "enable":Z
    :cond_45
    monitor-exit v0

    .line 5329
    return-void

    .line 5328
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .registers 5
    .param p1, "acquire"  # Z

    .line 5342
    if-eqz p1, :cond_12

    .line 5343
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_1c

    .line 5344
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    const-string v2, "ScreenOff"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_1c

    .line 5348
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_1c

    .line 5349
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 5350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5353
    :cond_1c
    :goto_1c
    return-void
.end method

.method private updateWakeGestureListenerLp()V
    .registers 2

    .line 2201
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2202
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_11

    .line 2204
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    .line 2206
    :goto_11
    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"  # I

    .line 5941
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 5947
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5945
    :cond_a
    const-string v0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 5943
    :cond_d
    const-string v0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private wakeUp(JZILjava/lang/String;)Z
    .registers 10
    .param p1, "wakeTime"  # J
    .param p3, "wakeInTheaterMode"  # Z
    .param p4, "reason"  # I
    .param p5, "details"  # Ljava/lang/String;

    .line 4798
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 4799
    .local v0, "theaterModeEnabled":Z
    const/4 v1, 0x0

    if-nez p3, :cond_a

    if-eqz v0, :cond_a

    .line 4800
    return v1

    .line 4803
    :cond_a
    if-eqz v0, :cond_18

    .line 4804
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theater_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4808
    :cond_18
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4, p5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 4809
    const/4 v1, 0x1

    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .registers 9
    .param p1, "eventTime"  # J

    .line 4789
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const/4 v4, 0x1

    const-string v5, "android.policy:POWER"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4792
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectPowerScreenOn(Landroid/content/Context;)V

    .line 4794
    return-void
.end method


# virtual methods
.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 32
    .param p1, "appToken"  # Landroid/os/IBinder;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "theme"  # I
    .param p4, "compatInfo"  # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"  # Ljava/lang/CharSequence;
    .param p6, "labelRes"  # I
    .param p7, "icon"  # I
    .param p8, "logo"  # I
    .param p9, "windowFlags"  # I
    .param p10, "overrideConfig"  # Landroid/content/res/Configuration;
    .param p11, "displayId"  # I

    .line 2480
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move/from16 v8, p11

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    const/4 v9, 0x0

    if-nez v0, :cond_16

    .line 2481
    return-object v9

    .line 2483
    :cond_16
    if-nez v3, :cond_19

    .line 2484
    return-object v9

    .line 2487
    :cond_19
    const/4 v10, 0x0

    .line 2488
    .local v10, "wm":Landroid/view/WindowManager;
    const/4 v11, 0x0

    .line 2491
    .local v11, "view":Landroid/view/View;
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2492
    .local v0, "context":Landroid/content/Context;
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z
    :try_end_1f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1b .. :try_end_1f} :catch_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1f} :catch_2bf
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2b3

    if-eqz v12, :cond_6a

    :try_start_21
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addSplashScreen "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": nonLocalizedLabel="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " theme="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2492
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_21 .. :try_end_4b} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_4b} :catch_56
    .catchall {:try_start_21 .. :try_end_4b} :catchall_4c

    goto :goto_6a

    .line 2617
    .end local v0  # "context":Landroid/content/Context;
    :catchall_4c
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_32a

    .line 2611
    :catch_56
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_2ca

    .line 2607
    :catch_60
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_300

    .line 2497
    .restart local v0  # "context":Landroid/content/Context;
    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-direct {v1, v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v12
    :try_end_6e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6a .. :try_end_6e} :catch_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6e} :catch_2bf
    .catchall {:try_start_6a .. :try_end_6e} :catchall_2b3

    .line 2498
    .local v12, "displayContext":Landroid/content/Context;
    if-nez v12, :cond_85

    .line 2500
    nop

    .line 2617
    if-eqz v11, :cond_84

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_84

    .line 2618
    const-string v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    invoke-interface {v10, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2500
    :cond_84
    return-object v9

    .line 2502
    :cond_85
    move-object v13, v12

    .line 2504
    .end local v0  # "context":Landroid/content/Context;
    .local v13, "context":Landroid/content/Context;
    :try_start_86
    invoke-virtual {v13}, Landroid/content/Context;->getThemeResId()I

    move-result v0
    :try_end_8a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_86 .. :try_end_8a} :catch_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_8a} :catch_2bf
    .catchall {:try_start_86 .. :try_end_8a} :catchall_2b3

    if-ne v4, v0, :cond_8e

    if-eqz v6, :cond_99

    .line 2506
    :cond_8e
    const/4 v0, 0x4

    :try_start_8f
    invoke-virtual {v13, v3, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v13, v0

    .line 2507
    invoke-virtual {v13, v4}, Landroid/content/Context;->setTheme(I)V
    :try_end_97
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8f .. :try_end_97} :catch_98
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_8f .. :try_end_97} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_97} :catch_56
    .catchall {:try_start_8f .. :try_end_97} :catchall_4c

    .line 2510
    goto :goto_99

    .line 2508
    :catch_98
    move-exception v0

    .line 2513
    :cond_99
    :goto_99
    const/4 v14, 0x1

    if-eqz v7, :cond_124

    :try_start_9c
    sget-object v15, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v7, v15}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v15

    if-nez v15, :cond_124

    .line 2514
    sget-boolean v15, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z
    :try_end_a6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9c .. :try_end_a6} :catch_11d
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_a6} :catch_116
    .catchall {:try_start_9c .. :try_end_a6} :catchall_10f

    if-eqz v15, :cond_c3

    :try_start_a8
    const-string v15, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addSplashScreen: creating context based on overrideConfig"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for splash screen"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_a8 .. :try_end_c3} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_c3} :catch_56
    .catchall {:try_start_a8 .. :try_end_c3} :catchall_4c

    .line 2516
    :cond_c3
    :try_start_c3
    invoke-virtual {v13, v7}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 2517
    .local v0, "overrideContext":Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    .line 2518
    sget-object v9, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2520
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v15, v17

    .line 2521
    .local v15, "resId":I
    if-eqz v15, :cond_109

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_109

    .line 2525
    sget-boolean v17, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v17, :cond_104

    const-string v14, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_ea
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c3 .. :try_end_ea} :catch_11d
    .catch Ljava/lang/RuntimeException; {:try_start_c3 .. :try_end_ea} :catch_116
    .catchall {:try_start_c3 .. :try_end_ea} :catchall_10f

    move-object/from16 v18, v10

    .end local v10  # "wm":Landroid/view/WindowManager;
    .local v18, "wm":Landroid/view/WindowManager;
    :try_start_ec
    const-string v10, "addSplashScreen: apply overrideConfig"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to starting window resId="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .end local v18  # "wm":Landroid/view/WindowManager;
    .restart local v10  # "wm":Landroid/view/WindowManager;
    :cond_104
    move-object/from16 v18, v10

    .line 2527
    .end local v10  # "wm":Landroid/view/WindowManager;
    .restart local v18  # "wm":Landroid/view/WindowManager;
    :goto_106
    move-object v4, v0

    move-object v13, v4

    .end local v13  # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    goto :goto_10b

    .line 2521
    .end local v4  # "context":Landroid/content/Context;
    .end local v18  # "wm":Landroid/view/WindowManager;
    .restart local v10  # "wm":Landroid/view/WindowManager;
    .restart local v13  # "context":Landroid/content/Context;
    :cond_109
    move-object/from16 v18, v10

    .line 2529
    .end local v10  # "wm":Landroid/view/WindowManager;
    .restart local v18  # "wm":Landroid/view/WindowManager;
    :goto_10b
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_126

    .line 2617
    .end local v0  # "overrideContext":Landroid/content/Context;
    .end local v9  # "typedArray":Landroid/content/res/TypedArray;
    .end local v12  # "displayContext":Landroid/content/Context;
    .end local v13  # "context":Landroid/content/Context;
    .end local v15  # "resId":I
    .end local v18  # "wm":Landroid/view/WindowManager;
    .restart local v10  # "wm":Landroid/view/WindowManager;
    :catchall_10f
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_2b8

    .line 2611
    :catch_116
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_2c4

    .line 2607
    :catch_11d
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_2fa

    .line 2513
    .restart local v12  # "displayContext":Landroid/content/Context;
    .restart local v13  # "context":Landroid/content/Context;
    :cond_124
    move-object/from16 v18, v10

    .line 2532
    .end local v10  # "wm":Landroid/view/WindowManager;
    .restart local v18  # "wm":Landroid/view/WindowManager;
    :goto_126
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v13}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 2533
    .local v4, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 2535
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v9, v0

    .line 2537
    .local v9, "label":Ljava/lang/CharSequence;
    if-eqz v9, :cond_141

    .line 2538
    const/4 v0, 0x1

    invoke-virtual {v4, v9, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_145

    .line 2540
    :cond_141
    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 2543
    :goto_145
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2546
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_150
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_ec .. :try_end_150} :catch_2a9
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_150} :catch_29f
    .catchall {:try_start_ec .. :try_end_150} :catchall_294

    .line 2551
    if-nez v8, :cond_166

    :try_start_152
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z
    :try_end_154
    .catchall {:try_start_152 .. :try_end_154} :catchall_15c

    if-eqz v0, :cond_166

    .line 2552
    const/high16 v0, 0x80000

    or-int v0, p9, v0

    move v14, v0

    .end local p9  # "windowFlags":I
    .local v0, "windowFlags":I
    goto :goto_168

    .line 2554
    .end local v0  # "windowFlags":I
    .restart local p9  # "windowFlags":I
    :catchall_15c
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v1, v10

    move/from16 v10, p8

    goto/16 :goto_282

    :cond_166
    move/from16 v14, p9

    .end local p9  # "windowFlags":I
    .local v14, "windowFlags":I
    :goto_168
    :try_start_168
    monitor-exit v10
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_27c

    .line 2560
    or-int/lit8 v0, v14, 0x10

    const/16 v10, 0x8

    or-int/2addr v0, v10

    const/high16 v15, 0x20000

    or-int/2addr v0, v15

    or-int/lit8 v19, v14, 0x10

    or-int/lit8 v19, v19, 0x8

    or-int v15, v19, v15

    :try_start_177
    invoke-virtual {v4, v0, v15}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V
    :try_end_17a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_177 .. :try_end_17a} :catch_273
    .catch Ljava/lang/RuntimeException; {:try_start_177 .. :try_end_17a} :catch_26a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_261

    .line 2570
    move/from16 v15, p7

    :try_start_17c
    invoke-virtual {v4, v15}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V
    :try_end_17f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_17c .. :try_end_17f} :catch_25a
    .catch Ljava/lang/RuntimeException; {:try_start_17c .. :try_end_17f} :catch_253
    .catchall {:try_start_17c .. :try_end_17f} :catchall_24c

    .line 2571
    move/from16 v10, p8

    :try_start_181
    invoke-virtual {v4, v10}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 2573
    const/4 v0, -0x1

    invoke-virtual {v4, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2576
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2577
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2578
    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2579
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2581
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2583
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2585
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2586
    const/4 v5, 0x1

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2589
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_1be

    .line 2590
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2593
    :cond_1be
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Splash Screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2594
    invoke-direct {v1, v4, v13}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V

    .line 2596
    const-string/jumbo v5, "window"

    invoke-virtual {v13, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;
    :try_end_1de
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_181 .. :try_end_1de} :catch_28d
    .catch Ljava/lang/RuntimeException; {:try_start_181 .. :try_end_1de} :catch_289
    .catchall {:try_start_181 .. :try_end_1de} :catchall_284

    .line 2597
    .end local v18  # "wm":Landroid/view/WindowManager;
    .local v5, "wm":Landroid/view/WindowManager;
    :try_start_1de
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6
    :try_end_1e2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1de .. :try_end_1e2} :catch_249
    .catch Ljava/lang/RuntimeException; {:try_start_1de .. :try_end_1e2} :catch_246
    .catchall {:try_start_1de .. :try_end_1e2} :catchall_329

    .line 2599
    .end local v11  # "view":Landroid/view/View;
    .local v6, "view":Landroid/view/View;
    :try_start_1e2
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v7, :cond_215

    const-string v7, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding splash screen window for "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2600
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_20a

    move-object v1, v6

    goto :goto_20b

    :cond_20a
    const/4 v1, 0x0

    :goto_20b
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2599
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_215
    invoke-interface {v5, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2606
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_226

    new-instance v1, Lcom/android/server/policy/SplashScreenSurface;

    invoke-direct {v1, v6, v2}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_223
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1e2 .. :try_end_223} :catch_242
    .catch Ljava/lang/RuntimeException; {:try_start_1e2 .. :try_end_223} :catch_23e
    .catchall {:try_start_1e2 .. :try_end_223} :catchall_23a

    move-object/from16 v16, v1

    goto :goto_228

    :cond_226
    const/16 v16, 0x0

    .line 2617
    :goto_228
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_239

    .line 2618
    const-string v1, "WindowManager"

    const-string/jumbo v7, "view not successfully added to wm, removing view"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2606
    :cond_239
    return-object v16

    .line 2617
    .end local v0  # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4  # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9  # "label":Ljava/lang/CharSequence;
    .end local v12  # "displayContext":Landroid/content/Context;
    .end local v13  # "context":Landroid/content/Context;
    :catchall_23a
    move-exception v0

    move-object v11, v6

    goto/16 :goto_32a

    .line 2611
    :catch_23e
    move-exception v0

    move-object v11, v6

    goto/16 :goto_2ca

    .line 2607
    :catch_242
    move-exception v0

    move-object v11, v6

    goto/16 :goto_300

    .line 2611
    .end local v6  # "view":Landroid/view/View;
    .restart local v11  # "view":Landroid/view/View;
    :catch_246
    move-exception v0

    goto/16 :goto_2ca

    .line 2607
    :catch_249
    move-exception v0

    goto/16 :goto_300

    .line 2617
    .end local v5  # "wm":Landroid/view/WindowManager;
    .restart local v18  # "wm":Landroid/view/WindowManager;
    :catchall_24c
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_32a

    .line 2611
    :catch_253
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_2ca

    .line 2607
    :catch_25a
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_300

    .line 2617
    :catchall_261
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_32a

    .line 2611
    :catch_26a
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_2ca

    .line 2607
    :catch_273
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_300

    .line 2554
    .restart local v4  # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v9  # "label":Ljava/lang/CharSequence;
    .restart local v12  # "displayContext":Landroid/content/Context;
    .restart local v13  # "context":Landroid/content/Context;
    :catchall_27c
    move-exception v0

    move/from16 v15, p7

    move-object v1, v10

    move/from16 v10, p8

    :goto_282
    :try_start_282
    monitor-exit v1
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_292

    .end local v11  # "view":Landroid/view/View;
    .end local v14  # "windowFlags":I
    .end local v18  # "wm":Landroid/view/WindowManager;
    .end local p0  # "this":Lcom/android/server/policy/PhoneWindowManager;
    .end local p1  # "appToken":Landroid/os/IBinder;
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "theme":I
    .end local p4  # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p5  # "nonLocalizedLabel":Ljava/lang/CharSequence;
    .end local p6  # "labelRes":I
    .end local p7  # "icon":I
    .end local p8  # "logo":I
    .end local p10  # "overrideConfig":Landroid/content/res/Configuration;
    .end local p11  # "displayId":I
    :try_start_283
    throw v0
    :try_end_284
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_283 .. :try_end_284} :catch_28d
    .catch Ljava/lang/RuntimeException; {:try_start_283 .. :try_end_284} :catch_289
    .catchall {:try_start_283 .. :try_end_284} :catchall_284

    .line 2617
    .end local v4  # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9  # "label":Ljava/lang/CharSequence;
    .end local v12  # "displayContext":Landroid/content/Context;
    .end local v13  # "context":Landroid/content/Context;
    .restart local v11  # "view":Landroid/view/View;
    .restart local v14  # "windowFlags":I
    .restart local v18  # "wm":Landroid/view/WindowManager;
    .restart local p0  # "this":Lcom/android/server/policy/PhoneWindowManager;
    .restart local p1  # "appToken":Landroid/os/IBinder;
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "theme":I
    .restart local p4  # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p5  # "nonLocalizedLabel":Ljava/lang/CharSequence;
    .restart local p6  # "labelRes":I
    .restart local p7  # "icon":I
    .restart local p8  # "logo":I
    .restart local p10  # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p11  # "displayId":I
    :catchall_284
    move-exception v0

    move-object/from16 v5, v18

    goto/16 :goto_32a

    .line 2611
    :catch_289
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_2ca

    .line 2607
    :catch_28d
    move-exception v0

    move-object/from16 v5, v18

    goto/16 :goto_300

    .line 2554
    .restart local v4  # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v9  # "label":Ljava/lang/CharSequence;
    .restart local v12  # "displayContext":Landroid/content/Context;
    .restart local v13  # "context":Landroid/content/Context;
    :catchall_292
    move-exception v0

    goto :goto_282

    .line 2617
    .end local v4  # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9  # "label":Ljava/lang/CharSequence;
    .end local v12  # "displayContext":Landroid/content/Context;
    .end local v13  # "context":Landroid/content/Context;
    .end local v14  # "windowFlags":I
    .restart local p9  # "windowFlags":I
    :catchall_294
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto/16 :goto_32a

    .line 2611
    :catch_29f
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto :goto_2ca

    .line 2607
    :catch_2a9
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto :goto_300

    .line 2617
    .end local v18  # "wm":Landroid/view/WindowManager;
    .restart local v10  # "wm":Landroid/view/WindowManager;
    :catchall_2b3
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_2b8
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .end local v10  # "wm":Landroid/view/WindowManager;
    .restart local v18  # "wm":Landroid/view/WindowManager;
    goto :goto_32a

    .line 2611
    .end local v18  # "wm":Landroid/view/WindowManager;
    .restart local v10  # "wm":Landroid/view/WindowManager;
    :catch_2bf
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_2c4
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .line 2615
    .end local v10  # "wm":Landroid/view/WindowManager;
    .end local p9  # "windowFlags":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v5  # "wm":Landroid/view/WindowManager;
    .restart local v14  # "windowFlags":I
    :goto_2ca
    :try_start_2ca
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed creating starting window"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e0
    .catchall {:try_start_2ca .. :try_end_2e0} :catchall_329

    .line 2617
    nop

    .end local v0  # "e":Ljava/lang/RuntimeException;
    if-eqz v11, :cond_327

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_327

    .line 2618
    :goto_2e9
    const-string v0, "WindowManager"

    const-string/jumbo v1, "view not successfully added to wm, removing view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    invoke-interface {v5, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_327

    .line 2607
    .end local v5  # "wm":Landroid/view/WindowManager;
    .end local v14  # "windowFlags":I
    .restart local v10  # "wm":Landroid/view/WindowManager;
    .restart local p9  # "windowFlags":I
    :catch_2f5
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_2fa
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .line 2609
    .end local v10  # "wm":Landroid/view/WindowManager;
    .end local p9  # "windowFlags":I
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    .restart local v5  # "wm":Landroid/view/WindowManager;
    .restart local v14  # "windowFlags":I
    :goto_300
    :try_start_300
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " already running, starting window not displayed. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2609
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31d
    .catchall {:try_start_300 .. :try_end_31d} :catchall_329

    .line 2617
    nop

    .end local v0  # "e":Landroid/view/WindowManager$BadTokenException;
    if-eqz v11, :cond_327

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_327

    .line 2618
    goto :goto_2e9

    .line 2623
    :cond_327
    :goto_327
    const/4 v1, 0x0

    return-object v1

    .line 2617
    :catchall_329
    move-exception v0

    :goto_32a
    if-eqz v11, :cond_33d

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_33d

    .line 2618
    const-string v1, "WindowManager"

    const-string/jumbo v4, "view not successfully added to wm, removing view"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    invoke-interface {v5, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_33d
    throw v0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7
    .param p1, "config"  # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"  # I
    .param p3, "navigationPresence"  # I

    .line 2387
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2389
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 2392
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1f

    if-ne p2, v1, :cond_27

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2394
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2395
    :cond_1f
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2396
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_27

    .line 2397
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2401
    :cond_27
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_35

    if-ne p3, v1, :cond_37

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2403
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2404
    :cond_35
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2406
    :cond_37
    return-void
.end method

.method public applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3679
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3680
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 3681
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_14

    .line 3683
    :cond_11
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 3686
    :cond_14
    :goto_14
    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 6
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2422
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2423
    return v1

    .line 2425
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

    .line 2433
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-ge v0, v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1

    .line 2430
    :cond_2a
    return v1
.end method

.method public canDismissBootAnimation()Z
    .registers 2

    .line 5160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    return v0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .registers 13
    .param p1, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"  # [I

    .line 2218
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2219
    .local v0, "type":I
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

    .line 2222
    .local v1, "isRoundedCornerOverlay":Z
    :goto_e
    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v5, -0x8

    if-eqz v1, :cond_1c

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1c

    .line 2224
    return v5

    .line 2227
    :cond_1c
    const/4 v6, -0x1

    aput v6, p2, v3

    .line 2229
    const/16 v6, 0xbb7

    const/16 v7, 0x7d0

    const/16 v8, 0x3e8

    if-lt v0, v2, :cond_2b

    const/16 v9, 0x63

    if-le v0, v9, :cond_37

    :cond_2b
    if-lt v0, v8, :cond_31

    const/16 v9, 0x7cf

    if-le v0, v9, :cond_37

    :cond_31
    if-lt v0, v7, :cond_d1

    if-le v0, v6, :cond_37

    goto/16 :goto_d1

    .line 2235
    :cond_37
    if-lt v0, v7, :cond_d0

    if-le v0, v6, :cond_3d

    goto/16 :goto_d0

    .line 2240
    :cond_3d
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 2241
    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_6a

    const/16 v2, 0x7db

    if-eq v0, v2, :cond_69

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_69

    const/16 v2, 0x7e7

    if-eq v0, v2, :cond_69

    const/16 v2, 0x7f3

    if-eq v0, v2, :cond_69

    const/16 v2, 0x7f5

    if-eq v0, v2, :cond_69

    packed-switch v0, :pswitch_data_d4

    .line 2261
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2260
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_67

    .line 2261
    goto :goto_68

    :cond_67
    move v3, v5

    .line 2260
    :goto_68
    return v3

    .line 2258
    :cond_69
    :pswitch_69  #0x7ee, 0x7ef, 0x7f0
    return v3

    .line 2247
    :cond_6a
    const/16 v2, 0x2d

    aput v2, p2, v3

    .line 2248
    return v3

    .line 2265
    :cond_6f
    const/16 v6, 0x18

    aput v6, p2, v3

    .line 2267
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2269
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-ne v7, v8, :cond_7e

    .line 2270
    return v3

    .line 2275
    :cond_7e
    :try_start_7e
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2278
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2275
    invoke-virtual {v7, v8, v3, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7e .. :try_end_8e} :catch_8f

    .line 2281
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_91

    .line 2279
    .end local v7  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_8f
    move-exception v7

    .line 2280
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    .line 2283
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_91
    if-eqz v7, :cond_c5

    const/16 v8, 0x7f6

    if-eq v0, v8, :cond_9e

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_9e

    goto :goto_c5

    .line 2296
    :cond_9e
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v8, p2, v3

    iget-object v9, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v6, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 2297
    .local v4, "mode":I
    if-eqz v4, :cond_c4

    if-eq v4, v2, :cond_c4

    const/4 v2, 0x2

    if-eq v4, v2, :cond_bc

    .line 2312
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ba

    .line 2313
    goto :goto_bb

    :cond_ba
    move v3, v5

    .line 2312
    :goto_bb
    return v3

    .line 2305
    :cond_bc
    iget v2, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x17

    if-ge v2, v8, :cond_c3

    .line 2306
    return v3

    .line 2308
    :cond_c3
    return v5

    .line 2302
    :cond_c4
    return v3

    .line 2290
    .end local v4  # "mode":I
    :cond_c5
    :goto_c5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ce

    .line 2291
    goto :goto_cf

    :cond_ce
    move v3, v5

    .line 2290
    :goto_cf
    return v3

    .line 2237
    .end local v6  # "callingUid":I
    .end local v7  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_d0
    :goto_d0
    return v3

    .line 2232
    :cond_d1
    :goto_d1
    const/16 v2, -0xa

    return v2

    :pswitch_data_d4
    .packed-switch 0x7ee
        :pswitch_69  #000007ee
        :pswitch_69  #000007ef
        :pswitch_69  #000007f0
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "attrs"  # Landroid/view/WindowManager$LayoutParams;

    .line 2322
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

    .line 2329
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_32

    .line 2330
    return v2

    .line 2360
    :cond_32
    :pswitch_32  #0x7d0, 0x7d1, 0x7d2, 0x7d7, 0x7d8, 0x7d9, 0x7e1, 0x7e2, 0x7e3, 0x7e4, 0x7e5, 0x7e6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

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

.method public createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "onWallpaper"  # Z
    .param p2, "goingToNotificationShade"  # Z

    .line 2664
    if-eqz p2, :cond_c

    .line 2665
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a00f3

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 2668
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_14

    .line 2669
    const v1, 0x10a00f4

    goto :goto_17

    .line 2670
    :cond_14
    const v1, 0x10a00f2

    .line 2668
    :goto_17
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 2673
    .local v0, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    .line 2674
    .local v1, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_37

    .line 2675
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2674
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 2678
    .end local v2  # "i":I
    :cond_37
    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    .line 5429
    const/4 v0, 0x0

    .line 5434
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 5435
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v1, :cond_2a

    .line 5436
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_2a

    .line 5438
    :cond_d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    goto :goto_2a

    .line 5442
    :cond_11
    const/4 v3, 0x6

    if-ne v1, v3, :cond_25

    .line 5443
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v1

    .line 5444
    .local v1, "dockMode":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_22

    const/4 v3, 0x4

    if-eq v1, v3, :cond_22

    if-ne v1, v2, :cond_24

    .line 5448
    :cond_22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 5450
    .end local v1  # "dockMode":I
    :cond_24
    goto :goto_2a

    :cond_25
    const/4 v2, 0x7

    if-ne v1, v2, :cond_24

    .line 5452
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 5456
    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 5457
    return-object v1

    .line 5460
    :cond_2e
    const/4 v2, 0x0

    .line 5461
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x10080

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 5465
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_42

    .line 5466
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5468
    :cond_42
    if-eqz v2, :cond_60

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_60

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 5470
    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 5471
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 5472
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5473
    return-object v0

    .line 5476
    :cond_60
    return-object v1
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "goingToNotificationShade"  # Z

    .line 2684
    if-eqz p1, :cond_4

    .line 2685
    const/4 v0, 0x0

    return-object v0

    .line 2687
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a00f7

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "callback"  # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"  # Ljava/lang/CharSequence;

    .line 5033
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5034
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_15

    const-string v0, "PWM.dismissKeyguardLw"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 5038
    :cond_1b
    if-eqz p1, :cond_27

    .line 5040
    :try_start_1d
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 5043
    goto :goto_27

    .line 5041
    :catch_21
    move-exception v0

    .line 5042
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5045
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 4586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4588
    nop

    .line 4589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 4588
    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4590
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_2d

    .line 4591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4595
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4596
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 4556
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1a

    .line 4557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_35

    .line 4561
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_28

    .line 4562
    const-string v0, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    :cond_28
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4567
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4570
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4572
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5b

    .line 4573
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5b

    .line 4574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4576
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4578
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4579
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4580
    .end local v1  # "msg":Landroid/os/Message;
    goto :goto_60

    .line 4581
    :cond_5b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4583
    :goto_60
    return-void
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 4599
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4600
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 4602
    :cond_12
    return-void
.end method

.method public dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 31
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 3298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_70

    .line 3299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled key: win="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", flags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", keyCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scanCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", metaState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", repeatCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", policyFlags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3299
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_70
    const/4 v3, 0x0

    .line 3309
    .local v3, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_12b

    .line 3310
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 3311
    .local v5, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 3312
    .local v6, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 3313
    .local v7, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_93

    .line 3314
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_93

    const/4 v8, 0x1

    goto :goto_94

    :cond_93
    const/4 v8, 0x0

    .line 3318
    .local v8, "initialDown":Z
    :goto_94
    if-eqz v8, :cond_9b

    .line 3319
    invoke-virtual {v5, v6, v7}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v10

    .local v10, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_a3

    .line 3321
    .end local v10  # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_9b
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyCharacterMap$FallbackAction;

    .line 3324
    .restart local v10  # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_a3
    if-eqz v10, :cond_128

    .line 3325
    sget-boolean v11, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v11, :cond_cd

    .line 3326
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback: keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " metaState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3327
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3326
    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_cd
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    or-int/lit16 v11, v11, 0x400

    .line 3331
    .local v11, "flags":I
    nop

    .line 3332
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    .line 3333
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v16

    iget v9, v10, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 3334
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    move-object/from16 v26, v3

    .end local v3  # "fallbackEvent":Landroid/view/KeyEvent;
    .local v26, "fallbackEvent":Landroid/view/KeyEvent;
    iget v3, v10, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3335
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v21

    .line 3336
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v24

    const/16 v25, 0x0

    .line 3331
    move/from16 v17, v9

    move/from16 v19, v3

    move/from16 v22, v11

    invoke-static/range {v12 .. v25}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v3

    .line 3338
    .end local v26  # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3  # "fallbackEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v9

    if-nez v9, :cond_110

    .line 3339
    invoke-virtual {v3}, Landroid/view/KeyEvent;->recycle()V

    .line 3340
    const/4 v3, 0x0

    .line 3343
    :cond_110
    if-eqz v8, :cond_118

    .line 3344
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12f

    .line 3345
    :cond_118
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_12f

    .line 3346
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 3347
    invoke-virtual {v10}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_12f

    .line 3324
    .end local v11  # "flags":I
    :cond_128
    move-object/from16 v26, v3

    .end local v3  # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v26  # "fallbackEvent":Landroid/view/KeyEvent;
    goto :goto_12d

    .line 3309
    .end local v5  # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6  # "keyCode":I
    .end local v7  # "metaState":I
    .end local v8  # "initialDown":Z
    .end local v10  # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v26  # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3  # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_12b
    move-object/from16 v26, v3

    .line 3352
    .end local v3  # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v26  # "fallbackEvent":Landroid/view/KeyEvent;
    :goto_12d
    move-object/from16 v3, v26

    .end local v26  # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3  # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_12f
    :goto_12f
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_14f

    .line 3353
    if-nez v3, :cond_13b

    .line 3354
    const-string v5, "No fallback."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    .line 3356
    :cond_13b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    :cond_14f
    :goto_14f
    return-object v3
.end method

.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 6268
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/MzPhoneWindowManager;->dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 5733
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5734
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5735
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5736
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5737
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5738
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5739
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5741
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5742
    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5743
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {v0}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5744
    const-string/jumbo v0, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5745
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5746
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5747
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5748
    const-string v0, " getLidBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5749
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5750
    const-string/jumbo v0, "mLongPressOnBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5751
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5752
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5753
    const-string/jumbo v0, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5754
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5755
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5756
    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5757
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5758
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5759
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5760
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5761
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5762
    const-string/jumbo v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5763
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5765
    const-string/jumbo v0, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5766
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5767
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5768
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5769
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5770
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5771
    const-string/jumbo v0, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5772
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5773
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5774
    const-string/jumbo v0, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5775
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5776
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5777
    const-string/jumbo v0, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5778
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5779
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5780
    const-string/jumbo v0, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5781
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5782
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5783
    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5784
    const-string v0, " mHapticTextHandleEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5785
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5786
    const-string/jumbo v0, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5787
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5788
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5790
    const-string/jumbo v0, "mIncallBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5791
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5792
    const-string v0, " mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5793
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5794
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5796
    const-string/jumbo v0, "mDisplayHomeButtonHandlers="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5797
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c1

    .line 5798
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 5799
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5797
    .end local v1  # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a7

    .line 5801
    .end local v0  # "i":I
    :cond_1c1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5802
    const-string v0, " mKeyguardOccludedChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5803
    const-string v0, " mPendingKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5804
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5805
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5806
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5807
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5808
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_239

    .line 5809
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5810
    const-string/jumbo v0, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5811
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5812
    const-string/jumbo v0, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5813
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5814
    const-string/jumbo v0, "mAccessibilityTvScheduled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5817
    :cond_239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 5819
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_245

    .line 5820
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5822
    :cond_245
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_24c

    .line 5823
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 5825
    :cond_24c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_253

    .line 5826
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 5829
    :cond_253
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5830
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5831
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 4979
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_7

    .line 4980
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 4982
    :cond_7
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .line 5358
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 5359
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 5360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 5361
    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 4987
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_7

    .line 4988
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4990
    :cond_7
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .registers 6
    .param p1, "why"  # I

    .line 4700
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 4701
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_27

    .line 4702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4703
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4702
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    :cond_27
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    const-string/jumbo v3, "screen_timeout"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4707
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 4708
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 4709
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 4713
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4714
    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 4715
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4716
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_69

    .line 4717
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 4719
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_54

    .line 4720
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 4723
    :cond_54
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_5b

    .line 4724
    invoke-virtual {v1}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    .line 4726
    :cond_5b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 4729
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getUnderglassFingerprintControllerInternal()Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 4730
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;->onFinishedGoingToSleep(I)V

    .line 4733
    :cond_68
    return-void

    .line 4716
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public finishedWakingUp(I)V
    .registers 4
    .param p1, "why"  # I

    .line 4770
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_23

    .line 4771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished waking up... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4772
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4771
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    :cond_23
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2a

    .line 4776
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 4778
    :cond_2a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_31

    .line 4779
    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    .line 4782
    :cond_31
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getUnderglassFingerprintControllerInternal()Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4783
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;->onFinishedWakingUp(I)V

    .line 4786
    :cond_3c
    return-void
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_11

    .line 896
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 898
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    .line 899
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 3402
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_9

    .line 3403
    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3405
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .line 2410
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 886
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 887
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 889
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 890
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_14

    .line 876
    const-string/jumbo v1, "statusbar"

    .line 877
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 876
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 879
    :cond_14
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    .line 880
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .registers 3

    .line 2708
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUiMode()I
    .registers 2

    .line 5403
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    return v0
.end method

.method goHome()Z
    .registers 16

    .line 5517
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 5518
    const-string v0, "Not going home because user setup is in progress."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    return v2

    .line 5528
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    const-string/jumbo v3, "persist.sys.uts-test-mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1f

    .line 5530
    const-string v3, "UTS-TEST-MODE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 5532
    :cond_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 5533
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5534
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v1

    .line 5535
    .local v1, "dock":Landroid/content/Intent;
    if-eqz v1, :cond_4e

    .line 5536
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5538
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 5537
    move-object v6, v1

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3

    .line 5542
    .local v3, "result":I
    if-ne v3, v0, :cond_4e

    .line 5543
    return v2

    .line 5547
    .end local v1  # "dock":Landroid/content/Intent;
    .end local v3  # "result":I
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5549
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

    .line 5548
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v1
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_6d} :catch_71

    .line 5553
    .local v1, "result":I
    if-ne v1, v0, :cond_70

    .line 5554
    return v2

    .line 5558
    .end local v1  # "result":I
    :cond_70
    goto :goto_72

    .line 5556
    :catch_71
    move-exception v1

    .line 5560
    :goto_72
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .line 5675
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    .line 5228
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5229
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .line 5027
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5028
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 23
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "windowManager"  # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"  # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 1867
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iput-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1868
    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1869
    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 1870
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1871
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1872
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1873
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 1874
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 1875
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1876
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1877
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1878
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 1879
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 1880
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 1881
    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 1883
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1885
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 1888
    .local v11, "burnInProtectionEnabled":Z
    nop

    .line 1889
    const/4 v12, 0x0

    const-string/jumbo v1, "persist.debug.force_burn_in"

    invoke-static {v1, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1890
    .local v13, "burnInProtectionDevMode":Z
    if-nez v11, :cond_bb

    if-eqz v13, :cond_116

    .line 1896
    :cond_bb
    if-eqz v13, :cond_d4

    .line 1897
    const/4 v1, -0x8

    .line 1898
    .local v1, "minHorizontal":I
    const/16 v2, 0x8

    .line 1899
    .local v2, "maxHorizontal":I
    const/4 v3, -0x8

    .line 1900
    .local v3, "minVertical":I
    const/4 v4, -0x4

    .line 1901
    .local v4, "maxVertical":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v5

    if-eqz v5, :cond_ca

    const/4 v5, 0x6

    goto :goto_cb

    :cond_ca
    const/4 v5, -0x1

    :goto_cb
    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    .local v5, "maxRadius":I
    goto :goto_103

    .line 1903
    .end local v1  # "minHorizontal":I
    .end local v2  # "maxHorizontal":I
    .end local v3  # "minVertical":I
    .end local v4  # "maxVertical":I
    .end local v5  # "maxRadius":I
    :cond_d4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1904
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10e0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1906
    .local v2, "minHorizontal":I
    const v3, 0x10e0022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1908
    .local v3, "maxHorizontal":I
    const v4, 0x10e0026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1910
    .local v4, "minVertical":I
    const v5, 0x10e0024

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1912
    .local v5, "maxVertical":I
    const v6, 0x10e0023

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move/from16 v18, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    .line 1915
    .end local v1  # "resources":Landroid/content/res/Resources;
    .end local v2  # "minHorizontal":I
    .end local v3  # "maxHorizontal":I
    .end local v4  # "minVertical":I
    .end local v5  # "maxVertical":I
    .local v14, "minHorizontal":I
    .local v15, "maxHorizontal":I
    .local v16, "minVertical":I
    .local v17, "maxVertical":I
    .local v18, "maxRadius":I
    :goto_103
    new-instance v7, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v1, v7

    move-object/from16 v2, p1

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move-object v12, v7

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 1919
    .end local v14  # "minHorizontal":I
    .end local v15  # "maxHorizontal":I
    .end local v16  # "minVertical":I
    .end local v17  # "maxVertical":I
    .end local v18  # "maxRadius":I
    :cond_116
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1920
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 1921
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 1922
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1923
    new-instance v1, Lcom/android/server/policy/ShortcutManager;

    invoke-direct {v1, v8}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 1924
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 1926
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1927
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1930
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x111006a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 1932
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1933
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1934
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1936
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1937
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1938
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1940
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 1941
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.VR_HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1942
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1945
    const-string/jumbo v1, "power"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1946
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v12, 0x1

    const-string v2, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v1, v12, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1948
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v1, v12, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1950
    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1951
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1953
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1955
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    .line 1958
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 1960
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v1, :cond_229

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1961
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_227

    goto :goto_229

    :cond_227
    const/4 v1, 0x0

    goto :goto_22a

    :cond_229
    :goto_229
    move v1, v12

    :goto_22a
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 1963
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 1965
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 1967
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 1969
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 1971
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 1974
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 1977
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 1980
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1983
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 1985
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1987
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 1989
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 1991
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1993
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1995
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    .line 1997
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2000
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    .line 2003
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_335

    goto :goto_336

    :cond_335
    const/4 v12, 0x0

    :goto_336
    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2005
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110087

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2008
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 2011
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2013
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    if-eqz v1, :cond_365

    .line 2014
    const/4 v1, 0x0

    invoke-static {v8, v1}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    goto :goto_375

    .line 2015
    :cond_365
    const/4 v1, 0x0

    const-string/jumbo v3, "persist.debug.force_foldable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_375

    .line 2016
    invoke-static {v8, v1}, Lcom/android/server/policy/DisplayFoldController;->createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 2020
    :cond_375
    :goto_375
    const-string v1, "accessibility"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2024
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2025
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2026
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2027
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2028
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2029
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2030
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 2031
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3b1

    .line 2033
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    .line 2038
    :cond_3b1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v4

    .line 2039
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2040
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2041
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2044
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2045
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2047
    const-string/jumbo v4, "vibrator"

    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2048
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070044

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2050
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001a

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 2052
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070057

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2055
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2058
    new-instance v4, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2061
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2064
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_434

    .line 2065
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2066
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2069
    :cond_434
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2081
    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v5, v0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v2, v4, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2104
    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {v2, v0}, Lcom/android/server/policy/MzPhoneWindowManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    .line 2106
    return-void
.end method

.method initializeHdmiState()V
    .registers 3

    .line 3777
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 3779
    .local v0, "oldMask":I
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 3781
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 3782
    nop

    .line 3783
    return-void

    .line 3781
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method initializeHdmiStateInternal()V
    .registers 12

    .line 3786
    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    .line 3787
    .local v2, "plugged":Z
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v4, "mdss_mdp/drm/card"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3789
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8d

    .line 3790
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v3, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3792
    const-string v3, "/sys/class/switch/hdmi/state"

    .line 3793
    .local v3, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3795
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_25
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 3796
    const/16 v6, 0xf

    new-array v6, v6, [C

    .line 3797
    .local v6, "buf":[C
    invoke-virtual {v5, v6}, Ljava/io/FileReader;->read([C)I

    move-result v7

    .line 3798
    .local v7, "n":I
    if-le v7, v4, :cond_47

    .line 3799
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v7, -0x1

    const/4 v10, 0x0

    invoke-direct {v8, v6, v10, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_43} :catch_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_43} :catch_50
    .catchall {:try_start_25 .. :try_end_43} :catchall_4e

    if-eqz v0, :cond_46

    move v10, v4

    :cond_46
    move v2, v10

    .line 3806
    .end local v6  # "buf":[C
    .end local v7  # "n":I
    :cond_47
    nop

    .line 3808
    :try_start_48
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 3810
    :goto_4b
    goto :goto_84

    .line 3809
    :catch_4c
    move-exception v0

    goto :goto_4b

    .line 3806
    :catchall_4e
    move-exception v0

    goto :goto_85

    .line 3803
    :catch_50
    move-exception v6

    .line 3804
    .local v6, "ex":Ljava/lang/NumberFormatException;
    :try_start_51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_4e

    .line 3806
    nop

    .end local v6  # "ex":Ljava/lang/NumberFormatException;
    if-eqz v5, :cond_84

    .line 3808
    :try_start_66
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_4c

    goto :goto_4b

    .line 3801
    :catch_6a
    move-exception v6

    .line 3802
    .local v6, "ex":Ljava/io/IOException;
    :try_start_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_6b .. :try_end_7d} :catchall_4e

    .line 3806
    nop

    .end local v6  # "ex":Ljava/io/IOException;
    if-eqz v5, :cond_84

    .line 3808
    :try_start_80
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_4c

    goto :goto_4b

    .line 3813
    .end local v3  # "filename":Ljava/lang/String;
    .end local v5  # "reader":Ljava/io/FileReader;
    :cond_84
    :goto_84
    goto :goto_a7

    .line 3806
    .restart local v3  # "filename":Ljava/lang/String;
    .restart local v5  # "reader":Ljava/io/FileReader;
    :goto_85
    if-eqz v5, :cond_8c

    .line 3808
    :try_start_87
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 3810
    goto :goto_8c

    .line 3809
    :catch_8b
    move-exception v1

    .line 3810
    :cond_8c
    :goto_8c
    throw v0

    .line 3813
    .end local v3  # "filename":Ljava/lang/String;
    .end local v5  # "reader":Ljava/io/FileReader;
    :cond_8d
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3814
    const-string v0, "hdmi"

    invoke-static {v0}, Lcom/android/server/ExtconUEventObserver;->namedExtconDirExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 3815
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 3816
    .local v0, "observer":Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->access$3900(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;)Z

    move-result v2

    .line 3817
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 3824
    .end local v0  # "observer":Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 3825
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 14
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 2733
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatchingInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    .line 2734
    .local v0, "result":J
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v2

    .line 2735
    .local v2, "eventDisplayId":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_65

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    if-nez v3, :cond_65

    const/4 v3, -0x1

    if-eq v2, v3, :cond_65

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v2, v3, :cond_65

    .line 2739
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    .line 2740
    .local v6, "eventDownTime":J
    iget-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTime:J

    cmp-long v3, v8, v6

    const-wide/16 v8, 0xa

    if-gez v3, :cond_39

    .line 2743
    iput-wide v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTime:J

    .line 2744
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    .line 2745
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    .line 2746
    invoke-virtual {v3, v4, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 2745
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2747
    return-wide v8

    .line 2748
    :cond_39
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    if-eqz v3, :cond_3e

    .line 2750
    return-wide v8

    .line 2754
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping key targeting non-focused display #"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " keyCode="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2755
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2754
    const-string v8, "WindowManager"

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    return-wide v4

    .line 2760
    .end local v6  # "eventDownTime":J
    :cond_65
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_70

    .line 2761
    return-wide v4

    .line 2765
    :cond_70
    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 26
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I

    .line 3831
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/4 v10, 0x0

    if-nez v0, :cond_c

    .line 3833
    return v10

    .line 3836
    :cond_c
    const/high16 v0, 0x20000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v10

    :goto_14
    move v11, v0

    .line 3837
    .local v11, "interactive":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    move v0, v10

    :goto_1e
    move v12, v0

    .line 3838
    .local v12, "down":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    .line 3839
    .local v13, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 3840
    .local v14, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v15

    .line 3842
    .local v15, "displayId":I
    const/high16 v0, 0x1000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    move v0, v10

    :goto_33
    move/from16 v16, v0

    .line 3848
    .local v16, "isInjected":Z
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_3b

    move v0, v10

    goto :goto_46

    .line 3849
    :cond_3b
    if-eqz v11, :cond_42

    .line 3850
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_46

    .line 3851
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_46
    move v6, v0

    .line 3853
    .local v6, "keyguardActive":Z
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v5, "WindowManager"

    if-eqz v0, :cond_7e

    .line 3854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptKeyTq keycode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " interactive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " keyguardActive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " policyFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3856
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3854
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    :cond_7e
    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_8b

    .line 3862
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_8b

    :cond_89
    move v0, v10

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 v0, 0x1

    .line 3863
    .local v0, "isWakeKey":Z
    :goto_8c
    const/4 v2, -0x1

    if-nez v11, :cond_b9

    if-eqz v16, :cond_94

    if-nez v0, :cond_94

    goto :goto_b9

    .line 3878
    :cond_94
    if-nez v11, :cond_a3

    invoke-direct {v7, v15, v14}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 3883
    const/4 v3, 0x1

    .line 3885
    .local v3, "result":I
    iput v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v17, v0

    move v0, v3

    goto :goto_cd

    .line 3889
    .end local v3  # "result":I
    :cond_a3
    const/4 v3, 0x0

    .line 3890
    .restart local v3  # "result":I
    if-eqz v0, :cond_af

    if-eqz v12, :cond_ae

    invoke-direct {v7, v14}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v2

    if-nez v2, :cond_af

    .line 3891
    :cond_ae
    const/4 v0, 0x0

    .line 3894
    :cond_af
    if-eqz v0, :cond_b5

    if-eqz v12, :cond_b5

    .line 3895
    iput v14, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 3901
    :cond_b5
    move/from16 v17, v0

    move v0, v3

    goto :goto_cd

    .line 3866
    .end local v3  # "result":I
    :cond_b9
    :goto_b9
    const/4 v3, 0x1

    .line 3867
    .restart local v3  # "result":I
    const/4 v0, 0x0

    .line 3869
    if-eqz v11, :cond_ca

    .line 3872
    iget v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v14, v4, :cond_c4

    if-nez v12, :cond_c4

    .line 3873
    const/4 v3, 0x0

    .line 3876
    :cond_c4
    iput v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v17, v0

    move v0, v3

    goto :goto_cd

    .line 3869
    :cond_ca
    move/from16 v17, v0

    move v0, v3

    .line 3901
    .end local v3  # "result":I
    .local v0, "result":I
    .local v17, "isWakeKey":Z
    :goto_cd
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v2

    if-eqz v2, :cond_f5

    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 3902
    invoke-virtual {v2, v14, v8}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 3903
    if-eqz v17, :cond_ef

    .line 3904
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v5, 0x6

    const-string v10, "android.policy:KEY"

    move-object/from16 v1, p0

    move/from16 v18, v6

    .end local v6  # "keyguardActive":Z
    .local v18, "keyguardActive":Z
    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_f1

    .line 3903
    .end local v18  # "keyguardActive":Z
    .restart local v6  # "keyguardActive":Z
    :cond_ef
    move/from16 v18, v6

    .line 3907
    .end local v6  # "keyguardActive":Z
    .restart local v18  # "keyguardActive":Z
    :goto_f1
    return v0

    .line 3902
    .end local v18  # "keyguardActive":Z
    .restart local v6  # "keyguardActive":Z
    :cond_f2
    move/from16 v18, v6

    .end local v6  # "keyguardActive":Z
    .restart local v18  # "keyguardActive":Z
    goto :goto_f7

    .line 3901
    .end local v18  # "keyguardActive":Z
    .restart local v6  # "keyguardActive":Z
    :cond_f5
    move/from16 v18, v6

    .line 3912
    .end local v6  # "keyguardActive":Z
    .restart local v18  # "keyguardActive":Z
    :goto_f7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_101

    const/4 v2, 0x1

    goto :goto_102

    :cond_101
    move v2, v10

    :goto_102
    move/from16 v19, v2

    .line 3914
    .local v19, "isNavBarVirtKey":Z
    if-nez v12, :cond_120

    and-int/lit8 v2, v9, 0x2

    if-eqz v2, :cond_120

    if-eqz v19, :cond_110

    iget-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v2, :cond_120

    .line 3917
    :cond_110
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_120

    .line 3918
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_120

    const/4 v2, 0x1

    goto :goto_121

    :cond_120
    move v2, v10

    .line 3922
    .local v2, "useHapticFeedback":Z
    :goto_121
    const/16 v6, 0x1a

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v14, v4, :cond_12b

    if-eq v14, v3, :cond_12b

    if-ne v14, v6, :cond_13c

    .line 3925
    :cond_12b
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v6

    new-instance v4, Landroid/scene/Scene;

    const v10, 0x1000009

    const-string v1, "KeyBoost"

    invoke-direct {v4, v10, v1}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 3931
    :cond_13c
    if-eq v14, v3, :cond_423

    const/4 v1, 0x5

    if-eq v14, v1, :cond_3fa

    const/4 v1, 0x6

    if-eq v14, v1, :cond_394

    const/16 v1, 0x4f

    if-eq v14, v1, :cond_34b

    const/16 v1, 0x82

    if-eq v14, v1, :cond_34b

    const/16 v1, 0xa4

    const/16 v4, 0x18

    if-eq v14, v1, :cond_24a

    const/16 v1, 0xab

    if-eq v14, v1, :cond_236

    const/16 v1, 0xdb

    if-eq v14, v1, :cond_1fa

    const/16 v1, 0xe7

    if-eq v14, v1, :cond_1de

    const/16 v1, 0x114

    if-eq v14, v1, :cond_1cf

    const/16 v1, 0x7e

    if-eq v14, v1, :cond_1a6

    const/16 v1, 0x7f

    if-eq v14, v1, :cond_1a6

    packed-switch v14, :pswitch_data_4da

    packed-switch v14, :pswitch_data_4e4

    packed-switch v14, :pswitch_data_4f6

    packed-switch v14, :pswitch_data_500

    move/from16 v21, v2

    goto/16 :goto_434

    .line 4126
    :pswitch_17a  #0x118, 0x119, 0x11a, 0x11b
    and-int/lit8 v0, v0, -0x2

    .line 4127
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    .line 4128
    move/from16 v21, v2

    goto/16 :goto_434

    .line 4155
    :pswitch_183  #0xe0
    and-int/lit8 v0, v0, -0x2

    .line 4156
    const/16 v17, 0x1

    .line 4157
    move/from16 v21, v2

    goto/16 :goto_434

    .line 4132
    :pswitch_18b  #0xdf
    and-int/lit8 v0, v0, -0x2

    .line 4133
    const/16 v17, 0x0

    .line 4134
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_198

    .line 4135
    const/4 v2, 0x0

    .line 4137
    :cond_198
    if-eqz v12, :cond_19e

    .line 4138
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_1da

    .line 4140
    :cond_19e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-direct {v7, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 4142
    goto :goto_1da

    .line 3931
    :cond_1a6
    :pswitch_1a6  #0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0xde
    move/from16 v21, v2

    goto/16 :goto_34d

    .line 4104
    :pswitch_1aa  #0x1a
    nop

    .line 4105
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4106
    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 4104
    invoke-static {v3, v4, v6}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    .line 4108
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4109
    and-int/lit8 v0, v0, -0x2

    .line 4110
    const/16 v17, 0x0

    .line 4111
    if-eqz v12, :cond_1c7

    .line 4112
    invoke-direct {v7, v8, v11}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto :goto_1da

    .line 4114
    :cond_1c7
    invoke-direct {v7, v8, v11, v13}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    .line 4116
    goto :goto_1da

    .line 3931
    :pswitch_1cb  #0x18, 0x19
    move/from16 v21, v2

    goto/16 :goto_24c

    .line 4146
    :cond_1cf
    and-int/lit8 v0, v0, -0x2

    .line 4147
    const/16 v17, 0x0

    .line 4148
    if-nez v12, :cond_1da

    .line 4149
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v3}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 4260
    :cond_1da
    :goto_1da
    move/from16 v21, v2

    goto/16 :goto_434

    .line 4232
    :cond_1de
    if-nez v12, :cond_1f4

    .line 4233
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4234
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4235
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4236
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 4238
    .end local v3  # "msg":Landroid/os/Message;
    :cond_1f4
    and-int/lit8 v0, v0, -0x2

    .line 4239
    move/from16 v21, v2

    goto/16 :goto_434

    .line 4216
    :cond_1fa
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_202

    const/4 v3, 0x1

    goto :goto_203

    :cond_202
    const/4 v3, 0x0

    .line 4217
    .local v3, "longPressed":Z
    :goto_203
    if-eqz v12, :cond_214

    if-eqz v3, :cond_214

    .line 4218
    iget-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4219
    .local v4, "msg":Landroid/os/Message;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4220
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4222
    .end local v4  # "msg":Landroid/os/Message;
    :cond_214
    if-nez v12, :cond_230

    if-nez v3, :cond_230

    .line 4223
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    const/4 v1, 0x0

    move/from16 v21, v2

    const/4 v2, 0x0

    .end local v2  # "useHapticFeedback":Z
    .local v21, "useHapticFeedback":Z
    invoke-virtual {v4, v6, v10, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4225
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4226
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_232

    .line 4222
    .end local v1  # "msg":Landroid/os/Message;
    .end local v21  # "useHapticFeedback":Z
    .restart local v2  # "useHapticFeedback":Z
    :cond_230
    move/from16 v21, v2

    .line 4228
    .end local v2  # "useHapticFeedback":Z
    .restart local v21  # "useHapticFeedback":Z
    :goto_232
    and-int/lit8 v0, v0, -0x2

    .line 4229
    goto/16 :goto_434

    .line 4242
    .end local v3  # "longPressed":Z
    .end local v21  # "useHapticFeedback":Z
    .restart local v2  # "useHapticFeedback":Z
    :cond_236
    move/from16 v21, v2

    .end local v2  # "useHapticFeedback":Z
    .restart local v21  # "useHapticFeedback":Z
    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_434

    .line 4243
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v1, :cond_434

    .line 4247
    if-nez v12, :cond_246

    .line 4248
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    .line 4250
    :cond_246
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_434

    .line 3931
    .end local v21  # "useHapticFeedback":Z
    .restart local v2  # "useHapticFeedback":Z
    :cond_24a
    move/from16 v21, v2

    .line 3949
    .end local v2  # "useHapticFeedback":Z
    .restart local v21  # "useHapticFeedback":Z
    :goto_24c
    const/16 v1, 0x19

    if-ne v14, v1, :cond_289

    .line 3950
    if-eqz v12, :cond_279

    .line 3952
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 3953
    if-eqz v11, :cond_2d4

    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v1, :cond_2d4

    .line 3954
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2d4

    .line 3955
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 3956
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 3957
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3958
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 3961
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->mzInterceptScreenshotChord()V

    .line 3963
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    goto :goto_2d4

    .line 3968
    :cond_279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingLongScreenshotAction()V

    .line 3969
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->mzScreenshotShortPicture()V

    .line 3971
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 3972
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 3973
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_2d4

    .line 3976
    :cond_289
    if-ne v14, v4, :cond_2d4

    .line 3977
    if-eqz v12, :cond_2c0

    .line 3978
    if-eqz v11, :cond_2d4

    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v1, :cond_297

    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-nez v1, :cond_2d4

    .line 3979
    :cond_297
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2d4

    .line 3980
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 3981
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    .line 3982
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3983
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 3985
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->mzInterceptVolumeUpKeyBeforeQueueing(Landroid/view/KeyEvent;)V

    .line 3987
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 3988
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 3989
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 3991
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    .line 3992
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_2d4

    .line 3995
    :cond_2c0
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 3997
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingLongScreenshotAction()V

    .line 3998
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->mzScreenshotShortPicture()V

    .line 3999
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 4001
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4002
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4003
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4007
    :cond_2d4
    :goto_2d4
    const/4 v1, 0x1

    .line 4009
    .end local v0  # "result":I
    .local v1, "result":I
    const/high16 v2, -0x80000000

    if-eqz v12, :cond_32d

    .line 4010
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4012
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 4013
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_2fd

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_2fd

    .line 4016
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2fd

    .line 4023
    const-string/jumbo v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 4032
    and-int/lit8 v0, v1, -0x2

    .line 4033
    .end local v1  # "result":I
    .restart local v0  # "result":I
    goto/16 :goto_434

    .line 4036
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_2fd
    const/4 v4, 0x0

    .line 4038
    .local v4, "audioMode":I
    :try_start_2fe
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_306} :catch_308

    move v4, v0

    .line 4041
    goto :goto_30e

    .line 4039
    :catch_308
    move-exception v0

    .line 4040
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4042
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_30e
    if-eqz v3, :cond_316

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_319

    :cond_316
    const/4 v6, 0x3

    if-ne v4, v6, :cond_31b

    :cond_319
    const/4 v0, 0x1

    goto :goto_31c

    :cond_31b
    const/4 v0, 0x0

    .line 4044
    .local v0, "isInCall":Z
    :goto_31c
    if-eqz v0, :cond_32d

    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_32d

    .line 4047
    iget-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v2, v10}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 4049
    goto :goto_344

    .line 4052
    .end local v0  # "isInCall":Z
    .end local v3  # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v4  # "audioMode":I
    :cond_32d
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_347

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_336

    goto :goto_347

    .line 4056
    :cond_336
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_344

    .line 4060
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 4260
    :cond_344
    :goto_344
    move v0, v1

    goto/16 :goto_434

    .line 4055
    :cond_347
    :goto_347
    or-int/lit8 v0, v1, 0x1

    .end local v1  # "result":I
    .local v0, "result":I
    goto/16 :goto_434

    .line 3931
    .end local v21  # "useHapticFeedback":Z
    .restart local v2  # "useHapticFeedback":Z
    :cond_34b
    move/from16 v21, v2

    .line 4172
    .end local v2  # "useHapticFeedback":Z
    .restart local v21  # "useHapticFeedback":Z
    :goto_34d
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v1

    if-eqz v1, :cond_35b

    .line 4175
    and-int/lit8 v0, v0, -0x2

    .line 4177
    :cond_35b
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_378

    .line 4183
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4184
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4186
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4187
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_379

    .line 4177
    .end local v1  # "msg":Landroid/os/Message;
    :cond_378
    const/4 v4, 0x3

    .line 4191
    :goto_379
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v1, v14}, Lcom/android/server/policy/MzPhoneWindowManager;->isHeadSetMiddleKey(I)Z

    move-result v1

    if-eqz v1, :cond_434

    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->isHeadSetMiddleKeyLongPressEnabled()Z

    move-result v1

    if-eqz v1, :cond_434

    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_434

    .line 4192
    const/4 v0, 0x1

    goto/16 :goto_434

    .line 4067
    .end local v21  # "useHapticFeedback":Z
    .restart local v2  # "useHapticFeedback":Z
    :cond_394
    move/from16 v21, v2

    const/4 v4, 0x3

    .end local v2  # "useHapticFeedback":Z
    .restart local v21  # "useHapticFeedback":Z
    and-int/lit8 v0, v0, -0x2

    .line 4068
    if-eqz v12, :cond_3c7

    .line 4069
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 4070
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 4071
    .local v2, "hungUp":Z
    if-eqz v1, :cond_3a6

    .line 4072
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    .line 4074
    :cond_3a6
    if-eqz v11, :cond_3c1

    if-nez v2, :cond_3c1

    .line 4075
    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4076
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v10, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4077
    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    move-object/from16 v20, v5

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v4

    .line 4076
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c6

    .line 4074
    :cond_3c1
    move-object/from16 v20, v5

    .line 4079
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4081
    .end local v1  # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v2  # "hungUp":Z
    :goto_3c6
    goto :goto_3f7

    .line 4082
    :cond_3c7
    move-object/from16 v20, v5

    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v1, :cond_3f7

    .line 4083
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4084
    if-nez v13, :cond_3f7

    .line 4085
    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3e3

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v1

    if-eqz v1, :cond_3e3

    .line 4088
    goto :goto_3f7

    .line 4091
    :cond_3e3
    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3f7

    .line 4093
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 4095
    const/16 v17, 0x0

    move-object/from16 v5, v20

    goto :goto_434

    .line 4260
    :cond_3f7
    :goto_3f7
    move-object/from16 v5, v20

    goto :goto_434

    .line 4199
    .end local v21  # "useHapticFeedback":Z
    .local v2, "useHapticFeedback":Z
    :cond_3fa
    move/from16 v21, v2

    move-object/from16 v20, v5

    .end local v2  # "useHapticFeedback":Z
    .restart local v21  # "useHapticFeedback":Z
    if-eqz v12, :cond_420

    .line 4200
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 4201
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_41d

    .line 4202
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_41a

    .line 4203
    const-string/jumbo v3, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    move-object/from16 v5, v20

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 4209
    and-int/lit8 v0, v0, -0x2

    goto :goto_41f

    .line 4202
    :cond_41a
    move-object/from16 v5, v20

    goto :goto_41f

    .line 4201
    :cond_41d
    move-object/from16 v5, v20

    .line 4212
    .end local v2  # "telecomManager":Landroid/telecom/TelecomManager;
    :goto_41f
    goto :goto_434

    .line 4199
    :cond_420
    move-object/from16 v5, v20

    goto :goto_434

    .line 3933
    .end local v21  # "useHapticFeedback":Z
    .local v2, "useHapticFeedback":Z
    :cond_423
    move/from16 v21, v2

    .end local v2  # "useHapticFeedback":Z
    .restart local v21  # "useHapticFeedback":Z
    if-eqz v12, :cond_42b

    .line 3934
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    goto :goto_434

    .line 3936
    :cond_42b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 3939
    .local v2, "handled":Z
    if-eqz v2, :cond_433

    .line 3940
    and-int/lit8 v0, v0, -0x2

    .line 3943
    .end local v2  # "handled":Z
    :cond_433
    nop

    .line 4260
    :cond_434
    :goto_434
    iget-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v2, :cond_448

    .line 4261
    const/4 v1, 0x4

    if-eq v14, v1, :cond_440

    const/16 v1, 0x14

    if-eq v14, v1, :cond_440

    goto :goto_448

    .line 4264
    :cond_440
    invoke-direct {v7, v14, v12}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv(IZ)Z

    move-result v1

    .line 4265
    .local v1, "handled":Z
    if-eqz v1, :cond_448

    .line 4266
    and-int/lit8 v0, v0, -0x2

    .line 4274
    .end local v1  # "handled":Z
    :cond_448
    :goto_448
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_474

    .line 4275
    const/16 v1, 0x36

    if-eq v14, v1, :cond_459

    goto :goto_474

    .line 4277
    :cond_459
    if-eqz v12, :cond_474

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_474

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_474

    .line 4278
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4279
    and-int/lit8 v0, v0, -0x2

    .line 4286
    :cond_474
    :goto_474
    if-eqz v21, :cond_47d

    .line 4288
    const/4 v1, 0x1

    .line 4290
    .local v1, "effetctId":I
    const-string v2, "Virtual Key - Press"

    const/4 v3, 0x0

    invoke-direct {v7, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 4297
    .end local v1  # "effetctId":I
    :cond_47d
    if-eqz v17, :cond_495

    .line 4298
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v6, 0x6

    const-string v10, "android.policy:KEY"

    move-object/from16 v1, p0

    move/from16 v20, v13

    const/4 v13, 0x3

    .end local v13  # "canceled":Z
    .local v20, "canceled":Z
    move-object/from16 v22, v5

    move v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_49a

    .line 4297
    .end local v20  # "canceled":Z
    .restart local v13  # "canceled":Z
    :cond_495
    move-object/from16 v22, v5

    move/from16 v20, v13

    const/4 v13, 0x3

    .line 4303
    .end local v13  # "canceled":Z
    .restart local v20  # "canceled":Z
    :goto_49a
    if-eqz v12, :cond_4ac

    if-ne v14, v13, :cond_4ac

    .line 4304
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 4305
    .local v1, "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    if-eqz v1, :cond_4ac

    .line 4306
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->setmHomeConsumed(Z)V

    .line 4312
    .end local v1  # "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    :cond_4ac
    if-nez v12, :cond_4ce

    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v1

    if-eqz v1, :cond_4ce

    .line 4313
    const/16 v1, 0x1a

    if-ne v14, v1, :cond_4ce

    .line 4314
    if-nez v17, :cond_4ce

    .line 4315
    const-string v1, "Proximity positive, wake up for power up."

    move-object/from16 v2, v22

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.policy:POWER"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 4324
    :cond_4ce
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v1, v8, v9, v11}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)Z

    move-result v1

    if-eqz v1, :cond_4d8

    .line 4325
    const/4 v1, 0x0

    return v1

    .line 4328
    :cond_4d8
    return v0

    nop

    :pswitch_data_4da
    .packed-switch 0x18
        :pswitch_1cb  #00000018
        :pswitch_1cb  #00000019
        :pswitch_1aa  #0000001a
    .end packed-switch

    :pswitch_data_4e4
    .packed-switch 0x55
        :pswitch_1a6  #00000055
        :pswitch_1a6  #00000056
        :pswitch_1a6  #00000057
        :pswitch_1a6  #00000058
        :pswitch_1a6  #00000059
        :pswitch_1a6  #0000005a
        :pswitch_1a6  #0000005b
    .end packed-switch

    :pswitch_data_4f6
    .packed-switch 0xde
        :pswitch_1a6  #000000de
        :pswitch_18b  #000000df
        :pswitch_183  #000000e0
    .end packed-switch

    :pswitch_data_500
    .packed-switch 0x118
        :pswitch_17a  #00000118
        :pswitch_17a  #00000119
        :pswitch_17a  #0000011a
        :pswitch_17a  #0000011b
    .end packed-switch
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 6263
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 15
    .param p1, "displayId"  # I
    .param p2, "whenNanos"  # J
    .param p4, "policyFlags"  # I

    .line 4424
    and-int/lit8 v0, p4, 0x1

    const-wide/32 v1, 0xf4240

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    .line 4425
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4427
    return v3

    .line 4431
    :cond_17
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4432
    const/4 v0, 0x1

    return v0

    .line 4438
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    .line 4439
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4443
    :cond_34
    return v3
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .line 1572
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1573
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1572
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

    .line 5049
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5050
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    .line 5051
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p1, "attrs"  # Landroid/view/WindowManager$LayoutParams;

    .line 2415
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 5007
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .registers 2

    .line 5020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5021
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 5013
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5014
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 3

    .line 4994
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4995
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

.method public isKeyguardShowingOrOccluded()Z
    .registers 2

    .line 6242
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isKeyguardTrustedLw()Z
    .registers 2

    .line 5000
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5001
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .registers 2

    .line 4968
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .registers 4
    .param p1, "windowType"  # I

    .line 5705
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_10

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_10

    .line 5707
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 5709
    :cond_10
    return v0
.end method

.method public isUserSetupComplete()Z
    .registers 5

    .line 1578
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

    :cond_12
    move v0, v1

    .line 1580
    .local v0, "isSetupComplete":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_1c

    .line 1581
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1583
    :cond_1c
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    .line 5662
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 5

    .line 5666
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5667
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5669
    :cond_10
    return-void
.end method

.method keyguardOn()Z
    .registers 2

    .line 2721
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
    .param p1, "displayId"  # I

    .line 3611
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 3613
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectPressHomeKey(Landroid/content/Context;)V

    .line 3615
    return-void
.end method

.method launchHomeFromHotKey(IZZ)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "awakenFromDreams"  # Z
    .param p3, "respectKeyguard"  # Z

    .line 3623
    if-eqz p3, :cond_20

    .line 3624
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3626
    return-void

    .line 3629
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3632
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3640
    return-void

    .line 3645
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    .line 3647
    :try_start_25
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_2e

    .line 3648
    :catch_2d
    move-exception v0

    :goto_2e
    nop

    .line 3651
    if-eqz p2, :cond_34

    .line 3652
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 3654
    :cond_34
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_3c

    .line 3657
    :cond_39
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    .line 3659
    :goto_3c
    return-void
.end method

.method launchVoiceAssistWithWakeLock()V
    .registers 5

    .line 4605
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4608
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "voiceIntent":Landroid/content/Intent;
    goto :goto_36

    .line 4611
    .end local v0  # "voiceIntent":Landroid/content/Intent;
    :cond_13
    nop

    .line 4612
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4611
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 4613
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_28

    .line 4615
    :try_start_20
    const-string/jumbo v1, "voice-search"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    .line 4617
    goto :goto_28

    .line 4616
    :catch_27
    move-exception v1

    .line 4619
    :cond_28
    :goto_28
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4620
    .local v1, "voiceIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    const-string v3, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    .line 4622
    .end local v1  # "voiceIntent":Landroid/content/Intent;
    .local v0, "voiceIntent":Landroid/content/Intent;
    :goto_36
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4623
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4624
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"  # Landroid/os/Bundle;

    .line 5291
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5292
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5293
    if-eqz p1, :cond_16

    .line 5296
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 5298
    :cond_16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5299
    return-void
.end method

.method public mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 5
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 6248
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_37

    .line 6249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interceptMotionBeforeQueueing ..........:   Y:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  X:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6249
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    :cond_37
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-nez v0, :cond_3d

    .line 6255
    const/4 v0, 0x0

    return v0

    .line 6258
    :cond_3d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method mzShowGlobalActionsInternal(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 1564
    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->getInstance(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/MzGlobalActions;->showGlobalActionsDialog()V

    .line 1566
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectPowerLongPress(Landroid/content/Context;)V

    .line 1568
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 15
    .param p1, "whenNanos"  # J
    .param p3, "lensCovered"  # Z

    .line 3755
    move v0, p3

    .line 3756
    .local v0, "lensCoverState":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v1, v0, :cond_6

    .line 3757
    return-void

    .line 3759
    :cond_6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    if-nez v0, :cond_3a

    .line 3762
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    .line 3763
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    :goto_15
    nop

    .line 3764
    .local v1, "keyguardActive":Z
    if-eqz v1, :cond_20

    .line 3765
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    goto :goto_27

    .line 3767
    .end local v2  # "intent":Landroid/content/Intent;
    :cond_20
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3769
    .restart local v2  # "intent":Landroid/content/Intent;
    :goto_27
    const-wide/32 v3, 0xf4240

    div-long v6, p1, v3

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const/4 v9, 0x5

    const-string v10, "android.policy:CAMERA_COVER"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 3771
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3773
    .end local v1  # "keyguardActive":Z
    .end local v2  # "intent":Landroid/content/Intent;
    :cond_3a
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 3774
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 12
    .param p1, "whenNanos"  # J
    .param p3, "lidOpen"  # Z

    .line 3736
    move v0, p3

    .line 3737
    .local v0, "newLidState":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 3738
    return-void

    .line 3741
    :cond_a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 3742
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 3743
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 3745
    if-eqz p3, :cond_27

    .line 3746
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/16 v6, 0x9

    const-string v7, "android.policy:LID"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_37

    .line 3748
    :cond_27
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v2

    if-eq v2, v1, :cond_37

    .line 3749
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 3751
    :cond_37
    :goto_37
    return-void
.end method

.method public okToAnimate()Z
    .registers 2

    .line 4973
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
    .registers 4
    .param p1, "newFocus"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3410
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_10

    .line 3411
    nop

    .line 3412
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 3411
    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    .line 3414
    :cond_10
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .registers 3
    .param p1, "occluded"  # Z

    .line 3431
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3432
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 3433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    goto :goto_14

    .line 3435
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 3437
    :goto_14
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 1

    .line 5095
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5096
    return-void
.end method

.method public performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
    .registers 16
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "effectId"  # I
    .param p4, "always"  # Z
    .param p5, "reason"  # Ljava/lang/String;

    .line 5576
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 5577
    return v1

    .line 5579
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

    .line 5581
    .local v0, "hapticsDisabled":Z
    :goto_1d
    if-eqz v0, :cond_22

    if-nez p4, :cond_22

    .line 5582
    return v1

    .line 5585
    :cond_22
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 5586
    .local v9, "effect":Landroid/os/VibrationEffect;
    if-nez v9, :cond_29

    .line 5587
    return v1

    .line 5590
    :cond_29
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move v4, p1

    move-object v5, p2

    move-object v6, v9

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 5591
    return v2
.end method

.method readLidState()V
    .registers 3

    .line 2364
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 2365
    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/IDisplayFoldListener;

    .line 3381
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_7

    .line 3382
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3384
    :cond_7
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 8
    .param p1, "shortcutCode"  # J
    .param p3, "shortcutService"  # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3419
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3420
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IShortcutService;

    .line 3421
    .local v1, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v1, :cond_20

    invoke-interface {v1}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_20

    .line 3422
    :cond_18
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Key already exists."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/policy/PhoneWindowManager;
    .end local p1  # "shortcutCode":J
    .end local p3  # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    throw v2

    .line 3425
    .restart local p0  # "this":Lcom/android/server/policy/PhoneWindowManager;
    .restart local p1  # "shortcutCode":J
    .restart local p3  # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3426
    .end local v1  # "service":Lcom/android/internal/policy/IShortcutService;
    monitor-exit v0

    .line 3427
    return-void

    .line 3426
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6047
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/MzPhoneWindowManager;->registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V

    .line 6048
    return-void
.end method

.method public requestUserActivityNotification()V
    .registers 3

    .line 5233
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 5234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 5236
    :cond_11
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 4832
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    :cond_b
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onScreenTurningState(I)V

    .line 4834
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 4835
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 4836
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4837
    :try_start_22
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2b

    .line 4838
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    .line 4840
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_36

    .line 4841
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 4842
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 4843
    return-void

    .line 4840
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .line 4877
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onScreenTurningState(I)V

    .line 4878
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4879
    :try_start_f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_18

    .line 4880
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 4882
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1e

    .line 4883
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 4884
    return-void

    .line 4882
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4
    .param p1, "screenOffListener"  # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 4888
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onScreenTurningState(I)V

    .line 4889
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 4890
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4891
    :try_start_14
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1d

    .line 4892
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    .line 4894
    :cond_1d
    monitor-exit v0

    .line 4895
    return-void

    .line 4894
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 7
    .param p1, "screenOnListener"  # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 4855
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    :cond_b
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onScreenTurningState(I)V

    .line 4857
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 4858
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 4860
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4861
    :try_start_22
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 4862
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4863
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 4864
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v3

    .line 4863
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4865
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_57

    .line 4867
    :cond_45
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_51

    const-string v1, "WindowManager"

    const-string/jumbo v2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    :cond_51
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4871
    :goto_57
    monitor-exit v0

    .line 4872
    return-void

    .line 4871
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_22 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .line 5063
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5064
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 5067
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5068
    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "allow"  # Z

    .line 5304
    if-eqz p2, :cond_c

    .line 5305
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 5307
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5309
    :goto_15
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5310
    return-void
.end method

.method public setAodShowing(Z)Z
    .registers 3
    .param p1, "aodShowing"  # Z

    .line 6001
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-eq v0, p1, :cond_8

    .line 6002
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    .line 6003
    const/4 v0, 0x1

    return v0

    .line 6005
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentUserLw(I)V
    .registers 3
    .param p1, "newUserId"  # I

    .line 5685
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 5686
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 5687
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 5689
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_10

    .line 5690
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 5692
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 5693
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_19

    .line 5694
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 5696
    :cond_19
    return-void
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 3
    .param p1, "displayContentInfo"  # Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;

    .line 1858
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 1859
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1860
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1861
    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2
    .param p1, "newValue"  # Z

    .line 5680
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 5681
    return-void
.end method

.method public setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3691
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3692
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 3693
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 3673
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 3674
    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "area"  # Landroid/graphics/Rect;

    .line 3395
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_7

    .line 3396
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 3398
    :cond_7
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 3668
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 3669
    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 3663
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 3664
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 5
    .param p1, "safeMode"  # Z

    .line 5072
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 5073
    if-eqz p1, :cond_c

    .line 5074
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const-string v2, "Safe Mode Enabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 5077
    :cond_c
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 3
    .param p1, "switching"  # Z

    .line 5700
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    .line 5701
    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 3376
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 3377
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "msg"  # Ljava/lang/CharSequence;
    .param p2, "always"  # Z

    .line 5168
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5223
    return-void
.end method

.method public showGlobalActions()V
    .registers 3

    .line 1542
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1543
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1544
    return-void
.end method

.method showGlobalActionsInternal()V
    .registers 6

    .line 1547
    const-string v0, "globalactions"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1553
    .local v0, "keyguardShowing":Z
    invoke-virtual {p0, p0}, Lcom/android/server/policy/PhoneWindowManager;->mzShowGlobalActionsInternal(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1556
    if-eqz v0, :cond_1a

    .line 1559
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1561
    :cond_1a
    return-void
.end method

.method public showRecentApps()V
    .registers 3

    .line 3576
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3577
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3578
    return-void
.end method

.method startDockOrHome(IZZ)V
    .registers 12
    .param p1, "displayId"  # I
    .param p2, "fromHomeKey"  # Z
    .param p3, "awakenFromDreams"  # Z

    .line 5481
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    .line 5482
    :catch_8
    move-exception v0

    :goto_9
    nop

    .line 5483
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5485
    if-eqz p3, :cond_14

    .line 5486
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 5489
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_22

    .line 5490
    const-string v0, "WindowManager"

    const-string v1, "Not going home because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    return-void

    .line 5495
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5496
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_36

    .line 5498
    if-eqz p2, :cond_2f

    .line 5499
    :try_start_2a
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5501
    :cond_2f
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_34} :catch_35

    .line 5502
    return-void

    .line 5503
    :catch_35
    move-exception v1

    .line 5508
    :cond_36
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v6, 0x1

    const-string/jumbo v4, "startDockOrHome"

    move v5, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    .line 5510
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 7
    .param p1, "startTime"  # J
    .param p3, "fadeoutDuration"  # J

    .line 5056
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_14

    .line 5057
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 5060
    :cond_14
    return-void
.end method

.method public startScreenshot(I)V
    .registers 4
    .param p1, "gestureType"  # I

    .line 6058
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->reset()V

    .line 6059
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->setScreenshotTriggeredGestureType(I)V

    .line 6060
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeScreenshotChordRunnalbe:Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6061
    return-void
.end method

.method public startedGoingToSleep(I)V
    .registers 4
    .param p1, "why"  # I

    .line 4678
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_23

    .line 4679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started going to sleep... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4680
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4679
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 4684
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 4686
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2f

    .line 4687
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 4691
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getUnderglassFingerprintControllerInternal()Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 4692
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;->onStartedGoingToSleep(I)V

    .line 4695
    :cond_3a
    return-void
.end method

.method public startedWakingUp(I)V
    .registers 5
    .param p1, "why"  # I

    .line 4738
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 4739
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_27

    .line 4740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started waking up... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4741
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4740
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    :cond_27
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 4750
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4751
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 4752
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4753
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_4e

    .line 4754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 4756
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_42

    .line 4757
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 4761
    :cond_42
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getUnderglassFingerprintControllerInternal()Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4762
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;->onStartedWakingUp(I)V

    .line 4765
    :cond_4d
    return-void

    .line 4753
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public systemBooted()V
    .registers 3

    .line 5142
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5143
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5144
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 5145
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_12

    .line 5146
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5148
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_27

    .line 5149
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(I)V

    .line 5150
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(I)V

    .line 5151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5152
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 5154
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->systemBooted()V

    .line 5156
    return-void

    .line 5148
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public systemReady()V
    .registers 4

    .line 5103
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 5105
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 5106
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_1a

    .line 5107
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 5110
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 5111
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 5112
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5113
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5114
    const/4 v1, 0x1

    :try_start_29
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 5115
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5123
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_3e

    .line 5124
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5126
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_5a

    .line 5128
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 5130
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->systemReady()V

    .line 5133
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getUnderglassFingerprintControllerInternal()Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 5134
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnderglassFingerprintControllerInternal:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;

    invoke-virtual {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintControllerInternal;->systemReady()V

    .line 5137
    :cond_59
    return-void

    .line 5126
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/view/IDisplayFoldListener;

    .line 3388
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_7

    .line 3389
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3391
    :cond_7
    return-void
.end method

.method public unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;

    .line 6052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/MzPhoneWindowManager;->unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V

    .line 6053
    return-void
.end method

.method updateRotation(Z)V
    .registers 4
    .param p1, "alwaysSendConfiguration"  # Z

    .line 5409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 5412
    goto :goto_8

    .line 5410
    :catch_7
    move-exception v0

    .line 5413
    :goto_8
    return-void
.end method

.method public updateSettings()V
    .registers 11

    .line 2137
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2138
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 2139
    .local v1, "updateRotation":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2140
    :try_start_a
    const-string v3, "end_button_behavior"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2144
    const-string/jumbo v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2148
    const-string/jumbo v3, "incall_back_button_behavior"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 2152
    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_33

    move v3, v4

    goto :goto_34

    :cond_33
    move v3, v6

    :goto_34
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 2155
    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2158
    const-string/jumbo v3, "power_button_suppression_delay_after_gesture_wake"

    const/16 v7, 0x320

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 2161
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11100f7

    .line 2162
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2163
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2167
    :cond_5b
    const-string/jumbo v3, "wake_gesture_enabled"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_66

    move v3, v4

    goto :goto_67

    :cond_66
    move v3, v6

    .line 2170
    .local v3, "wakeGestureEnabledSetting":Z
    :goto_67
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v7, v3, :cond_70

    .line 2171
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2172
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2176
    :cond_70
    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v0, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2178
    const-string v7, "default_input_method"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2180
    .local v5, "imId":Ljava/lang/String;
    if-eqz v5, :cond_88

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_88

    move v6, v4

    .line 2181
    .local v6, "hasSoftInput":Z
    :cond_88
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v7, v6, :cond_8f

    .line 2182
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 2183
    const/4 v1, 0x1

    .line 2186
    :cond_8f
    const-string/jumbo v7, "power_button_long_press"

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2188
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0069

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2186
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2190
    const-string/jumbo v7, "power_button_very_long_press"

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2192
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e00ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2190
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2194
    .end local v3  # "wakeGestureEnabledSetting":Z
    .end local v5  # "imId":Ljava/lang/String;
    .end local v6  # "hasSoftInput":Z
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_a .. :try_end_bc} :catchall_c2

    .line 2195
    if-eqz v1, :cond_c1

    .line 2196
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 2198
    :cond_c1
    return-void

    .line 2194
    :catchall_c2
    move-exception v3

    :try_start_c3
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v3
.end method

.method updateUiMode()V
    .registers 2

    .line 5391
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_12

    .line 5392
    nop

    .line 5393
    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5392
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 5396
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 5398
    goto :goto_1c

    .line 5397
    :catch_1b
    move-exception v0

    .line 5399
    :goto_1c
    return-void
.end method

.method public userActivity()V
    .registers 6

    .line 5252
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5253
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 5255
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5256
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5258
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_32

    .line 5260
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-eqz v0, :cond_31

    .line 5261
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 5265
    :cond_31
    return-void

    .line 5258
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 5714
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5715
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5716
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5717
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5718
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v2

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5719
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5720
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 5721
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v2

    .line 5720
    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5722
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const-wide v3, 0x1080000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5723
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-wide v3, 0x1080000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5724
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const-wide v3, 0x1080000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5725
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_82

    .line 5726
    const-wide v3, 0x10b00000014L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5728
    :cond_82
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5729
    return-void
.end method
