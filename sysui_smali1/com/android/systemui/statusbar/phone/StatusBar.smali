.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/phone/ShadeController;
.implements Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;,
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/StatusBar$H;
    }
.end annotation


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field protected static final APP_OPS:[I

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field public static final ONLY_CORE_APPS:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAODPresenter:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

.field private final mAbsPos:[I

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field mAllowNotificationLongPress:Z
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "allow_notif_longpress"
    .end annotation
.end field

.field private mAmbientIndicationContainer:Landroid/view/View;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field protected mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private final mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field protected mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field protected mBouncerShowing:Z

.field private mBouncerWasShowingWhenHidden:Z

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessMirrorVisible:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;

.field private mCameraLaunchGestureVibePattern:[J

.field private mCameraViewAttached:Z

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mCurSlideFracOnKeyguard:F

.field private mCurrentConfiguration:Landroid/content/res/Configuration;

.field private final mCurrentDisplaySize:Landroid/graphics/Point;

.field private mCurrentFrank:F

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private final mDemoReceiver:Landroid/content/BroadcastReceiver;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled1:I

.field private mDisabled2:I

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayId:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mDozing:Z

.field private mDozingRequested:Z

.field private mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandedVisible:Z

.field private mExpandedVisibleChange:Z

.field private mFaceAnimationView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

.field protected mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFilterNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field protected mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field protected mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

.field private mGradientBottomMaskView:Lcom/android/systemui/GradientMaskView;

.field protected mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field protected final mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHideIconsForBouncer:Z

.field protected mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInteractingWindows:I

.field private mIsGesture:Z

.field protected mIsKeyguard:Z

.field private mIsOccluded:Z

.field private mIsTopWindowIsFullscreen:Z

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field protected mKeyguardLiftController:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mKeyguardLunarView:Landroid/widget/TextView;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKeyguardMusicBtn:Landroid/widget/LinearLayout;

.field private mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

.field private mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

.field mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field protected mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLastCameraLaunchSource:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenStackBounds:Landroid/graphics/Rect;

.field private mLastHasNotification:Z

.field private mLastLoggedStateFingerprint:I

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraWhenFinishedWaking:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLiveWallpaperBackground:Landroid/widget/ImageView;

.field protected mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field protected mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private mLunarEnable:Z

.field private mLunarObserver:Landroid/database/ContentObserver;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMusicBGCover:Landroid/widget/ImageView;

.field private mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

.field private mNaturalBarHeight:I

.field protected mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoAnimationOnNextBarModeChange:Z

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private final mNotificationAlertingManager:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

.field private mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private mNotificationFilterListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

.field private mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

.field protected mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private mNotificationListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

.field protected mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field protected mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field protected mPanelExpanded:Z

.field private mPendingRemoteInputView:Landroid/view/View;

.field private final mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

.field mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPulsing:Z

.field private mQS:Lcom/android/systemui/plugins/qs/QS;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQueueLock:Ljava/lang/Object;

.field private mRealStatusBarMode:I

.field protected mRecents:Lcom/android/systemui/recents/Recents;

.field protected mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mReportRejectedTouch:Landroid/view/View;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field protected mScreenOnFromKeyguard:Z

.field private mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field protected mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

.field private mSpaceController:Lmeizu/space/MSpaceController;

.field protected mStackScroller:Landroid/view/ViewGroup;

.field final mStartTracing:Ljava/lang/Runnable;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMode:I

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarStateLog:Landroid/metrics/LogMaker;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field protected mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mStatusBarWindowHidden:Z

.field private mStatusBarWindowState:I

.field final mStopTracing:Ljava/lang/Runnable;

.field private mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

.field private mSystemUiVisibility:I

.field private mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

.field private mTicker:Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

.field private final mTmpInt2:[I

.field private mTopHidesStatusBar:Z

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateTicker:Z

.field protected mUserSetup:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mVibrateOnOpening:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field protected mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field private mWakeUpComingFromTouch:Z

.field mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWereIconsJustHidden:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private openQsByGesture:Z

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "debug.child_notifs"

    const/4 v1, 0x1

    .line 320
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 370
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 371
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 372
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    :try_start_1f
    const-string v0, "package"

    .line 390
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    const/4 v0, 0x0

    .line 395
    :goto_2f
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 701
    fill-array-data v0, :array_42

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->APP_OPS:[I

    .line 5942
    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 5943
    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    return-void

    :array_42
    .array-data 4
        0x1a
        0x18
        0x1b
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, -0x1

    .line 416
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 418
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 427
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 432
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    .line 467
    const-class v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 468
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 474
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 487
    const-class v2, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    .line 488
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationAlertingManager:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    .line 491
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 492
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 495
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 496
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    .line 497
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 499
    const-class v2, Landroid/util/DisplayMetrics;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/DisplayMetrics;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    .line 502
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 508
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 511
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 513
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    .line 545
    const-class v2, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/UiOffloadThread;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 554
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    new-array v1, v1, [I

    .line 600
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    .line 614
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 637
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 649
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yGW3L-liHoPrdVSisJBkD7OsnTE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yGW3L-liHoPrdVSisJBkD7OsnTE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    .line 657
    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 658
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 660
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 675
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    .line 685
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$be2UvXBqvJVkeR4_MOL5Z579OFk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$be2UvXBqvJVkeR4_MOL5Z579OFk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    .line 2050
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$hcoUGmHpwgtk12ln4V8HNBe6RFA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$hcoUGmHpwgtk12ln4V8HNBe6RFA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 2496
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 2829
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2898
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    .line 3182
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 3193
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$RAI9_BB0sxI6fAXVPwmNkObnx6k;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$RAI9_BB0sxI6fAXVPwmNkObnx6k;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 4056
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 4163
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 4713
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 4714
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 4738
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5950
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$28;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    .line 5972
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLunarObserver:Landroid/database/ContentObserver;

    .line 5982
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$30;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;

    const/high16 v1, -0x40800000  # -1.0f

    .line 5989
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurSlideFracOnKeyguard:F

    .line 6010
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastHasNotification:Z

    .line 6013
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsTopWindowIsFullscreen:Z

    const/high16 v1, 0x40000000  # 2.0f

    .line 6021
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentFrank:F

    const/4 v1, 0x4

    .line 6027
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRealStatusBarMode:I

    .line 6028
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraViewAttached:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/meizu/media/music/KeyguardMusicController;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAODPresenter:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsGesture:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsGesture:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .registers 1

    .line 311
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulsing:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)[I
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/keyguard/KeyguardStatusView;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFaceAnimationView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/TextView;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLunarView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->openQsByGesture:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;Z)V
    .registers 3

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 311
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationTicker(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateTicker:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateTicker:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTicker:Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/ImageView;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMusicBGCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLunarEnable:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLunarEnable:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardLunarVisible()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .registers 2

    .line 311
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarStateIfNeed(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPinnedAndHasFullyIntent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishBarAnimations()V

    return-void
.end method

.method private areLightsOn()Z
    .registers 2

    .line 2537
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private barMode(I)I
    .registers 4

    const/high16 p0, 0x4000000

    and-int/2addr p0, p1

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/high16 p0, 0x40000000  # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    and-int/lit8 p0, p1, 0x9

    const/16 v1, 0x9

    if-ne p0, v1, :cond_16

    const/4 p0, 0x6

    return p0

    :cond_16
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_1c

    const/4 p0, 0x4

    return p0

    :cond_1c
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_22

    const/4 p0, 0x3

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private dismissVolumeDialog()V
    .registers 1

    .line 2517
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz p0, :cond_7

    .line 2518
    invoke-interface {p0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    :cond_7
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 4

    .line 3289
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez p0, :cond_5

    return-void

    .line 3290
    :cond_5
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 3291
    instance-of p3, p0, Lcom/android/systemui/DemoMode;

    if-eqz p3, :cond_12

    .line 3292
    check-cast p0, Lcom/android/systemui/DemoMode;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_12
    return-void
.end method

.method static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .registers 4

    const-string v0, "  "

    .line 2683
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ".BarTransitions.mMode="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .registers 4

    .line 2934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    .line 2935
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_10
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2937
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private finishBarAnimations()V
    .registers 2

    .line 2490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_b

    .line 2491
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 2493
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarController;->finishBarAnimations(I)V

    return-void
.end method

.method public static getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;
    .registers 2

    if-eqz p0, :cond_7

    .line 4952
    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_b

    .line 4954
    :cond_7
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_b
    const/4 v0, 0x4

    .line 4958
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 4959
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private getFixedStatusBarHeight()I
    .registers 3

    .line 5918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 5920
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/camera/CameraStateController;->getBlackCircleWindowHeight(Landroid/content/Context;)I

    move-result v0

    .line 5921
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-eqz v1, :cond_19

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_19
    return p0
.end method

.method private getFlymeThemeController()Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;
    .registers 3

    .line 5925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    if-nez v0, :cond_16

    .line 5926
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    const/4 v0, 0x0

    const-string v1, "sans-serif-medium"

    .line 5927
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTypeface:Landroid/graphics/Typeface;

    .line 5929
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    return-object p0
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .registers 6

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x9

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xa

    or-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0xb

    or-int/2addr p0, p1

    shl-int/lit8 p1, p5, 0xc

    or-int/2addr p0, p1

    return p0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .registers 5

    if-ltz p1, :cond_10

    .line 5023
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_10} :catch_10

    .line 5030
    :catch_10
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 3220
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private handleStartSettingsActivity(Landroid/content/Intent;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 5426
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private handleVisibleToUserChangedImpl(Z)V
    .registers 5

    if-eqz p1, :cond_40

    .line 3091
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    .line 3092
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 3093
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_18

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 3096
    :goto_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 3097
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz p1, :cond_34

    .line 3098
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    .line 3102
    :goto_35
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HmJQbKES5h2Nfz54WrIvhU_YRh4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HmJQbKES5h2Nfz54WrIvhU_YRh4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4a

    .line 3111
    :cond_40
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$c9qjiwrIU9RXDCI3JWlVp8xvdoU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$c9qjiwrIU9RXDCI3JWlVp8xvdoU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_4a
    return-void
.end method

.method private inflateShelf()V
    .registers 5

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1308
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1307
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_shelf:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 1308
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setKeyguardBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1315
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_shelf:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private inflateTickerView(Landroid/view/View;)Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;
    .registers 5

    .line 5668
    sget v0, Lcom/android/systemui/R$id;->ticker_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_29

    .line 5670
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 5671
    new-instance v1, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 5672
    invoke-virtual {v1, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->setTickerView(Landroid/view/View;)V

    .line 5673
    sget v2, Lcom/android/systemui/R$id;->tickerText:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;

    .line 5674
    invoke-virtual {p1, v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;->setTicker(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    .line 5676
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setTickerView(Landroid/view/View;)V

    return-object v1

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private initEntryListener()V
    .registers 2

    .line 5683
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$27;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 5708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method private initFilterStackScroller()V
    .registers 3

    .line 5416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->notification_filter_stack:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 5417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFilterStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method private initFlymeStatusBarService()V
    .registers 2

    .line 5816
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    return-void
.end method

.method private initKeyguardLunar()V
    .registers 5

    .line 5765
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_lunar_calender"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_11

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLunarEnable:Z

    .line 5767
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5768
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLunarObserver:Landroid/database/ContentObserver;

    .line 5767
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_lunar_date:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLunarView:Landroid/widget/TextView;

    .line 5771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardLunarVisible()V

    .line 5772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardLunarMargin()V

    return-void
.end method

.method private initKeyguardMusic()V
    .registers 3

    .line 5118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_music_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/music/KeyguardMusicView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 5119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_music_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicBtn:Landroid/widget/LinearLayout;

    .line 5120
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    .line 5121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->registerMusicViewChange(Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;)V

    .line 5122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->animator_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFaceAnimationView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    return-void
.end method

.method private initTicker()V
    .registers 4

    .line 5662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateTickerView(Landroid/view/View;)Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTicker:Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    .line 5663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTicker:Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v2, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->setStatusBarContents(Landroid/view/View;)V

    .line 5664
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    return-void
.end method

.method private instantCollapseNotificationPanel()V
    .registers 2

    .line 3762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantCollapse()V

    .line 3763
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method private isGoingToSleep()Z
    .registers 2

    .line 4356
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private isLiveWallpaper()Z
    .registers 2

    .line 5526
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5527
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private isPinnedAndHasFullyIntent()Z
    .registers 2

    .line 5857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5858
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 5859
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$GDSEpzokV1v2-uNGuP8V5K9Jrjw(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method public static synthetic lambda$SBKxeejWdiPVIq--MxMI8pU8ipA(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method static synthetic lambda$executeActionDismissingKeyguard$30(Ljava/lang/Runnable;)V
    .registers 2

    .line 4895
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    .line 4898
    :catch_7
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$h1YVkfulr3o8W-Bsc2YTikmPmYI(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method static synthetic lambda$maybeEscalateHeadsUp$14(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5

    .line 1941
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1942
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 1943
    iget-object v2, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3c

    const-class v2, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 1945
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "mz_window_mode_video"

    .line 1946
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    const-string v2, "StatusBar"

    const-string v3, "converting a heads up to fullScreen"

    .line 1949
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x8ca3

    .line 1953
    :try_start_2d
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1952
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1954
    iget-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 1955
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V
    :try_end_3c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2d .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    return-void
.end method

.method static synthetic lambda$startActivityDismissingKeyguard$18(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .registers 2

    if-eqz p0, :cond_7

    const/16 v0, -0x60

    .line 2784
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_7
    return-void
.end method

.method private logStateToEventlog()V
    .registers 13

    .line 3123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 3124
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v7

    .line 3125
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v8

    .line 3126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v9

    .line 3127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v10

    .line 3128
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v11

    .line 3134
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    if-eq v11, v1, :cond_64

    .line 3135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v1, :cond_39

    .line 3136
    new-instance v1, Landroid/metrics/LogMaker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 3138
    :cond_39
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-eqz v8, :cond_42

    const/16 v3, 0xc5

    goto :goto_44

    :cond_42
    const/16 v3, 0xc4

    .line 3139
    :goto_44
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    if-eqz v0, :cond_4c

    const/4 v3, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x2

    .line 3140
    :goto_4d
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3141
    invoke-virtual {v2, v9}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3138
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3142
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 3148
    iput v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    :cond_64
    return-void
.end method

.method private mzHideKeyguard()V
    .registers 3

    .line 5294
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onHideKeyguard()V

    .line 5295
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->onHideKeyguard()V

    .line 5296
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->onHideKeyguard()V

    .line 5297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFaceAnimationView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    .line 5298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 5299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->onHideKeyguard()V

    .line 5300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->setKeyguardMusicViewVisible(Z)V

    .line 5302
    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onKeyguardChange(Z)V

    .line 5307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    if-eqz v0, :cond_46

    .line 5308
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 5309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    .line 5312
    :cond_46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->on3PartWallpaperShow(Z)V

    return-void
.end method

.method private mzMakeStatusBarView()V
    .registers 8

    .line 5126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 5127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 5128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 5129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 5131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->bottom_mask:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/GradientMaskView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGradientBottomMaskView:Lcom/android/systemui/GradientMaskView;

    .line 5132
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->fingerprint_mz_keyguard_bottom_mask:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGradientBottomMaskView:Lcom/android/systemui/GradientMaskView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/GradientMaskView;->setBitmapBackground(Landroid/graphics/Bitmap;)V

    .line 5134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGradientBottomMaskView:Lcom/android/systemui/GradientMaskView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5135
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGradientBottomMaskView:Lcom/android/systemui/GradientMaskView;

    const/4 v2, 0x1

    .line 5136
    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->executeMaskViewChangeAnimate(Lcom/android/systemui/GradientMaskView;I)V

    .line 5138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->filter_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    .line 5140
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 5142
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->init()V

    .line 5144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->blur_anim_background:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5145
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_background_frame:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 5146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v4, Lcom/android/systemui/R$id;->variedpage:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 5147
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v5, Lcom/android/systemui/R$id;->wallpaper_link:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 5148
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v6, Lcom/android/systemui/R$id;->live_wallpaper_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    .line 5149
    sget v5, Lcom/android/systemui/R$id;->backdrop:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/BackDropView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 5150
    sget v5, Lcom/android/systemui/R$id;->music_background_cover:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMusicBGCover:Landroid/widget/ImageView;

    .line 5151
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMusicBGCover:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->actInMzNightMode(I)V

    .line 5152
    sget v5, Lcom/android/systemui/R$id;->blur_background_cover:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 5153
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setBlurBackground(Landroid/widget/ImageView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    .line 5154
    invoke-virtual {v6, v1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setKeyguardBackgroundFrame(Landroid/widget/FrameLayout;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    .line 5155
    invoke-virtual {v6, v3, v4}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setVariedpage(Landroid/widget/ImageView;Landroid/widget/TextView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->wallpaper_view:I

    .line 5156
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/keyguard/wallpaper/WallpaperView;

    invoke-virtual {v6, v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setWallpaperTextView(Lcom/meizu/keyguard/wallpaper/WallpaperView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    .line 5157
    invoke-virtual {v6, v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setLiveWallpaperBackground(Landroid/widget/ImageView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 5158
    invoke-virtual {v6, v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setBackdrop(Lcom/android/systemui/statusbar/BackDropView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    .line 5159
    invoke-virtual {v6, v5}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setBlurBackgroundCover(Landroid/widget/ImageView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    .line 5160
    invoke-virtual {v6, p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    .line 5161
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onStart()V

    .line 5162
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/guardian/HomeGuardianController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/guardian/HomeGuardianController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/keyguard/guardian/HomeGuardianController;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initKeyguardMusic()V

    .line 5165
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->init(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    .line 5167
    const-class v0, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 5185
    const-class v0, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    .line 5186
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$18;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/flyme/systemui/statusbar/policy/NightModeController;)V

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->addCallback(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V

    .line 5205
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/charge/ChargeAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->init()V

    .line 5208
    const-class v0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 5227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFlymeThemeController()Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 5228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFlymeThemeController()Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v4}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 5229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFlymeThemeController()Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v4}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 5230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFlymeThemeController()Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v4, Lcom/android/systemui/R$id;->brightness_mirror:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 5232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onMakeStatusBar()V

    .line 5234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initAod()V

    .line 5236
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/developer/DeveloperSettingsController;

    .line 5237
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setNotificationUpdateCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$NotificationPreviewCallback;)V

    .line 5259
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 5261
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initEntryListener()V

    .line 5263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initKeyguardLunar()V

    .line 5265
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->pm:Landroid/os/PowerManager;

    .line 5267
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    sget v3, Lcom/android/systemui/R$id;->battery:I

    .line 5268
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    .line 5267
    invoke-virtual {v0, v1}, Lcom/flyme/systemui/camera/CameraStateController;->setKeyguardBatteryView(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    .line 5269
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectNavigationBarStateAfterP(Landroid/content/Context;Z)V

    .line 5271
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->init()V

    return-void
.end method

.method private mzShowKeyguard()V
    .registers 6

    .line 5275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFaceAnimationView:Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setVisible(Z)V

    .line 5277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_17

    .line 5278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    .line 5281
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->restSnooze()V

    .line 5283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardLunarVisible()V

    .line 5287
    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onKeyguardChange(Z)V

    .line 5289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->on3PartWallpaperShow(Z)V

    .line 5290
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetVoiceReceiveState()V

    return-void
.end method

.method private onLaunchTransitionFadingEnded()V
    .registers 3

    .line 3395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 3397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3398
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runLaunchTransitionEndRunnable()V

    .line 3399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->setLaunchTransitionFadingAway(Z)V

    .line 3400
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .registers 3

    const-string v0, "StatusBar"

    const-string v1, "Launch transition: Timeout!"

    .line 3483
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 3485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3486
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    return-void
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 4946
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseGestureWakeLock()V
    .registers 2

    .line 3554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .registers 3

    .line 3490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 3495
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3496
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method private runPostCollapseRunnables()V
    .registers 5

    .line 2129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    .line 2133
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2135
    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method private sendFullscreenChangedBroadCast(Z)V
    .registers 4

    .line 5644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.TOP_WINDOW_FULLSCREEN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 5645
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "window_is_fullscreen"

    .line 5646
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5647
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setUpPresenter()V
    .registers 33

    move-object/from16 v0, p0

    .line 1180
    new-instance v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 1184
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;

    iget-object v2, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllowNotificationLongPress:Z

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 1191
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v6, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationAlertingManager:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object v5, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;Landroid/view/ViewGroup;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 1200
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationListController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationListController;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

    .line 1207
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBar;->APP_OPS:[I

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 1208
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    .line 1210
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    .line 1212
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1214
    const-class v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    .line 1215
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 1217
    const-class v2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 1218
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/plugins/ActivityStarter;

    .line 1220
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    move-object v3, v2

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object v4, v15

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v30, v1

    move-object/from16 v1, v16

    move-object/from16 v31, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v24, v2

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v2

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 1227
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 1228
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v29, v1

    invoke-direct/range {v3 .. v29}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/bubbles/BubbleController;)V

    move-object/from16 v1, v31

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1230
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1232
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->setRowBinder(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;)V

    .line 1233
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationClicker;

    const-class v3, Lcom/android/systemui/bubbles/BubbleController;

    .line 1234
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/BubbleController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1233
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->setNotificationClicker(Lcom/android/systemui/statusbar/notification/NotificationClicker;)V

    .line 1236
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->bind(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1237
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationListController;->bind()V

    .line 1240
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationListController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationListController;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationFilterListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

    .line 1246
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationFilterListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationListController;->bind()V

    return-void
.end method

.method private showBouncerIfKeyguard()V
    .registers 4

    .line 3713
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 3714
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3715
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    :cond_13
    return-void
.end method

.method private tick(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 4

    .line 5724
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areLightsOn()Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 5725
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result p2

    if-nez p2, :cond_10

    return-void

    .line 5726
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-nez p2, :cond_17

    return-void

    .line 5727
    :cond_17
    const-class p2, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;->isEncrypt(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    return-void

    .line 5728
    :cond_2a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLiveWallpaper()Z

    move-result p2

    if-eqz p2, :cond_31

    return-void

    .line 5729
    :cond_31
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p2

    if-eqz p2, :cond_3a

    return-void

    .line 5730
    :cond_3a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result p2

    if-eqz p2, :cond_41

    return-void

    .line 5731
    :cond_41
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result p2

    if-eqz p2, :cond_4a

    return-void

    .line 5732
    :cond_4a
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isLuckyMoneyNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_57

    return-void

    .line 5734
    :cond_57
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_98

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz p2, :cond_98

    .line 5735
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_98

    iget-object p2, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean p2, p2, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez p2, :cond_98

    .line 5736
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    const/high16 v0, 0xa0000

    and-int/2addr p2, v0

    if-nez p2, :cond_98

    .line 5738
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    invoke-interface {p2}, Lmeizu/space/MSpaceController;->isChildrenMode()Z

    move-result p2

    if-nez p2, :cond_98

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    invoke-interface {p2, p1}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-nez p2, :cond_98

    .line 5739
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTicker:Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    invoke-virtual {p2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->halt()V

    .line 5740
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    invoke-virtual {p2, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->addNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-nez p2, :cond_98

    .line 5741
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTicker:Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    :cond_98
    return-void
.end method

.method private updateDozing()V
    .registers 5

    .line 3860
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v2, :cond_13

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 3861
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_15

    :cond_13
    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 3865
    :goto_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v3

    if-ne v3, v2, :cond_1f

    move v0, v1

    .line 3870
    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setIsDozing(Z)Z

    return-void
.end method

.method private updateDozingState()V
    .registers 6

    .line 3612
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const-wide/16 v1, 0x1000

    const-string v3, "dozing"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v0, "StatusBar#updateDozingState"

    .line 3613
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3616
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToSleepVisibleNotOccluded()Z

    move-result v0

    .line 3617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    .line 3619
    :goto_21
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz v1, :cond_3d

    :cond_2f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 3620
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->shouldAnimateScreenOff()Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    :cond_3d
    move v2, v3

    .line 3622
    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3623
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 3624
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updateHideIconsForBouncer(Z)V
    .registers 6

    .line 1835
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_14

    :cond_12
    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 1837
    :goto_15
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-nez v3, :cond_23

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-nez v3, :cond_23

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v3, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    if-nez v0, :cond_28

    if-eqz v3, :cond_29

    :cond_28
    move v1, v2

    .line 1839
    :cond_29
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-eq v0, v1, :cond_4b

    .line 1840
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v1, :cond_44

    .line 1841
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    if-eqz v0, :cond_44

    .line 1844
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 1845
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1IsrkRZhqgkId0jst0xYX6PoT4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1IsrkRZhqgkId0jst0xYX6PoT4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b

    .line 1850
    :cond_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_4b
    :goto_4b
    if-eqz v1, :cond_51

    .line 1854
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    :cond_51
    return-void
.end method

.method private updateIsKeyguard()Z
    .registers 6

    .line 3330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 3337
    :goto_d
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v3, :cond_25

    .line 3338
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenFullyOff()Z

    move-result v3

    if-nez v3, :cond_25

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v3, :cond_27

    :cond_25
    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v1

    .line 3339
    :goto_28
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v4

    if-nez v4, :cond_32

    if-eqz v3, :cond_41

    :cond_32
    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 3340
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthenticating()Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    if-eqz v3, :cond_47

    .line 3342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_47
    if-eqz v2, :cond_5d

    .line 3345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 3346
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_59

    goto :goto_5c

    .line 3349
    :cond_59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguardImpl()V

    :goto_5c
    return v1

    .line 3352
    :cond_5d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguardImpl()Z

    move-result p0

    return p0
.end method

.method private updateKeyguardLunarVisible()V
    .registers 4

    .line 5776
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v0

    .line 5777
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v1

    .line 5778
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLunarView:Landroid/widget/TextView;

    if-eqz v2, :cond_3a

    .line 5779
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLunarEnable:Z

    if-eqz v2, :cond_33

    if-nez v0, :cond_33

    if-nez v1, :cond_33

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 5780
    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->isNotChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_33

    .line 5781
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLunarView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a

    .line 5783
    :cond_33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLunarView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private updateKeyguardState()V
    .registers 4

    .line 3874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 3875
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p0

    .line 3874
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZZ)V

    return-void
.end method

.method private updateNotificationCountChange()V
    .registers 4

    .line 5588
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v0

    .line 5589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotificationCountChange,mLastHasNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastHasNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , hasActiveNotifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBar"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastHasNotification:Z

    if-eq v1, v0, :cond_3b

    .line 5592
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastHasNotification:Z

    .line 5593
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->onNotificationChange(Z)V

    .line 5594
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    if-eqz v1, :cond_3b

    .line 5595
    invoke-virtual {v1, v0}, Lcom/meizu/media/music/KeyguardMusicController;->onNotificationChange(Z)V

    .line 5598
    :cond_3b
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onNotificationChange(Z)V

    .line 5600
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->updateNotificationCounts()V

    :cond_4b
    return-void
.end method

.method private updateNotificationPanelTouchState()V
    .registers 5

    .line 4156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 4157
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 4158
    :goto_17
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v3, :cond_1f

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulsing:Z

    if-eqz v3, :cond_21

    :cond_1f
    if-eqz v0, :cond_22

    :cond_21
    move v1, v2

    .line 4159
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchAndAnimationDisabled(Z)V

    .line 4160
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method private updateNotificationTicker(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 5713
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 5715
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->addNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 5716
    iget p0, v1, Landroid/app/Notification;->flags:I

    const/high16 p1, 0x2000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method private updatePanelExpansionForKeyguard()V
    .registers 3

    .line 3386
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_15

    .line 3388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    goto :goto_1d

    .line 3389
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 3390
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateQsExpansionEnabled()V
    .registers 4

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_17

    .line 1471
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_17
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_29

    and-int/2addr v0, v1

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 1476
    :goto_2a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 1477
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateQsExpansionEnabled - QS Expand enabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatusBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateReportRejectedTouchVisibility()V
    .registers 4

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 1551
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    const/4 p0, 0x4

    .line 1550
    :goto_19
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSmartTouch(Landroid/content/res/Configuration;)V
    .registers 2

    .line 5757
    invoke-static {}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->getInstanse()Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 5759
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_9
    return-void
.end method

.method private updateStatusBarStateIfNeed(Z)V
    .registers 3

    .line 5112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_b

    .line 5113
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarState(Z)V

    :cond_b
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 1261
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .registers 2

    .line 3404
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1482
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;)V

    :cond_13
    return-void
.end method

.method public animateCollapsePanels()V
    .registers 2

    const/4 v0, 0x0

    .line 2047
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    return-void
.end method

.method public animateCollapsePanels(I)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 2076
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 2082
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    .line 2086
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .registers 5

    if-nez p2, :cond_a

    .line 2091
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz p2, :cond_a

    .line 2092
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void

    :cond_a
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_22

    .line 2102
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 p2, 0x3fc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_22

    .line 2103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2104
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2109
    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mStatusBarWindow: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " canPanelBeCollapsed(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2110
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBar"

    .line 2109
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 2113
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    .line 2116
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 2117
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->closeDetailImmediately()V

    .line 2121
    :cond_69
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 2122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    goto :goto_7a

    .line 2124
    :cond_75
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    :goto_7a
    return-void
.end method

.method public animateCollapseQuickSettings()V
    .registers 4

    .line 2195
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_d

    .line 2196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    :cond_d
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .registers 3

    .line 2156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2165
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 2166
    const-class v0, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;->onNotificationsPanelExpand(Z)V

    .line 2167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    goto :goto_2b

    .line 2170
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    .line 2172
    :goto_2b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .registers 3

    .line 2179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2184
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_e

    return-void

    :cond_e
    if-eqz p1, :cond_15

    .line 2187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Ljava/lang/String;)V

    .line 2189
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    return-void
.end method

.method public animateKeyguardUnoccluding()V
    .registers 1

    return-void
.end method

.method public appTransitionCancelled(I)V
    .registers 3

    .line 4253
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_f

    .line 4254
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onAppTransitionFinished()V

    :cond_f
    return-void
.end method

.method public appTransitionFinished(I)V
    .registers 3

    .line 4260
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_f

    .line 4261
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onAppTransitionFinished()V

    :cond_f
    return-void
.end method

.method public areLaunchAnimationsEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public areNotificationsHidden()Z
    .registers 1

    .line 1497
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->areNotificationsHiddenInShade()Z

    move-result p0

    return p0
.end method

.method awakenDreams()V
    .registers 3

    .line 4809
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1WMogreweqZK6K0lu_QDplFsRxA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1WMogreweqZK6K0lu_QDplFsRxA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .registers 3

    .line 4828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4829
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .registers 5

    .line 2484
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz p0, :cond_d

    const/4 p0, 0x2

    if-eq p2, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 2486
    :goto_e
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method checkBarModes()V
    .registers 4

    .line 2470
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 2471
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 2472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    .line 2471
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 2473
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->checkNavBarModes(I)V

    const/4 v0, 0x0

    .line 2474
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    return-void
.end method

.method public clearNotificationEffects()V
    .registers 1

    .line 4987
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 2

    .line 1493
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->clickTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public closeRemoteInputs()V
    .registers 2

    .line 5434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 5435
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5436
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    :cond_1d
    return-void
.end method

.method public closeShadeIfOpen()Z
    .registers 5

    .line 3734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3736
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 3738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 3740
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 3741
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_25
    return v1
.end method

.method public collapsePanel(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 4765
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 4767
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    goto :goto_1f

    .line 4769
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 4770
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    const/4 p1, 0x0

    .line 4771
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    goto :goto_1f

    .line 4773
    :cond_1c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public collapsePanel()Z
    .registers 4

    .line 4779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 4781
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 4783
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    return v2

    :cond_12
    return v1
.end method

.method protected computeBarMode(II)I
    .registers 3

    .line 2444
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(I)I

    move-result p1

    .line 2445
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(I)I

    move-result p0

    if-ne p1, p0, :cond_b

    const/4 p0, -0x1

    :cond_b
    return p0
.end method

.method protected computeStatusBarMode(II)I
    .registers 3

    .line 2436
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(II)I

    move-result p0

    return p0
.end method

.method public createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 3

    .line 2688
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 2689
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 2690
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->add(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method protected createDefaultQSFragment()Lcom/android/systemui/plugins/qs/QS;
    .registers 2

    .line 1175
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    const-class v0, Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;
    .registers 2

    .line 1641
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 3

    .line 1285
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method protected createUserSwitcher()V
    .registers 6

    .line 1368
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_user_switcher:I

    .line 1369
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v4, Lcom/android/systemui/R$id;->keyguard_header:I

    .line 1370
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public disable(IIIZ)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1559
    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    move/from16 v3, p1

    if-eq v3, v2, :cond_b

    return-void

    .line 1562
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result v2

    .line 1563
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v4, 0x2

    .line 1564
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    xor-int/2addr v3, v1

    .line 1566
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 1568
    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    xor-int/2addr v4, v2

    .line 1570
    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 1579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable<"

    .line 1580
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x10000

    and-int v7, v1, v6

    if-eqz v7, :cond_33

    const/16 v8, 0x45

    goto :goto_35

    :cond_33
    const/16 v8, 0x65

    .line 1581
    :goto_35
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v6, v3

    const/16 v9, 0x20

    if-eqz v6, :cond_40

    const/16 v10, 0x21

    goto :goto_41

    :cond_40
    move v10, v9

    .line 1582
    :goto_41
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v10, 0x20000

    and-int v11, v1, v10

    const/16 v12, 0x49

    const/16 v13, 0x69

    if-eqz v11, :cond_50

    move v11, v12

    goto :goto_51

    :cond_50
    move v11, v13

    .line 1583
    :goto_51
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v10, v3

    if-eqz v10, :cond_5a

    const/16 v10, 0x21

    goto :goto_5b

    :cond_5a
    move v10, v9

    .line 1584
    :goto_5b
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v10, 0x40000

    and-int v11, v1, v10

    if-eqz v11, :cond_67

    const/16 v14, 0x41

    goto :goto_69

    :cond_67
    const/16 v14, 0x61

    .line 1585
    :goto_69
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v10, v3

    if-eqz v10, :cond_72

    const/16 v14, 0x21

    goto :goto_73

    :cond_72
    move v14, v9

    .line 1586
    :goto_73
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x100000

    and-int v15, v1, v14

    const/16 v16, 0x53

    const/16 v17, 0x73

    if-eqz v15, :cond_83

    move/from16 v15, v16

    goto :goto_85

    :cond_83
    move/from16 v15, v17

    .line 1587
    :goto_85
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v14, v3

    if-eqz v14, :cond_8e

    const/16 v14, 0x21

    goto :goto_8f

    :cond_8e
    move v14, v9

    .line 1588
    :goto_8f
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x400000

    and-int v15, v1, v14

    if-eqz v15, :cond_9b

    const/16 v15, 0x42

    goto :goto_9d

    :cond_9b
    const/16 v15, 0x62

    .line 1589
    :goto_9d
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v14, v3

    if-eqz v14, :cond_a6

    const/16 v14, 0x21

    goto :goto_a7

    :cond_a6
    move v14, v9

    .line 1590
    :goto_a7
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x200000

    and-int v15, v1, v14

    if-eqz v15, :cond_b3

    const/16 v15, 0x48

    goto :goto_b5

    :cond_b3
    const/16 v15, 0x68

    .line 1591
    :goto_b5
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v14, v3

    if-eqz v14, :cond_be

    const/16 v14, 0x21

    goto :goto_bf

    :cond_be
    move v14, v9

    .line 1592
    :goto_bf
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x1000000

    and-int/2addr v14, v1

    if-eqz v14, :cond_ca

    const/16 v15, 0x52

    goto :goto_cc

    :cond_ca
    const/16 v15, 0x72

    .line 1593
    :goto_cc
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v15, 0x1000000

    and-int/2addr v15, v3

    if-eqz v15, :cond_d7

    const/16 v8, 0x21

    goto :goto_d8

    :cond_d7
    move v8, v9

    .line 1594
    :goto_d8
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x800000

    and-int/2addr v8, v1

    if-eqz v8, :cond_e3

    const/16 v8, 0x43

    goto :goto_e5

    :cond_e3
    const/16 v8, 0x63

    .line 1595
    :goto_e5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x800000

    and-int/2addr v8, v3

    if-eqz v8, :cond_f0

    const/16 v8, 0x21

    goto :goto_f1

    :cond_f0
    move v8, v9

    .line 1596
    :goto_f1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x2000000

    and-int/2addr v8, v1

    if-eqz v8, :cond_fc

    move/from16 v8, v16

    goto :goto_fe

    :cond_fc
    move/from16 v8, v17

    .line 1597
    :goto_fe
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x2000000

    and-int/2addr v3, v8

    if-eqz v3, :cond_109

    const/16 v3, 0x21

    goto :goto_10a

    :cond_109
    move v3, v9

    .line 1598
    :goto_10a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "> disable2<"

    .line 1599
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_119

    const/16 v3, 0x51

    goto :goto_11b

    :cond_119
    const/16 v3, 0x71

    .line 1600
    :goto_11b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_125

    const/16 v8, 0x21

    goto :goto_126

    :cond_125
    move v8, v9

    .line 1601
    :goto_126
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_12e

    goto :goto_12f

    :cond_12e
    move v12, v13

    .line 1602
    :goto_12f
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_139

    const/16 v8, 0x21

    goto :goto_13a

    :cond_139
    move v8, v9

    .line 1603
    :goto_13a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_144

    const/16 v2, 0x4e

    goto :goto_146

    :cond_144
    const/16 v2, 0x6e

    .line 1604
    :goto_146
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_14f

    const/16 v9, 0x21

    .line 1605
    :cond_14f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e

    .line 1606
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1607
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBar"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_167

    if-eqz v7, :cond_167

    .line 1611
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    :cond_167
    if-eqz v15, :cond_177

    if-eqz v14, :cond_177

    .line 1618
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1619
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_177
    if-eqz v10, :cond_183

    .line 1624
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    if-eqz v11, :cond_17f

    const/4 v5, 0x1

    goto :goto_180

    :cond_17f
    const/4 v5, 0x0

    :goto_180
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setDisableNotificationAlerts(Z)V

    :cond_183
    if-eqz v3, :cond_188

    .line 1629
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    :cond_188
    if-eqz v2, :cond_194

    .line 1633
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_194

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    :cond_194
    return-void
.end method

.method protected dismissKeyboardShortcuts()V
    .registers 1

    .line 4863
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 3

    .line 4835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4836
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .registers 6

    .line 2948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs(Z)V

    .line 2953
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 2954
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2955
    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2959
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 2962
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2963
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_43

    .line 2966
    :cond_40
    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :goto_43
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 2941
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dismissOrShowSecurity()V
    .registers 2

    const/4 v0, 0x0

    .line 5396
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 3228
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 3229
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sysui_demo_allowed"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    .line 3232
    :cond_1a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    const-string v0, "enter"

    .line 3233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "exit"

    if-eqz v3, :cond_2c

    .line 3234
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    goto :goto_44

    .line 3235
    :cond_2c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3236
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    .line 3237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_44

    .line 3238
    :cond_38
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-nez v3, :cond_44

    .line 3240
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3242
    :cond_44
    :goto_44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_53

    :cond_51
    move v0, v2

    goto :goto_54

    :cond_53
    :goto_53
    move v0, v1

    :goto_54
    if-nez v0, :cond_5f

    const-string/jumbo v3, "volume"

    .line 3243
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    :cond_5f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v3, :cond_66

    .line 3244
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_66
    if-nez v0, :cond_70

    const-string v3, "clock"

    .line 3246
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 3247
    :cond_70
    sget v3, Lcom/android/systemui/R$id;->clock:I

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_75
    if-nez v0, :cond_7f

    const-string v3, "battery"

    .line 3249
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 3250
    :cond_7f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_84
    if-nez v0, :cond_8f

    const-string/jumbo v3, "status"

    .line 3252
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 3253
    :cond_8f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3255
    :cond_96
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v3, :cond_a9

    if-nez v0, :cond_a4

    const-string v3, "network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 3256
    :cond_a4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a9
    const/4 v3, 0x4

    if-nez v0, :cond_b4

    const-string v4, "notifications"

    .line 3258
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 3259
    :cond_b4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v4, :cond_ba

    const/4 v4, 0x0

    goto :goto_c0

    .line 3260
    :cond_ba
    sget v5, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :goto_c0
    if-eqz v4, :cond_db

    const-string/jumbo v5, "visible"

    .line 3262
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3263
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v6, :cond_d7

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    move v5, v3

    goto :goto_d8

    :cond_d7
    move v5, v2

    .line 3264
    :goto_d8
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_db
    const-string v4, "bars"

    .line 3267
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_133

    const-string v4, "mode"

    .line 3268
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "opaque"

    .line 3269
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_f3

    goto :goto_11f

    :cond_f3
    const-string/jumbo v2, "translucent"

    .line 3270
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const/4 v2, 0x2

    goto :goto_11f

    :cond_fe
    const-string v2, "semi-transparent"

    .line 3271
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    move v2, v1

    goto :goto_11f

    :cond_108
    const-string/jumbo v2, "transparent"

    .line 3272
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    move v2, v3

    goto :goto_11f

    :cond_113
    const-string/jumbo v2, "warning"

    .line 3273
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    const/4 v2, 0x5

    goto :goto_11f

    :cond_11e
    move v2, v6

    :goto_11f
    if-eq v2, v6, :cond_133

    .line 3277
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v3, :cond_12c

    .line 3278
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3280
    :cond_12c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->transitionTo(IIZ)V

    :cond_133
    if-nez v0, :cond_13d

    const-string v0, "operator"

    .line 3283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 3284
    :cond_13d
    sget v0, Lcom/android/systemui/R$id;->operator_name:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_142
    return-void
.end method

.method public doBlackCircleAnimation(Z)V
    .registers 3

    .line 5845
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraViewAttached:Z

    if-eq v0, p1, :cond_18

    .line 5846
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraViewAttached:Z

    .line 5847
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraViewAttached:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mzUpdateLayoutForCutout(Z)V

    .line 5848
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz p1, :cond_18

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraViewAttached:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mzUpdateLayoutConsideringCutout(Z)V

    :cond_18
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 2547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Current Status Bar state:"

    .line 2548
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayMetrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 2553
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 2554
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2552
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_279

    const-string v0, "  mInteractingWindows="

    .line 2557
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mStatusBarWindowState="

    .line 2558
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2559
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mStatusBarMode="

    .line 2560
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2561
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDozing="

    .line 2562
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mZenMode="

    .line 2563
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2564
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2565
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "zen_mode"

    .line 2564
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_dc

    .line 2569
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const-string v2, "mStatusBarView"

    invoke-static {p2, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_dc
    const-string v0, "  StatusBarWindowView: "

    .line 2571
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_e8

    .line 2573
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_e8
    const-string v0, "  mMediaManager: "

    .line 2576
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_f4

    .line 2578
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_f4
    const-string v0, "  Panels: "

    .line 2581
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_131

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mNotificationPanel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2584
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2583
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      "

    .line 2585
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_131
    const-string v0, "  mStackScroller: "

    .line 2588
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_148

    const-string v0, "      "

    .line 2590
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/Dumpable;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_148
    const-string v0, "  Theme:"

    .line 2593
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v0, :cond_154

    const-string v0, "null"

    goto :goto_16b

    :cond_154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2595
    :goto_16b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    dark theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (auto: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", yes: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", no: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    if-ne v2, v3, :cond_1a9

    goto :goto_1aa

    :cond_1a9
    move v0, v1

    .line 2600
    :goto_1aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    light wallpaper theme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 2604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v0, :cond_1c8

    .line 2605
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->dump(Ljava/io/PrintWriter;)V

    .line 2608
    :cond_1c8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_1cf

    .line 2609
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2612
    :cond_1cf
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_1d6

    .line 2613
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2616
    :cond_1d6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_1dd

    .line 2617
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dump(Ljava/io/PrintWriter;)V

    .line 2621
    :cond_1dd
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    monitor-enter v1

    .line 2622
    :try_start_1e4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, p2, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2623
    monitor-exit v1
    :try_end_1f0
    .catchall {:try_start_1e4 .. :try_end_1f0} :catchall_276

    .line 2642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz v0, :cond_1f8

    .line 2643
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1fd

    :cond_1f8
    const-string v0, "  mHeadsUpManager: null"

    .line 2645
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    :goto_1fd
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v0, :cond_205

    .line 2648
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_20a

    :cond_205
    const-string v0, "  mGroupManager: null"

    .line 2650
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    :goto_20a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    if-eqz v0, :cond_211

    .line 2654
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2657
    :cond_211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_218

    .line 2658
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2661
    :cond_218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    if-eqz v0, :cond_21f

    .line 2662
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->dump(Ljava/io/PrintWriter;)V

    .line 2665
    :cond_21f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-eqz v0, :cond_226

    .line 2666
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->dump(Ljava/io/PrintWriter;)V

    .line 2669
    :cond_226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_22d

    .line 2670
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2673
    :cond_22d
    const-class p1, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    .line 2674
    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    const-string p1, "SharedPreferences:"

    .line 2676
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_275

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string p3, "  "

    .line 2678
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_24e

    :cond_275
    return-void

    :catchall_276
    move-exception p0

    .line 2623
    :try_start_277
    monitor-exit v1
    :try_end_278
    .catchall {:try_start_277 .. :try_end_278} :catchall_276

    throw p0

    :catchall_279
    move-exception p0

    .line 2555
    :try_start_27a
    monitor-exit v0
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_279

    throw p0
.end method

.method public endAffordanceLaunch()V
    .registers 1

    .line 3653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3654
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    return-void
.end method

.method public executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V
    .registers 4

    .line 4886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 4888
    :cond_9
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .registers 7

    .line 2800
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$L4kE_3rylr6H_pNi7mB0rm5zMes;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$L4kE_3rylr6H_pNi7mB0rm5zMes;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    .line 3421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3422
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3423
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$urITUg_bdosu58crbZMswPW7bvo;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$urITUg_bdosu58crbZMswPW7bvo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    .line 3440
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 3441
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 3443
    :cond_1c
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1f
    return-void
.end method

.method public fadeKeyguardWhilePulsing()V
    .registers 4

    .line 3452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 3453
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 3454
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x60

    .line 3455
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 3456
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$KlfqlCeP0_t3Ji18QuG8__kx4ws;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$KlfqlCeP0_t3Ji18QuG8__kx4ws;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3457
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 3460
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .registers 2

    .line 3592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardDoneFading()V

    .line 3593
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    return-void
.end method

.method public getAmbientIndicationContainer()Landroid/view/View;
    .registers 1

    .line 1806
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object p0
.end method

.method public getBarState()I
    .registers 1

    .line 5480
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    return p0
.end method

.method public getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .registers 1

    .line 2314
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method protected getBouncerContainer()Landroid/view/ViewGroup;
    .registers 1

    .line 1417
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object p0
.end method

.method public getCarrierTextWidth()I
    .registers 3

    .line 5820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getCarrierTextWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 5821
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_left_clock_end_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method getDisplayDensity()F
    .registers 1

    .line 2704
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method getDisplayWidth()F
    .registers 1

    .line 2708
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    return p0
.end method

.method public getEnablePullDownOnKeyguard()Z
    .registers 1

    .line 5545
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getEnablePullDownOnKeyguard()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .registers 1

    .line 2310
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object p0
.end method

.method public getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .registers 1

    .line 5065
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-object p0
.end method

.method public getIsKeyguardState()Z
    .registers 1

    .line 5441
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public getMusicBtnBottom()I
    .registers 4

    .line 5833
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicBtn:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5836
    :cond_6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_music_content_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 5837
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getMusicBtnTop()I
    .registers 4

    .line 5825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicBtn:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5828
    :cond_6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_music_content_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 5829
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .registers 2

    .line 3964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationScrollLayout()Landroid/view/ViewGroup;
    .registers 1

    .line 1788
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .registers 1

    .line 5053
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method public getStatusBarHeight()I
    .registers 3

    .line 1421
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-gez v0, :cond_13

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020f

    .line 1424
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 1427
    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFixedStatusBarHeight()I

    move-result p0

    return p0
.end method

.method public getStatusBarMode()I
    .registers 1

    .line 5074
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    return p0
.end method

.method protected getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .registers 1

    .line 2440
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object p0

    return-object p0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .registers 1

    .line 1409
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .registers 1

    .line 1413
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object p0
.end method

.method public getWakefulnessState()I
    .registers 1

    .line 4217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    return p0
.end method

.method public goToKeyguard()V
    .registers 3

    .line 4022
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 4023
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :cond_b
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .registers 8

    .line 3983
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    return-void

    .line 3987
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 3990
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    .line 3991
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    .line 3992
    invoke-virtual {p1, v3, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserExpanded(ZZ)V

    .line 3995
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setGroupExpansionChanging(Z)V

    .line 3996
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_29

    .line 3997
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    goto :goto_29

    :cond_28
    move-object p1, v2

    .line 4000
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4001
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4002
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 4003
    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_49

    :cond_47
    move v1, v4

    goto :goto_4a

    :cond_49
    :goto_49
    move v1, v3

    .line 4004
    :goto_4a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v5

    if-eqz v5, :cond_53

    move v1, v4

    .line 4007
    :cond_53
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    if-eqz v1, :cond_6a

    .line 4008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 4009
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 4010
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4011
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    goto :goto_77

    .line 4013
    :cond_6a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 4014
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :goto_77
    return-void
.end method

.method handlePeekToExpandTransistion()V
    .registers 3

    .line 3077
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    .line 3078
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3079
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method public handleSystemKey(I)V
    .registers 5

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1971
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_8e

    .line 1976
    :cond_21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_26

    return-void

    :cond_26
    const/16 v0, 0x118

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3a

    .line 1979
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ed

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1980
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    goto :goto_8e

    :cond_3a
    const/16 v0, 0x119

    if-ne v0, p1, :cond_8e

    .line 1982
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ee

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1983
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_71

    .line 1984
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    if-eqz p1, :cond_58

    .line 1985
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 1987
    :cond_58
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 1988
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setWillExpand(Z)V

    .line 1989
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    .line 1990
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_8e

    .line 1991
    :cond_71
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result p1

    if-nez p1, :cond_8e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 1992
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    .line 1994
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open_qs"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 3065
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    .line 3066
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->startNotificationLogging()V

    goto :goto_13

    .line 3068
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 3069
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    :goto_13
    return-void
.end method

.method public hasActiveNotifications()Z
    .registers 1

    .line 4248
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasActiveNotificationsAndShowLockScreenNotification()Z
    .registers 2

    .line 5579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5580
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public hasVisibleNotifications()Z
    .registers 1

    .line 5584
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    if-eqz p0, :cond_e

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public headsUpShouldBeVisible()Z
    .registers 1

    .line 1859
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result p0

    return p0
.end method

.method public hideKeyguard()Z
    .registers 3

    .line 3317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result p0

    return p0
.end method

.method public hideKeyguardImpl()Z
    .registers 6

    const/4 v0, 0x0

    .line 3504
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    const-string v1, "StatusBar#hideKeyguard"

    .line 3505
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3506
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v1

    .line 3507
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 3512
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updatePublicMode()V

    .line 3514
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3515
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v2

    if-nez v2, :cond_30

    .line 3516
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3518
    :cond_30
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    .line 3519
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 3520
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_45

    .line 3521
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    const/4 v0, 0x0

    .line 3522
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3527
    :cond_45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarController;->disableAnimationsDuringHide(IJ)V

    goto :goto_58

    .line 3528
    :cond_4d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_58

    .line 3529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 3534
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_5f

    .line 3535
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 3537
    :cond_5f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 3540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    .line 3543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3546
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->mzHideKeyguard()V

    .line 3549
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1
.end method

.method public hideStatusBarIconsForBouncer()Z
    .registers 2

    .line 1821
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .registers 1

    .line 1796
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result p0

    return p0
.end method

.method public inFullscreenMode()Z
    .registers 1

    .line 2524
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit8 p0, p0, 0x6

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public inImmersiveMode()Z
    .registers 1

    .line 2531
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit16 p0, p0, 0x1800

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected inflateStatusBarWindow(Landroid/content/Context;)V
    .registers 4

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 1376
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1375
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->super_status_bar:I

    const/4 v1, 0x0

    .line 1376
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-void
.end method

.method public initAod()V
    .registers 3

    .line 5484
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAODPresenter:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    .line 5485
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAODPresenter:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->onCreate()V

    return-void
.end method

.method public instantExpandNotificationsPanel()V
    .registers 3

    const/4 v0, 0x1

    .line 3727
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 3728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 3729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 3634
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3635
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 2291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isWellcomePage()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_36

    .line 2296
    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v2, 0x0

    if-nez v0, :cond_35

    .line 2298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_27

    .line 2299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_25

    goto :goto_27

    :cond_25
    move p1, v2

    goto :goto_28

    :cond_27
    :goto_27
    move p1, v1

    :goto_28
    if-eqz p1, :cond_32

    .line 2300
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez p1, :cond_32

    .line 2301
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    goto :goto_35

    .line 2303
    :cond_32
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_35
    :goto_35
    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method public isBouncerShowing()Z
    .registers 1

    .line 5001
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    return p0
.end method

.method public isBouncerShowingScrimmed()Z
    .registers 2

    .line 5008
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method isCameraAllowedByAdmin()Z
    .registers 5

    .line 4341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4342
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    .line 4341
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    return v1

    .line 4344
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x1

    if-eqz v0, :cond_24

    .line 4345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    return v3

    .line 4347
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4348
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_35

    move v1, v3

    :cond_35
    return v1
.end method

.method protected isCurrentProfile(I)Z
    .registers 2

    .line 5805
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result p0

    return p0
.end method

.method public isDeviceInVrMode()Z
    .registers 1

    .line 1897
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    return p0
.end method

.method public isDeviceInteractive()Z
    .registers 1

    .line 4735
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    return p0
.end method

.method public isDozing()Z
    .registers 1

    .line 1266
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    return p0
.end method

.method public isExpandedAndNotQsEdit()Z
    .registers 5

    .line 5630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 5631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExpandedAndNotQsEdit ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5632
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5633
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v2

    if-nez v2, :cond_28

    .line 5634
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isQsEditShowing()Z

    move-result v2

    if-nez v2, :cond_28

    move v2, v3

    goto :goto_29

    :cond_28
    move v2, v1

    :goto_29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StatusBar"

    .line 5631
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5636
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 5637
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isQsEditShowing()Z

    move-result p0

    if-nez p0, :cond_4c

    move v1, v3

    :cond_4c
    return v1
.end method

.method public isExpandedVisible()Z
    .registers 1

    .line 5089
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    return p0
.end method

.method public isExpandedVisibleAndNoPinned()Z
    .registers 2

    .line 5853
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isExpandedVisibleChange()Z
    .registers 1

    .line 5085
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisibleChange:Z

    return p0
.end method

.method public isExpandedVisibleInStatusShade()Z
    .registers 2

    .line 5108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isFalsingThresholdNeeded()Z
    .registers 2

    .line 1684
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isFullScreenUserSwitcherState()Z
    .registers 2

    .line 3326
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isInLaunchTransition()Z
    .registers 2

    .line 3408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isInMBackButtonArea(Landroid/view/MotionEvent;Z)Z
    .registers 4

    .line 5841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNavigationBarViewShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isInMBackButtonArea(Landroid/view/MotionEvent;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isKeyguardCurrentlySecure()Z
    .registers 1

    .line 1760
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isKeyguardNormalMode()Z
    .registers 1

    .line 5541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isKeyguardSecure()Z
    .registers 3

    .line 5034
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_12

    .line 5038
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    .line 5042
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShadeMode()Z
    .registers 1

    .line 5537
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isKeyguardShowing()Z
    .registers 2

    .line 4417
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_d

    const-string p0, "StatusBar"

    const-string v0, "isKeyguardShowing() called before startKeyguard(), returning true"

    .line 4418
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4421
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 3

    .line 5382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    const-string p0, "StatusBar"

    const-string v0, "isKeyguardShowing() called before startKeyguard(), returning true"

    .line 5383
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5386
    :cond_d
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5387
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public isMusicViewShow()Z
    .registers 1

    .line 5575
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicViewShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isNavigationBarViewShowing()Z
    .registers 2

    .line 5556
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    if-eqz p0, :cond_f

    .line 5558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v0

    :cond_f
    return v0
.end method

.method public isNotificationFilterPanelShowing()Z
    .registers 1

    .line 5911
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    if-eqz p0, :cond_9

    .line 5912
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->isNotificationFilterPanelShowing()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 5799
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    .line 5801
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result p0

    return p0
.end method

.method public isOccluded()Z
    .registers 1

    .line 1811
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    return p0
.end method

.method public isPanelExpanded()Z
    .registers 5

    .line 5878
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    .line 5879
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    if-nez v0, :cond_19

    .line 5880
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-nez p0, :cond_1f

    :cond_19
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :cond_1f
    :goto_1f
    return v2
.end method

.method public isPulsing()Z
    .registers 1

    .line 1792
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulsing:Z

    return p0
.end method

.method public isQsEditShowing()Z
    .registers 3

    .line 5552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_13
    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public isQsExpanded()Z
    .registers 1

    .line 5884
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isScreenFullyOff()Z
    .registers 1

    .line 4230
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isScreenOnFromKeyguard()Z
    .registers 1

    .line 5522
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenOnFromKeyguard:Z

    return p0
.end method

.method public isTopWindowIsFullscreen()Z
    .registers 1

    .line 5604
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsTopWindowIsFullscreen:Z

    return p0
.end method

.method public isWakeUpComingFromTouch()Z
    .registers 1

    .line 1680
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p0
.end method

.method public keyguardGoingAway()V
    .registers 3

    .line 3565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardGoingAway(Z)V

    .line 3566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(IZ)V

    return-void
.end method

.method public synthetic lambda$awakenDreams$29$StatusBar()V
    .registers 1

    .line 4811
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 4813
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public synthetic lambda$executeActionDismissingKeyguard$31$StatusBar(Ljava/lang/Runnable;)Z
    .registers 4

    .line 4889
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rrJIUwwFAGtQcqHBV4p5CzxIhOg;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rrJIUwwFAGtQcqHBV4p5CzxIhOg;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4899
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$executeRunnableDismissingKeyguard$19$StatusBar(Ljava/lang/Runnable;ZZ)Z
    .registers 5

    if-eqz p1, :cond_1b

    .line 2802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2803
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 2806
    :cond_18
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    if-eqz p2, :cond_36

    .line 2810
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz p1, :cond_2b

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_2b

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 2811
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    goto :goto_53

    .line 2816
    :cond_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$h1YVkfulr3o8W-Bsc2YTikmPmYI;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$h1YVkfulr3o8W-Bsc2YTikmPmYI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_53

    .line 2818
    :cond_36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 2823
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_53
    :goto_53
    return p3
.end method

.method public synthetic lambda$fadeKeyguardAfterLaunchTransition$27$StatusBar(Ljava/lang/Runnable;)V
    .registers 10

    .line 3424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->setLaunchTransitionFadingAway(Z)V

    if-eqz p1, :cond_b

    .line 3426
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3428
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3429
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 3430
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3431
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 3432
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 3433
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 3434
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3435
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3436
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x78

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    return-void
.end method

.method public synthetic lambda$fadeKeyguardWhilePulsing$28$StatusBar()V
    .registers 1

    .line 3458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 3459
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    return-void
.end method

.method public synthetic lambda$handleVisibleToUserChangedImpl$20$StatusBar(ZI)V
    .registers 3

    .line 3104
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public synthetic lambda$handleVisibleToUserChangedImpl$21$StatusBar()V
    .registers 1

    .line 3113
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public synthetic lambda$makeStatusBarView$4$StatusBar(Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 10

    .line 925
    move-object p1, p2

    check-cast p1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 928
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 929
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 930
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 931
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 932
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 934
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initTicker()V

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initFlymeStatusBarService()V

    .line 936
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v0, Lcom/android/systemui/R$id;->status_bar_switcher:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    .line 937
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSwitcherViewVisibility(Z)V

    .line 938
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->battery:I

    .line 939
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    .line 938
    invoke-virtual {p2, v0}, Lcom/flyme/systemui/camera/CameraStateController;->setBatteryView(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    .line 940
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->registerCallback(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;)V

    .line 950
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p2

    if-eqz p2, :cond_68

    .line 951
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyBarPanelExpansionChanged()V

    .line 953
    :cond_68
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setBouncerShowing(Z)V

    if-eqz p1, :cond_8c

    .line 955
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->getExpansionFraction()F

    move-result p2

    .line 956
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->isExpanded()Z

    move-result p1

    .line 959
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->panelExpansionChangedInKeyguardShade(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    goto :goto_8c

    .line 962
    :cond_87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->panelExpansionChanged(FZ)V

    .line 967
    :cond_8c
    :goto_8c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz p1, :cond_93

    .line 970
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->destroy()V

    .line 972
    :cond_93
    new-instance p2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 976
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->readFrom(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 977
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAreThereNotifications()V

    .line 979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$5$StatusBar(Lcom/android/systemui/statusbar/phone/ScrimState;Ljava/lang/Float;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 4

    .line 1040
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$6$StatusBar(Ljava/lang/Integer;)V
    .registers 4

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v0, :cond_b

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setScrimsVisibility(I)V

    .line 1045
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz p0, :cond_16

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onScrimVisibilityChanged(I)V

    :cond_16
    return-void
.end method

.method public synthetic lambda$makeStatusBarView$7$StatusBar(Ljava/lang/Boolean;)V
    .registers 2

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    .line 1087
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$8$StatusBar(Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 3

    .line 1090
    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    .line 1092
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQS:Lcom/android/systemui/plugins/qs/QS;

    .line 1094
    instance-of p1, p2, Lcom/flyme/systemui/qs/MzQSFragment;

    if-eqz p1, :cond_17

    .line 1095
    check-cast p2, Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {p2}, Lcom/flyme/systemui/qs/MzQSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1096
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_17
    return-void
.end method

.method public synthetic lambda$makeStatusBarView$9$StatusBar(Landroid/view/View;)V
    .registers 6

    .line 1105
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 1108
    :cond_9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, "Build info: "

    .line 1109
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.build.description"

    .line 1110
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\nSerial number: "

    .line 1111
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.serialno"

    .line 1112
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 1113
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1115
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1116
    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 1117
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1119
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 1120
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Rejected touch report"

    .line 1121
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 1122
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 1123
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Share rejected touch report"

    .line 1119
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 1125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 1119
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public synthetic lambda$new$0$StatusBar(Landroid/view/View;)V
    .registers 5

    .line 650
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "SHADE_CLICK"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method public synthetic lambda$new$1$StatusBar(ZLjava/lang/String;)V
    .registers 3

    .line 687
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 688
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public synthetic lambda$new$22$StatusBar()V
    .registers 3

    .line 3194
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    const-string v0, "StatusBar"

    const-string/jumbo v1, "stopTracing"

    .line 3195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrate()V

    return-void
.end method

.method public synthetic lambda$onActiveStateChanged$2$StatusBar(IILjava/lang/String;Z)V
    .registers 6

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/ForegroundServiceController;->onAppOpChanged(IILjava/lang/String;Z)V

    .line 697
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationListController;->updateNotificationsForAppOp(IILjava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onHeadsUpPinnedModeChanged$11$StatusBar()V
    .registers 2

    .line 1714
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceWindowCollapsed(Z)V

    return-void
.end method

.method public synthetic lambda$onHeadsUpPinnedModeChanged$12$StatusBar()V
    .registers 3

    .line 1733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setHeadsUpShowing(Z)V

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 1737
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    return-void
.end method

.method public synthetic lambda$postAnimateForceCollapsePanels$15$StatusBar()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2058
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return-void
.end method

.method public synthetic lambda$postQSRunnableDismissingKeyguard$23$StatusBar(Ljava/lang/Runnable;)V
    .registers 2

    .line 3203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$postQSRunnableDismissingKeyguard$24$StatusBar(Ljava/lang/Runnable;)V
    .registers 10

    .line 3202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3203
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$AWaoQD-Cpm4WLbje2ihIy1hyU7w;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$AWaoQD-Cpm4WLbje2ihIy1hyU7w;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public synthetic lambda$postStartActivityDismissingKeyguard$25$StatusBar(Landroid/app/PendingIntent;)V
    .registers 2

    .line 3210
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic lambda$postStartActivityDismissingKeyguard$26$StatusBar(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x1

    .line 3216
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method public synthetic lambda$postStartSettingsActivity$33$StatusBar(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x1

    .line 5422
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public synthetic lambda$start$3$StatusBar(II)V
    .registers 3

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpDisableFlags(II)V

    return-void
.end method

.method public synthetic lambda$startActivityDismissingKeyguard$17$StatusBar(Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p4

    .line 2739
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    const/high16 v1, 0x14000000

    .line 2740
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2742
    invoke-virtual/range {p1 .. p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2744
    new-instance v1, Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    move/from16 v2, p3

    .line 2746
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 2748
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v3, v2, :cond_29

    const/4 v2, 0x3

    .line 2757
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 2760
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.settings.panel.action.VOLUME"

    if-ne v2, v4, :cond_35

    const/4 v2, 0x1

    .line 2766
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 2769
    :cond_35
    :try_start_35
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2770
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2772
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    .line 2774
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    move-object v0, v2

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, p1

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move-object v9, v11

    move-object v10, v13

    move v11, v14

    .line 2769
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_6b} :catch_6c

    goto :goto_76

    :catch_6c
    move-exception v0

    const-string v1, "StatusBar"

    const-string v2, "Unable to start activity"

    .line 2776
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x60

    :goto_76
    if-eqz v12, :cond_7b

    .line 2779
    invoke-interface {v12, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_7b
    return-void
.end method

.method public synthetic lambda$startPendingIntentDismissingKeyguard$32$StatusBar(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4926
    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 4928
    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v7

    .line 4927
    invoke-virtual {v0, p2, v7}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    .line 4926
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_1a} :catch_1b

    goto :goto_32

    :catch_1b
    move-exception p2

    .line 4932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending intent failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StatusBar"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4936
    :goto_32
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 4937
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_3d
    if-eqz p3, :cond_42

    .line 4940
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_42
    return-void
.end method

.method public synthetic lambda$updateHideIconsForBouncer$13$StatusBar()V
    .registers 3

    const/4 v0, 0x0

    .line 1846
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 1847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method protected loadDimens()V
    .registers 4

    .line 3040
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3042
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    const v2, 0x105020f

    .line 3043
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 3052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFixedStatusBarHeight()I

    move-result v0

    .line 3054
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v2, :cond_20

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-eq p0, v1, :cond_20

    .line 3055
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBarHeight(I)V

    :cond_20
    return-void
.end method

.method makeExpandedInvisible()V
    .registers 11

    .line 2204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_a

    goto/16 :goto_93

    .line 2209
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    .line 2212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 2214
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2216
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_37

    .line 2217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    if-eqz v0, :cond_30

    .line 2218
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->resetNavBarMode()V

    .line 2221
    :cond_30
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRealStatusBarMode:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 2222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 2224
    :cond_37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 2225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2232
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setPanelVisible(Z)V

    .line 2236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 2239
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 2242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    const/4 v0, 0x1

    .line 2243
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->isCollapsingToShowActivityOverLockscreen()Z

    move-result v0

    if-nez v0, :cond_72

    .line 2245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 2250
    :cond_72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2251
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v3

    .line 2250
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2255
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    if-nez p0, :cond_90

    .line 2256
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 2260
    :cond_90
    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onForceHide(Z)V

    :cond_93
    :goto_93
    return-void
.end method

.method makeExpandedVisible(Z)V
    .registers 5

    if-nez p1, :cond_f

    .line 2016
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    const/4 v0, 0x1

    .line 2020
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    const/4 v1, 0x0

    .line 2022
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarState(Z)V

    .line 2023
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    const/4 v2, 0x4

    if-eqz v1, :cond_2a

    .line 2024
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 2025
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setNavBarMode(I)V

    .line 2027
    :cond_2a
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 2028
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 2033
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setPanelVisible(Z)V

    .line 2035
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2036
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    xor-int/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2037
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2040
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p0

    if-nez p0, :cond_4d

    .line 2041
    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onForceHide(Z)V

    :cond_4d
    return-void
.end method

.method protected makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 21

    move-object/from16 v8, p0

    .line 880
    iget-object v9, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 885
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateStatusBarWindow(Landroid/content/Context;)V

    .line 886
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 887
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    .line 892
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->notification_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 893
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 894
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, v8}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 895
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 896
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setUpWithContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 898
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v4, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, v9

    move-object/from16 v2, p0

    .line 899
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 902
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initFilterStackScroller()V

    .line 905
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 906
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateShelf()V

    .line 909
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 911
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$LyXF2jzAv77MElAagmeOMv_-4xQ;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LyXF2jzAv77MElAagmeOMv_-4xQ;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOnReinflationListener(Ljava/lang/Runnable;)V

    .line 912
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    .line 915
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 917
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 919
    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 920
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 921
    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 922
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 923
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$dy7qc-M4vmC01_Sduz1UMseDUmo;

    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$dy7qc-M4vmC01_Sduz1UMseDUmo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-string v2, "CollapsedStatusBarFragment"

    .line 924
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 980
    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->status_bar_container:I

    new-instance v3, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;-><init>()V

    .line 982
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 985
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 987
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setUp(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    .line 988
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 989
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 990
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 991
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 992
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 993
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 994
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 995
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 996
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 997
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 998
    const-class v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v8, v0, v1}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1000
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 1003
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget-object v1, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1007
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    .line 1008
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v4, Lcom/android/systemui/R$id;->lock_icon:I

    .line 1009
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 1007
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1010
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1012
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->ambient_indication_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    .line 1016
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/phone/StatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1031
    const-class v0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 1032
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1034
    const-class v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1036
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->scrim_behind:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/ScrimView;

    .line 1037
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->scrim_in_front:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/ScrimView;

    .line 1038
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v10

    iget-object v13, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    new-instance v14, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yOhqIPn374xbhtcciPbikc06Y7E;

    invoke-direct {v14, v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yOhqIPn374xbhtcciPbikc06Y7E;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    new-instance v15, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$D6uZssDIjl3zb9PActa_b2Y0wNo;

    invoke-direct {v15, v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$D6uZssDIjl3zb9PActa_b2Y0wNo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1048
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v16

    iget-object v0, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    .line 1049
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/AlarmManager;

    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v18, v0

    .line 1038
    invoke-virtual/range {v10 .. v18}, Lcom/android/systemui/SystemUIFactory;->createScrimController(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1051
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v4, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v6, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v7, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mFilterNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 1057
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1059
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->backdrop:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/BackDropView;

    .line 1060
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    sget v0, Lcom/android/systemui/R$id;->backdrop_front:I

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->backdrop_back:I

    .line 1061
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v6, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1060
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setup(Lcom/android/systemui/statusbar/BackDropView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V

    .line 1064
    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    invoke-virtual {v8, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeComponent;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1066
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUserSetupComplete(Z)V

    .line 1067
    iget-object v0, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_252

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    .line 1071
    :cond_252
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$HshNPAFauaSwgr5N8iT9CKLXoqs;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HshNPAFauaSwgr5N8iT9CKLXoqs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchAffordanceListener(Ljava/util/function/Consumer;)V

    .line 1075
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2ab

    .line 1077
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    .line 1078
    sget v2, Lcom/android/systemui/R$id;->qs_frame:I

    const-class v3, Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 1079
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v4, Lcom/android/systemui/plugins/qs/QS;

    .line 1080
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    const-class v4, Lcom/android/systemui/plugins/qs/QS;

    .line 1081
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zqmz5npIKuMPJHZWVxICwxzCPwk;

    invoke-direct {v4, v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zqmz5npIKuMPJHZWVxICwxzCPwk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1082
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 1083
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v3

    const-string v4, "QS"

    .line 1078
    invoke-static {v0, v4, v2, v3}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->attachExtensonToFragment(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V

    .line 1084
    new-instance v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0m7F6e2QtJDG3hy0Y3EVPv_U6WQ;

    invoke-direct {v3, v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0m7F6e2QtJDG3hy0Y3EVPv_U6WQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Ljava/util/function/Consumer;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1089
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$PK92anhRWLDXkprajoojY6dzepA;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$PK92anhRWLDXkprajoojY6dzepA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1101
    :cond_2ab
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v1, Lcom/android/systemui/R$id;->report_rejected_touch:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    .line 1102
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-eqz v0, :cond_2c6

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 1104
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ggtzWYldpP6XbhwYmX0SNphBaak;

    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ggtzWYldpP6XbhwYmX0SNphBaak;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    :cond_2c6
    iget-object v0, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1131
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    if-nez v1, :cond_2e4

    .line 1132
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2e4
    const/16 v1, 0xa

    const-string v3, "GestureWakeLock"

    .line 1134
    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1136
    iget-object v0, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 1137
    iget-object v0, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_cameraLaunchGestureVibePattern:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1139
    array-length v1, v0

    new-array v1, v1, [J

    iput-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v1, 0x0

    .line 1140
    :goto_30c
    array-length v3, v0

    if-ge v1, v3, :cond_319

    .line 1141
    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30c

    .line 1145
    :cond_319
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1146
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 1148
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1149
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1151
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.demo"

    .line 1155
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.DUMP"

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1160
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1161
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    const-string v0, "disableProfileBars"

    const-string/jumbo v1, "true"

    .line 1164
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3fc00000  # 1.5f

    .line 1167
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambientRatio"

    invoke-static {v1, v0}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->mzMakeStatusBarView()V

    return-void
.end method

.method public maybeEscalateHeadsUp()V
    .registers 3

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Qz8oyL0qAMzuJuwPLHs4cVCa7kg;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Qz8oyL0qAMzuJuwPLHs4cVCa7kg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1960
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    return-void
.end method

.method public mzDismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .registers 3

    .line 5340
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public notifyBiometricAuthModeChanged()V
    .registers 3

    .line 4366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 4367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result p0

    .line 4368
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onBiometricAuthModeChanged(ZZ)V

    return-void
.end method

.method public notifyFpAuthModeChanged()V
    .registers 1

    .line 5391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 5392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method protected notifyHeadsUpGoingToSleep()V
    .registers 1

    .line 4994
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    return-void
.end method

.method public onActivationReset()V
    .registers 2

    .line 3880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->checkIndicationStatus()V

    .line 3881
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    return-void
.end method

.method public onActiveStateChanged(IILjava/lang/String;Z)V
    .registers 13

    .line 695
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1N2jdpaP82HJRT31BJo2G2gJK5c;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1N2jdpaP82HJRT31BJo2G2gJK5c;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;IILjava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 5

    .line 3659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 3660
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return v1

    .line 3664
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 3665
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->showCustomize(Z)V

    return v1

    .line 3669
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v3, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 3670
    :goto_2b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    move-result v3

    if-eqz v3, :cond_3b

    if-nez v0, :cond_3a

    .line 3672
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithoutQs()V

    :cond_3a
    return v1

    .line 3686
    :cond_3b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v1, :cond_57

    const/4 v3, 0x2

    if-eq v0, v3, :cond_57

    .line 3687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3688
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 3690
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarState(Z)V

    goto :goto_56

    .line 3693
    :cond_51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->performBackPressIfNeeded()V

    :goto_56
    return v1

    .line 3697
    :cond_57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p0, :cond_62

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    move-result p0

    if-eqz p0, :cond_62

    return v1

    :cond_62
    return v2
.end method

.method public onCameraHintStarted()V
    .registers 2

    .line 3924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 3926
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraHintStarted()V

    .line 3928
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_camera_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 7

    .line 4267
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    .line 4280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_1a

    .line 4281
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x5

    const-string v4, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_1a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_42

    .line 4288
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/power/DoublePowerController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/power/DoublePowerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/power/DoublePowerController;->getDoublePowerType()Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    move-result-object p1

    sget-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->CAMERA:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    if-ne p1, v0, :cond_38

    .line 4289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    .line 4297
    :cond_38
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/power/DoublePowerController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/power/DoublePowerController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/power/DoublePowerController;->startDoublePowerActivity()V

    goto :goto_4e

    :cond_42
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4e

    .line 4300
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/power/SOSController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/power/SOSController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/power/SOSController;->enterSOSMode()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onClosingFinished()V
    .registers 2

    .line 3889
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 3890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3893
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    .line 3897
    :cond_11
    const-class p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;->onNotificationsPanelExpand(Z)V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .registers 3

    .line 1801
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 2974
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 2976
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 2977
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 2983
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 2984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    const/4 v0, 0x1

    .line 2987
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarState(Z)V

    .line 2988
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/developer/DeveloperSettingsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/flyme/systemui/developer/DeveloperSettingsController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2989
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSmartTouch(Landroid/content/res/Configuration;)V

    .line 2990
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object p0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/camera/CameraStateController;->onOrientationChanged(Z)V

    return-void
.end method

.method public onDemoLockHintStarted()V
    .registers 3

    const-string v0, "StatusBar"

    const-string v1, "onDemoLockHintStarted"

    .line 5569
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 5571
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_demo_lock_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 3

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_7

    .line 1325
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    .line 1328
    :cond_7
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 1329
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    .line 1330
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->onDensityOrFontScaleChanged()V

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_24

    .line 1332
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->onDensityOrFontScaleChanged()V

    .line 1334
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 1335
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 3

    const-string v0, "StatusBar#updateDozing"

    .line 3836
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3837
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    .line 3840
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 3841
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 3843
    :goto_1a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v0, :cond_23

    .line 3845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    .line 3848
    :cond_23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 3849
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setDozing(Z)V

    .line 3851
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 3852
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 3853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3854
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 3855
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onExpandAnimationFinished(Z)V
    .registers 3

    .line 1872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_b
    if-eqz p1, :cond_10

    .line 1876
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_10
    return-void
.end method

.method public onExpandAnimationTimedOut()V
    .registers 2

    .line 1882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    if-eqz v0, :cond_1e

    .line 1884
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isLaunchForActivity()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1885
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    goto :goto_22

    :cond_1e
    const/4 v0, 0x1

    .line 1887
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel(Z)V

    :goto_22
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    .line 1704
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setHeadsUpShowing(Z)V

    .line 1705
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 1706
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 1711
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1712
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceWindowCollapsed(Z)V

    .line 1713
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1PwGueSv8bkjX5GxiVzM2PDffE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1PwGueSv8bkjX5GxiVzM2PDffE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_69

    .line 1718
    :cond_2a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne p1, v0, :cond_39

    move p1, v0

    goto :goto_3a

    :cond_39
    move p1, v1

    .line 1720
    :goto_3a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isTracking()Z

    move-result v2

    if-nez v2, :cond_5d

    if-eqz p1, :cond_4d

    goto :goto_5d

    .line 1731
    :cond_4d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 1732
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vQbe7Nr2PT8-R2UTHbkZ0b3R-4w;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vQbe7Nr2PT8-R2UTHbkZ0b3R-4w;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_69

    .line 1724
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setHeadsUpShowing(Z)V

    if-eqz p1, :cond_69

    .line 1726
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    :cond_69
    :goto_69
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 4

    .line 1745
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 1746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p2, :cond_1f

    const/4 v0, 0x0

    .line 1747
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setPulseSuppressed(Z)V

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->fireNotificationPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1749
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulsing:Z

    if-eqz p1, :cond_1f

    .line 1750
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPendingPulseTimeout()V

    :cond_1f
    if-nez p2, :cond_2e

    .line 1753
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 1755
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    :cond_2e
    return-void
.end method

.method public onHintFinished()V
    .registers 3

    .line 3913
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3914
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDemoLockHintStarted()V

    goto :goto_24

    .line 3916
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->checkIndicationStatus()V

    .line 3918
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :goto_24
    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .registers 1

    .line 1691
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .registers 2

    .line 1865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1866
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_b
    return-void
.end method

.method public onMeizuPayHintStarted()V
    .registers 2

    .line 5445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 5446
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_meizu_pay_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onMenuPressed()Z
    .registers 3

    .line 3644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUnlockOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 3645
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 5872
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAODPresenter:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    if-eqz p0, :cond_7

    .line 5873
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V

    :cond_7
    return-void
.end method

.method public onNotificationViewUpdateFinished()V
    .registers 1

    .line 5657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateClearAll()V

    .line 5658
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationCountChange()V

    return-void
.end method

.method public onOverlayChanged()V
    .registers 2

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_7

    .line 1352
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOverlayChanged()V

    .line 1356
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onThemeChanged()V

    .line 1357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onThemeChanged()V

    return-void
.end method

.method public onPanelCollapsed()V
    .registers 3

    .line 5470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-nez v0, :cond_5

    return-void

    .line 5471
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->showCustomize(Z)V

    .line 5474
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5475
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetailImmediately()V

    :cond_1e
    return-void
.end method

.method public onPanelLaidOut()V
    .registers 1

    .line 4870
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardMaxNotifications()V

    return-void
.end method

.method public onPhoneHintStarted()V
    .registers 2

    .line 3937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 3938
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->phone_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onPositionChanged(FZFF)V
    .registers 11

    .line 5344
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 5345
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurSlideFracOnKeyguard:F

    invoke-virtual {v0, v2, p1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result v0

    if-nez v0, :cond_40

    .line 5346
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurSlideFracOnKeyguard:F

    .line 5347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$22;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;FZF)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_3b

    .line 5355
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result p2

    if-nez p2, :cond_40

    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 5356
    invoke-static {p2}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p2

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-virtual {p2, p3, p4}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 5357
    :cond_3b
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMusicBGCover:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5362
    :cond_40
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsGesture:Z

    if-nez p2, :cond_4c

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->pm:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p2

    if-eqz p2, :cond_be

    .line 5363
    :cond_4c
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCanSetFingerprintState()Z

    move-result p2

    if-eqz p2, :cond_be

    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p2

    iget p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentFrank:F

    invoke-virtual {p2, p3, p1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result p2

    if-nez p2, :cond_be

    .line 5364
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentFrank:F

    .line 5366
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsGesture:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_7c

    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result p2

    if-eqz p2, :cond_7c

    move p2, v1

    goto :goto_7d

    :cond_7c
    move p2, p3

    .line 5367
    :goto_7d
    iget-object p4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result p4

    if-nez p4, :cond_a5

    float-to-double v2, p1

    const-wide v4, 0x3fd999999999999aL  # 0.4

    cmpg-double p4, v2, v4

    if-gtz p4, :cond_99

    const-wide/16 v4, 0x0

    cmpl-double p4, v2, v4

    if-gtz p4, :cond_9b

    :cond_99
    if-eqz p2, :cond_a5

    .line 5368
    :cond_9b
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->onPanelShowChanged(Z)V

    goto :goto_be

    :cond_a5
    float-to-double p1, p1

    const-wide v0, 0x3fee666666666666L  # 0.95

    cmpl-double p4, p1, v0

    if-lez p4, :cond_be

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_be

    .line 5370
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->onPanelShowChanged(Z)V

    :cond_be
    :goto_be
    return-void
.end method

.method public onPosterHintStart()V
    .registers 2

    .line 5906
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 5907
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->mz_lock_screen_poster_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .registers 3

    const/4 v0, 0x2

    .line 2432
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    return-void
.end method

.method public onSpacePressed()Z
    .registers 3

    .line 3704
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 3705
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return v1

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public onStartPosterAnimation()V
    .registers 5

    .line 5450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$24;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStartedGoingToSleep()V
    .registers 3

    .line 5531
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->onPanelShowChanged(Z)V

    .line 5532
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->startShowFpAnimation()V

    .line 5533
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 6

    .line 3785
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 3786
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 3787
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 3788
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 3789
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    const-string p1, "StatusBar#updateKeyguardState"

    .line 3790
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3791
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3a

    .line 3793
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p1, :cond_2b

    .line 3794
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3795
    invoke-interface {v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v3

    .line 3794
    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 3797
    :cond_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 3798
    :cond_32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz p1, :cond_66

    .line 3799
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_66

    .line 3802
    :cond_3a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 3803
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p1, :cond_5e

    .line 3804
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3805
    invoke-interface {v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v3

    if-nez v3, :cond_5a

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v3, v0, :cond_5a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3807
    invoke-interface {v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_5a

    :cond_58
    move v3, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v3, v2

    .line 3804
    :goto_5b
    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 3809
    :cond_5e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz p1, :cond_66

    const/4 v3, 0x4

    .line 3810
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3813
    :cond_66
    :goto_66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 3814
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 3815
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3816
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v3, v2, :cond_77

    move v3, v2

    goto :goto_78

    :cond_77
    move v3, v1

    :goto_78
    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 3817
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 3819
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v3, v2, :cond_89

    if-ne v3, v0, :cond_87

    goto :goto_89

    :cond_87
    move v3, v1

    goto :goto_8a

    :cond_89
    :goto_89
    move v3, v2

    :goto_8a
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 3821
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object p1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v3, v2, :cond_9c

    if-ne v3, v0, :cond_9a

    goto :goto_9c

    :cond_9a
    move v0, v1

    goto :goto_9d

    :cond_9c
    :goto_9c
    move v0, v2

    :goto_9d
    invoke-virtual {p1, v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->showKeyguard(Z)V

    .line 3823
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq p1, v2, :cond_a6

    move p1, v2

    goto :goto_a7

    :cond_a6
    move p1, v1

    :goto_a7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSwitcherViewVisibility(Z)V

    .line 3824
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v2, :cond_b5

    move v1, v2

    :cond_b5
    invoke-virtual {p1, v1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->onStateChanged(Z)V

    .line 3825
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne p1, v2, :cond_c8

    .line 3826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->tickerHalt()V

    .line 3827
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->hidePopNotificationView()V

    .line 3829
    :cond_c8
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne p0, v2, :cond_d3

    const-string p0, "keyguard"

    goto :goto_d6

    :cond_d3
    const-string/jumbo p0, "statusbar"

    :goto_d6
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->setWindowTitle(Ljava/lang/String;)V

    .line 3831
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStatePreChange(II)V
    .registers 3

    .line 3772
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz p1, :cond_18

    const/4 p1, 0x2

    if-eq p2, p1, :cond_15

    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 3773
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3774
    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3775
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_18
    const/4 p1, 0x1

    if-ne p2, p1, :cond_23

    .line 3778
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    .line 3779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    :cond_23
    return-void
.end method

.method public onThemeChanged()V
    .registers 3

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_7

    .line 1341
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onThemeChanged()V

    .line 1343
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/AutoReinflateContainer;

    if-eqz v1, :cond_12

    .line 1344
    check-cast v0, Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 1346
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onThemeChanged()V

    return-void
.end method

.method public onTrackingStarted()V
    .registers 1

    .line 3885
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .registers 9

    .line 3942
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7a

    .line 3943
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    .line 3945
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShadeMode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_33

    .line 3946
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getEnablePullDownOnKeyguard()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 3947
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object v5

    if-eqz p1, :cond_2f

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v4

    :goto_30
    invoke-virtual {v5, v1}, Lcom/flyme/systemui/camera/CameraStateController;->setPanelExpanded(Z)V

    .line 3949
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expand "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",canSkipBouncer "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isKeyguardShadeMode "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", getExpandedHeight "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3950
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "StatusBar"

    .line 3949
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7a

    if-nez v0, :cond_7a

    if-eqz v2, :cond_77

    .line 3954
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_7a

    .line 3955
    :cond_77
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    :cond_7a
    return-void
.end method

.method public onUiModeChanged()V
    .registers 1

    .line 1362
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_7

    .line 1363
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onUiModeChanged()V

    :cond_7
    return-void
.end method

.method public onUnlockHintStarted()V
    .registers 2

    .line 3902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onUnlockHintStarted()V

    .line 3904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 3906
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_fingerprint_not_match:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .registers 1

    .line 1697
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 1698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onVoiceAssistHintStarted()V
    .registers 2

    .line 3932
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 3933
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->voice_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public openQsOrExpandNotificationPanel()V
    .registers 5

    .line 5490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getEnablePullDownOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 5492
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->openQsByGesture:Z

    .line 5493
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsGesture:Z

    .line 5494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantExpandNotificatipnPanelOnKeyguardShade()V

    goto :goto_48

    .line 5498
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpandNotificatipnPanelWithQsOnKeyguardShade()V

    goto :goto_48

    .line 5501
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$25;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_48

    .line 5509
    :cond_43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->openQs()V

    .line 5513
    :goto_48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$26;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postAnimateCollapsePanels()V
    .registers 2

    .line 2053
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateForceCollapsePanels()V
    .registers 3

    .line 2057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vsXwLw7AvX4yDOof5dgbuWdLbIs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vsXwLw7AvX4yDOof5dgbuWdLbIs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateOpenPanels()V
    .registers 2

    .line 2063
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postOnShadeExpanded(Ljava/lang/Runnable;)V
    .registers 4

    .line 3748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .registers 4

    .line 3201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GjkAle6Yh2ihV-21EScdNFN2cPY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GjkAle6Yh2ihV-21EScdNFN2cPY;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 4

    .line 3210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .registers 5

    .line 3215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postStartSettingsActivity(Landroid/content/Intent;I)V
    .registers 5

    .line 5421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rQTpDgmhuZgw7za3GIApgD00XsI;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rQTpDgmhuZgw7za3GIApgD00XsI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public preloadRecentApps()V
    .registers 3

    .line 4821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4822
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public readyForKeyguardDone()V
    .registers 1

    .line 2792
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method public registerThemeChangedListener(Landroid/view/ViewGroup;)V
    .registers 3

    .line 5933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFlymeThemeController()Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1, p0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1488
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    :cond_13
    return-void
.end method

.method public requestFaceAuth()V
    .registers 2

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1509
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    :cond_d
    return-void
.end method

.method public requestNotificationUpdate()V
    .registers 1

    .line 1501
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public resetKeyguardPeriodNotifications()V
    .registers 6

    .line 5889
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 5890
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 5892
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_22

    .line 5894
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 5895
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v2}, Landroid/service/notification/StatusBarNotification;->setKeyguardPeriodNotification(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 5899
    :cond_22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->resetKeyguardPeriodNotifications()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 5901
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2c
    return-void
.end method

.method public resetUserExpandedStates()V
    .registers 4

    .line 2924
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    .line 2925
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    .line 2926
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 2928
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2929
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->resetUserExpansion()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method

.method public setBlurBackgroundAlpha(F)V
    .registers 2

    .line 5378
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBlurAlpha(F)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .registers 4

    .line 4031
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    .line 4032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setBouncerShowing(Z)V

    .line 4033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setBouncerShowing(Z)V

    .line 4034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowingScrimmed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBouncerShowingScrimmed(Z)V

    .line 4035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->setBouncerShowing(Z)V

    :cond_1c
    const/4 p1, 0x1

    .line 4036
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 4037
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 4038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4039
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_31

    .line 4040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_31
    return-void
.end method

.method public setIndicateVisible(Z)V
    .registers 2

    .line 5565
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    return-void
.end method

.method public setInteracting(IZ)V
    .registers 6

    .line 2499
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    if-eq v0, p2, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz p2, :cond_14

    .line 2501
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    goto :goto_18

    .line 2502
    :cond_14
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    not-int v2, p1

    and-int/2addr v0, v2

    :goto_18
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    .line 2503
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_24

    .line 2504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_29

    .line 2506
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHide()V

    :goto_29
    if-eqz v1, :cond_3a

    if-eqz p2, :cond_3a

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3a

    .line 2510
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    .line 2511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    .line 2513
    :cond_3a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public setKeyguardFadingAway(JJJZ)V
    .registers 25

    move-object/from16 v0, p0

    .line 3578
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    add-long v3, p1, p5

    const-wide/16 v8, 0x78

    sub-long/2addr v3, v8

    const-wide/16 v5, 0x78

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3581
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-lez v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 3582
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    sub-long v12, p1, v8

    const-wide/16 v14, 0x78

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3585
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardFadingAway(JJZ)V

    return-void
.end method

.method public setLockscreenUser(I)V
    .registers 3

    .line 2997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->setCurrentUser(I)V

    .line 2998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentUser(I)V

    .line 2999
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .registers 5

    .line 4794
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 4795
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4796
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    move-result-object p2

    .line 4795
    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 4798
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4799
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    .line 4798
    invoke-virtual {p0, p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    :goto_2a
    return-void
.end method

.method public setOccluded(Z)V
    .registers 3

    .line 1815
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardOccluded(Z)V

    const/4 p1, 0x0

    .line 1817
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .registers 4

    .line 1764
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    const/4 v0, 0x0

    .line 1765
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 1766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setPanelExpanded(Z)V

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    if-eqz p1, :cond_1e

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 1772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_1e
    if-nez p1, :cond_25

    .line 1776
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    .line 1780
    :cond_25
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/camera/CameraStateController;->setPanelExpanded(Z)V

    .line 1781
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz p1, :cond_3b

    .line 1782
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->releaseHeadsup()V

    :cond_3b
    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 3

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setQsExpanded(Z)V

    .line 1668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_b

    const/4 p1, 0x4

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusAccessibilityImportance(I)V

    .line 1671
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 1672
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onStatusBarPanelStateChanged()V

    .line 1675
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelExpanded()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/camera/CameraStateController;->setPanelExpanded(Z)V

    return-void
.end method

.method setQsScrimEnabled(Z)V
    .registers 2

    .line 2479
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsScrimEnabled(Z)V

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 18

    move-object v0, p0

    move v3, p5

    .line 2348
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    move v2, p1

    if-eq v2, v1, :cond_8

    return-void

    .line 2351
    :cond_8
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    not-int v2, v3

    and-int/2addr v2, v1

    and-int v4, p2, v3

    or-int/2addr v2, v4

    xor-int v4, v2, v1

    const/4 v5, 0x0

    if-eqz v4, :cond_56

    .line 2361
    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-eqz v4, :cond_1d

    .line 2365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAreThereNotifications()V

    :cond_1d
    const/high16 v4, 0x10000000

    and-int/2addr v4, p2

    if-eqz v4, :cond_24

    .line 2370
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 2374
    :cond_24
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeStatusBarMode(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    move v5, v6

    :cond_2c
    if-eqz v5, :cond_4c

    .line 2377
    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-ne v1, v2, :cond_36

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRealStatusBarMode:I

    if-eq v1, v2, :cond_4c

    .line 2381
    :cond_36
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarStateIfNeed(Z)V

    .line 2382
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRealStatusBarMode:I

    .line 2384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedVisibleInStatusShade()Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v1, 0x4

    .line 2385
    :cond_42
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 2388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 2389
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 2391
    :cond_4c
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setSystemUiVisibility(I)V

    .line 2394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTopWindowIsFullscreen()V

    :cond_56
    move v6, v5

    .line 2398
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    move-object v0, v1

    move v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZIZ)V

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .registers 4

    .line 4848
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 4849
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 4852
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 4853
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 4855
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method protected setUpDisableFlags(II)V
    .registers 5

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method public setWindowState(III)V
    .registers 7

    .line 2320
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_b

    move v1, p1

    goto :goto_c

    :cond_b
    move v1, v0

    .line 2324
    :goto_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v2, :cond_37

    if-ne p2, p1, :cond_37

    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-eq p2, p3, :cond_37

    .line 2327
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-nez v1, :cond_29

    .line 2329
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p2, :cond_29

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez p2, :cond_29

    .line 2330
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    .line 2333
    :cond_29
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_37

    const/4 p2, 0x2

    if-ne p3, p2, :cond_31

    goto :goto_32

    :cond_31
    move p1, v0

    .line 2334
    :goto_32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    .line 2335
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 2340
    :cond_37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTopWindowIsFullscreen()V

    return-void
.end method

.method public shouldIgnoreTouch()Z
    .registers 2

    .line 4681
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->access$2700(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method protected shouldUnlockOnMenuPressed()Z
    .registers 2

    .line 3639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public showAssistDisclosure()V
    .registers 1

    .line 5047
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz p0, :cond_7

    .line 5048
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    :cond_7
    return-void
.end method

.method public showBouncer(Z)V
    .registers 2

    .line 3721
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    return-void
.end method

.method public showKeyguard()V
    .registers 4

    .line 3297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    const/4 v0, 0x0

    .line 3299
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 3300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 3301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    .line 3303
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onShowKeyguard()V

    .line 3304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->onShowKeyguard()V

    .line 3305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 3306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMusicBGCover:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3308
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->onShowKeyguard()V

    .line 3309
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->onShowKeyguard()V

    .line 3310
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCameraGestureTrigger(Z)V

    .line 3311
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGradientBottomMaskView:Lcom/android/systemui/GradientMaskView;

    const/4 v1, 0x2

    .line 3312
    invoke-virtual {v0, p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->executeMaskViewChangeAnimate(Lcom/android/systemui/GradientMaskView;I)V

    return-void
.end method

.method public showKeyguardImpl()V
    .registers 4

    .line 3359
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->openQsByGesture:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 3362
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    .line 3363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isLaunchTransitionFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    .line 3367
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3368
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 3369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    goto :goto_41

    .line 3370
    :cond_34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked()Z

    move-result v1

    if-nez v1, :cond_41

    .line 3371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    .line 3373
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    .line 3374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_54

    const/4 v1, 0x0

    .line 3375
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    .line 3376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyHeightChanged(Z)V

    const/4 v0, 0x0

    .line 3377
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3381
    :cond_54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->mzShowKeyguard()V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 3

    .line 2002
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2003
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showPinningEnterExitToast(Z)V

    :cond_d
    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 2

    .line 2009
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2010
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showPinningEscapeToast()V

    :cond_d
    return-void
.end method

.method public showRecongnizeFailAnim()V
    .registers 3

    .line 5400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    .line 5401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$23;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showRecongnizeFailAnim(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showScreenPinningRequest(I)V
    .registers 3

    .line 4235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 4240
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method public showScreenPinningRequest(IZ)V
    .registers 3

    .line 4244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(IZ)V

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 13

    .line 709
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 710
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    .line 711
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 712
    const-class v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 713
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 714
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService()V

    .line 716
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 717
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 718
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 720
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 722
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 723
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 724
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    .line 725
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 726
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 727
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 728
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->setUp(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    .line 730
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 731
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 732
    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 733
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 734
    const-class v0, Lcom/android/systemui/appops/AppOpsController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpsController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 735
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 736
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 737
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 738
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 739
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 740
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    .line 742
    new-instance v0, Lcom/android/systemui/ActivityIntentHelper;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 743
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getAttachedInstance()Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    move-result-object v0

    if-eqz v0, :cond_150

    .line 745
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 746
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v4

    .line 745
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->initDependencies(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    goto :goto_157

    :cond_150
    const-string v0, "StatusBar"

    const-string v1, "Cannot init KeyguardSliceProvider dependencies"

    .line 748
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :goto_157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v10, 0x0

    invoke-interface {v0, p0, v10}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "dreams"

    .line 757
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 756
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    .line 765
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 767
    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    .line 768
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 771
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 772
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 775
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 776
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 778
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 779
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    const-string/jumbo v0, "statusbar"

    .line 782
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 781
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 784
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/recents/Recents;

    .line 786
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 787
    const-class v0, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/FalsingManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 790
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const/4 v11, 0x0

    .line 795
    :try_start_22c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0
    :try_end_234
    .catch Landroid/os/RemoteException; {:try_start_22c .. :try_end_234} :catch_235

    goto :goto_23a

    :catch_235
    move-exception v0

    .line 797
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-object v0, v11

    .line 800
    :goto_23a
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 803
    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 806
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v11}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 809
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpPresenter()V

    .line 811
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mSystemUiVisibility:I

    iget v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mFullscreenStackSysUiVisibility:I

    iget v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDockedStackSysUiVisibility:I

    const/4 v6, -0x1

    iget-object v7, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDockedStackBounds:Landroid/graphics/Rect;

    iget-boolean v9, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 816
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean v6, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 820
    iget-object v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v10

    :goto_280
    if-ge v2, v1, :cond_29a

    .line 822
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_280

    .line 835
    :cond_29a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.systemui.statusbar.banner_action_cancel"

    .line 836
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.statusbar.banner_action_setup"

    .line 837
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.android.systemui.permission.SELF"

    invoke-virtual {v2, v3, v1, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "wallpaper"

    .line 842
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 841
    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 844
    :try_start_2bf
    invoke-interface {v1, v10, v2, v3}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_2c2
    .catch Landroid/os/RemoteException; {:try_start_2bf .. :try_end_2c2} :catch_2c2

    .line 852
    :catch_2c2
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 853
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    .line 855
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 856
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V

    .line 859
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 860
    const-class v1, Lcom/android/systemui/doze/DozeHost;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 862
    new-instance v1, Lcom/android/systemui/recents/ScreenPinningRequest;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 864
    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-virtual {v1, p0}, Lcom/android/systemui/ActivityStarterDelegate;->setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 866
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 869
    const-class v1, Lcom/android/systemui/InitController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/InitController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$c2AOy3A7uAuedqvDvblQbirmzTM;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$c2AOy3A7uAuedqvDvblQbirmzTM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    .line 870
    iget v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 871
    iget v0, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    .line 872
    const-class v2, Lcom/android/systemui/InitController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/InitController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;II)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1652
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 1662
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .registers 4

    .line 1657
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .registers 5

    .line 1647
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 2728
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 2721
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V
    .registers 15

    if-eqz p2, :cond_b

    .line 2734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2736
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 2737
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    .line 2736
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v6

    .line 2738
    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cYI_U_ShQVlsmm6P5qEeF15rkKQ;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cYI_U_ShQVlsmm6P5qEeF15rkKQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 2782
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GXuArppP3Gxe5JvIROZsOAy5v74;

    invoke-direct {v2, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GXuArppP3Gxe5JvIROZsOAy5v74;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v7

    move v3, p3

    move v4, v6

    .line 2787
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 2

    .line 5058
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz p0, :cond_7

    .line 5059
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method protected startKeyguard()V
    .registers 13

    const-string v0, "StatusBar#startKeyguard"

    .line 1380
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1381
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1382
    new-instance v11, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1384
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v7

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v1, v11

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 1386
    const-class v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBouncerContainer()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    sget v2, Lcom/android/systemui/R$id;->lock_icon_container:I

    .line 1389
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v1, v0

    move-object v2, p0

    .line 1387
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1391
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1392
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1395
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1398
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 1400
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1403
    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SBKxeejWdiPVIq--MxMI8pU8ipA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SBKxeejWdiPVIq--MxMI8pU8ipA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->setDismissHandler(Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;)V

    .line 1404
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .registers 4

    .line 3478
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3eb

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 3

    const/4 v0, 0x0

    .line 4907
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 4913
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 7

    .line 4920
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 4921
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4922
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v2

    .line 4921
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 4924
    :goto_1b
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public startUnlockHintAnimation()V
    .registers 2

    .line 5410
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5411
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startUnlockHintAnimation()V

    :cond_11
    return-void
.end method

.method public tickerHalt()V
    .registers 2

    .line 5749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTicker:Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    if-eqz v0, :cond_7

    .line 5750
    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->halt()V

    :cond_7
    const/4 v0, 0x0

    .line 5752
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSwitcherViewVisibility(Z)V

    return-void
.end method

.method protected toggleKeyboardShortcuts(I)V
    .registers 2

    .line 4859
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 4

    .line 4842
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4843
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public togglePanel()V
    .registers 2

    .line 2068
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_8

    .line 2069
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_b

    .line 2071
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    :goto_b
    return-void
.end method

.method public toggleSplitScreen()V
    .registers 2

    const/4 v0, -0x1

    .line 4805
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    return-void
.end method

.method protected toggleSplitScreenMode(II)Z
    .registers 7

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/recents/Recents;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1436
    :cond_6
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2a

    .line 1438
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition(I)I

    move-result p2

    if-ne p2, v3, :cond_1f

    return v1

    :cond_1f
    if-ne p2, v2, :cond_22

    move v1, v2

    .line 1445
    :cond_22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/recents/Recents;

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/systemui/recents/Recents;->splitPrimaryTask(ILandroid/graphics/Rect;I)Z

    move-result p0

    return p0

    .line 1447
    :cond_2a
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p1, :cond_4b

    .line 1449
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v0

    if-nez v0, :cond_41

    return v1

    .line 1453
    :cond_41
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->onUndockingTask()V

    if-eq p2, v3, :cond_4b

    .line 1455
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    :cond_4b
    return v2
.end method

.method public unRegisterThemeChangedListener(Landroid/view/ViewGroup;)V
    .registers 2

    .line 5937
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFlymeThemeController()Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->removeViewGroup(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public updateAreThereNotifications()V
    .registers 7

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_64

    .line 1523
    sget v1, Lcom/android/systemui/R$id;->notification_lights_out:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areLightsOn()Z

    move-result v1

    if-nez v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    .line 1525
    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    if-eq v1, v2, :cond_64

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 1527
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1528
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    :cond_32
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_39

    move v2, v5

    .line 1531
    :cond_39
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_42

    const-wide/16 v3, 0x2ee

    goto :goto_44

    :cond_42
    const-wide/16 v3, 0xfa

    .line 1532
    :goto_44
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x40000000  # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 1533
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_57

    const/4 v0, 0x0

    goto :goto_5d

    .line 1534
    :cond_57
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    move-object v0, v1

    :goto_5d
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1540
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1543
    :cond_64
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findAndUpdateMediaNotifications()V

    return-void
.end method

.method public updateClearAll()V
    .registers 1

    .line 5651
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_7

    .line 5652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClearAll()V

    :cond_7
    return-void
.end method

.method public updateColors()V
    .registers 3

    .line 5316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$21;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateDisplaySize()V
    .registers 3

    .line 2695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public updateKeyguardLunarMargin()V
    .registers 4

    .line 5789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLunarView:Landroid/widget/TextView;

    if-eqz v0, :cond_36

    .line 5790
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5791
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5792
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lunar_view_margin_top_theme:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2f

    .line 5793
    :cond_23
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lunar_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2f
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5794
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLunarView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    return-void
.end method

.method public updateKeyguardMaxNotifications()V
    .registers 4

    .line 4874
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 4877
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v0

    .line 4878
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 4880
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    :cond_19
    return-void
.end method

.method public updateNotificationIcons()V
    .registers 1

    .line 5430
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    return-void
.end method

.method updateResources()V
    .registers 2

    .line 3011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_7

    .line 3012
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 3015
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->loadDimens()V

    .line 3017
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_11

    .line 3018
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 3020
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_18

    .line 3023
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mzUpdateResources()V

    .line 3026
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1f

    .line 3027
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 3031
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->updateResources()V

    .line 3033
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    if-eqz p0, :cond_2f

    .line 3034
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->updateResources()V

    :cond_2f
    return-void
.end method

.method updateScrimController()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "StatusBar#updateScrimController"

    .line 4374
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 4379
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v1

    .line 4382
    :goto_1a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4383
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 4382
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    .line 4385
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4386
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchingAffordanceWithPreview()Z

    move-result v1

    .line 4387
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLaunchingAffordanceWithPreview(Z)V

    .line 4389
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v2, :cond_49

    .line 4393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4394
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    goto :goto_42

    :cond_40
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 4395
    :goto_42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_b5

    .line 4396
    :cond_49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v2

    if-nez v2, :cond_ac

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    if-nez v2, :cond_ac

    if-eqz v1, :cond_56

    goto :goto_ac

    .line 4399
    :cond_56
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    if-eqz v1, :cond_62

    .line 4400
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_b5

    .line 4401
    :cond_62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 4402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 4403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object p0

    .line 4402
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_b5

    .line 4404
    :cond_76
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_84

    if-nez v0, :cond_84

    .line 4405
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_b5

    .line 4406
    :cond_84
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v1, :cond_92

    if-nez v0, :cond_92

    .line 4407
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_b5

    .line 4408
    :cond_92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 4409
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_b5

    .line 4411
    :cond_a2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_b5

    .line 4398
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 4413
    :goto_b5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public updateStatusBarState(Z)V
    .registers 5

    .line 5093
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-nez v1, :cond_9

    goto :goto_37

    :cond_9
    const-string v1, "StatusBar"

    const/4 v2, 0x0

    if-eqz p1, :cond_19

    .line 5095
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p1, "set StatusBaeView visible"

    .line 5096
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisibleChange:Z

    goto :goto_37

    .line 5099
    :cond_19
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p1, :cond_25

    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v0, 0x4000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_25

    const/4 v2, 0x1

    :cond_25
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisibleChange:Z

    .line 5100
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisibleChange:Z

    if-eqz p1, :cond_37

    .line 5101
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p0, "set StatusBaeView gone"

    .line 5102
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return-void
.end method

.method public updateSwitcherViewVisibility(Z)V
    .registers 3

    .line 5809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_e

    .line 5810
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 5811
    :goto_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->updateTickerViewVisibility(Z)V

    :cond_14
    return-void
.end method

.method protected updateTheme()V
    .registers 3

    .line 3603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3604
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    goto :goto_11

    :cond_f
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    .line 3605
    :goto_11
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eq v1, v0, :cond_29

    .line 3606
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 3607
    const-class p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->notifyThemeChanged()V

    :cond_29
    return-void
.end method

.method public updateTicker(Z)V
    .registers 2

    .line 5868
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateTicker:Z

    return-void
.end method

.method public updateTopWindowIsFullscreen()V
    .registers 8

    .line 5607
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 5608
    :goto_c
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-nez v3, :cond_19

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-ne v3, v1, :cond_17

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v3, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v3, v1

    .line 5609
    :goto_1a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 5610
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v5

    goto :goto_28

    :cond_27
    move v5, v2

    :goto_28
    if-eqz v4, :cond_2f

    .line 5611
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isSemiTransparent()Z

    move-result v4

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 5612
    :goto_30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v6

    if-eqz v6, :cond_49

    if-eqz v5, :cond_49

    if-eqz v4, :cond_3c

    if-nez v0, :cond_49

    .line 5615
    :cond_3c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isGestureMode()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_49

    :cond_47
    move v0, v2

    goto :goto_4a

    :cond_49
    :goto_49
    move v0, v1

    :goto_4a
    if-eqz v0, :cond_4f

    if-eqz v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v1, v2

    .line 5617
    :goto_50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsTopWindowIsFullscreen:Z

    if-eq v0, v1, :cond_5b

    .line 5618
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsTopWindowIsFullscreen:Z

    .line 5619
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsTopWindowIsFullscreen:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->sendFullscreenChangedBroadCast(Z)V

    .line 5621
    :cond_5b
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/camera/CameraStateController;->onFullScreenChanged(Z)V

    .line 5622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTopWindowIsFullscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsTopWindowIsFullscreen:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",hideStatusBar="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatusBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateVisibleToUser()V
    .registers 3

    .line 4974
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 4975
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 4977
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_16

    .line 4978
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChanged(Z)V

    :cond_16
    return-void
.end method

.method public userActivity()V
    .registers 3

    .line 3628
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 3629
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_a
    return-void
.end method

.method vibrate()V
    .registers 4

    .line 3177
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 3179
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method protected visibilityChanged(Z)V
    .registers 10

    .line 4963
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eq v0, p1, :cond_13

    .line 4964
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-nez p1, :cond_13

    .line 4966
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4970
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V
    .registers 9

    .line 1271
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v0, :cond_50

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x4

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.systemui:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    const/4 p1, 0x1

    .line 1274
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    .line 1275
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1276
    new-instance p2, Landroid/graphics/PointF;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    const/4 v0, 0x0

    aget p4, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    aget p1, v0, p1

    .line 1277
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-direct {p2, p4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 1278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOnFromTouch()V

    :cond_50
    return-void
.end method
