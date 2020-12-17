.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    }
.end annotation


# static fields
.field private static final FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;


# instance fields
.field private final DEMO_MODE_ACTION_CLEAR_LOCK:Ljava/lang/String;

.field private final DEMO_MODE_ENABLE:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAodShowing:Z

.field private mAssistantIntentParam:Landroid/content/Intent;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootComplete:Z

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomMessage:Ljava/lang/CharSequence;

.field private final mDelayedLockBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayedProfileShowingSequence:I

.field private mDelayedShowingSequence:I

.field private mDeviceInteractive:Z

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

.field private mDozing:Z

.field private mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mGestureCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

.field private mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasFingerprintClient:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private final mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

.field private mHideAnimationRun:Z

.field private mHideAnimationRunning:Z

.field private mHiding:Z

.field private mInputRestricted:Z

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSimStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/IccCardConstants$State;",
            ">;"
        }
    .end annotation
.end field

.field private mLockIntent:Landroid/content/Intent;

.field private mLockLater:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockReason:Ljava/lang/String;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPendingLock:Z

.field private mPendingReset:Z

.field private mPhoneState:Ljava/lang/String;

.field private mPlayVideoIntent:Landroid/app/PendingIntent;

.field private mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPulsing:Z

.field private mReceiveVoiceAction:Z

.field private mResetFaceState:Ljava/lang/Runnable;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mShuttingDown:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mStopVideoIntent:Landroid/app/PendingIntent;

.field private mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

.field private mSystemReady:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private mUiSoundsStreamType:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mVoiceIntent:Landroid/app/PendingIntent;

.field private mVoiceIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndUnlocking:Z

.field private mWorkLockController:Lcom/android/systemui/keyguard/WorkLockActivityController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24200000

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 3059
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.flashlight"

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 240
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 241
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 242
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v1, 0x0

    .line 276
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 308
    new-instance v2, Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 318
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseArray;

    .line 324
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 344
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 346
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 347
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 348
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 403
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 611
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1737
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1763
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1896
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2202
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2247
    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$cwsnZe582iHRLRSJWQeXdqmun1k;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$cwsnZe582iHRLRSJWQeXdqmun1k;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    .line 3067
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    const-string v0, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    .line 3068
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ACTION_CLEAR_LOCK:Ljava/lang/String;

    .line 3089
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    .line 3119
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mResetFaceState:Ljava/lang/Runnable;

    .line 3130
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

    .line 3144
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUpAndStartActivityAfterKeyguardExit()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startVoiceOpenAppAfterKeyguardExit()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReceiveVoiceAction:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReceiveVoiceAction:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mVoiceIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mVoiceIntents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAssistantIntentParam:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/CharSequence;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .registers 1

    .line 173
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .registers 1

    .line 173
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    return p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->initFaceRecognition()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/content/Intent;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldPlayVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/String;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedGoingToSleep()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyFinishedGoingToSleep()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedWakingUp()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .registers 3

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 3

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .registers 5

    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/keyguard/SystemModeUtils;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleGesture(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    return p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPulsing:Z

    return p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/UiOffloadThread;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->expandNotifications()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;IZ)V
    .registers 3

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleCustomGesture(IZ)V

    return-void
.end method

.method static synthetic access$7302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHasFingerprintClient:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/util/SparseArray;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result p0

    return p0
.end method

.method private adjustStatusBarLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 2363
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(Z)V

    return-void
.end method

.method private adjustStatusBarLocked(Z)V
    .registers 6

    .line 2367
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_11

    .line 2368
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    .line 2369
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2372
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "KeyguardViewMediator"

    if-nez v0, :cond_1d

    const-string p0, "Could not get status bar manager"

    .line 2373
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :cond_1d
    const/4 v0, 0x0

    if-nez p1, :cond_26

    .line 2378
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_26
    const/high16 v0, 0x1200000

    .line 2382
    :cond_28
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_2f

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 2388
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mOccluded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSecure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " --> flags=0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2388
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_74
    return-void
.end method

.method private cancelDoKeyguardForChildProfilesLocked()V
    .registers 2

    .line 1194
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    return-void
.end method

.method private cancelDoKeyguardLaterLocked()V
    .registers 2

    .line 1190
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return-void
.end method

.method private checkIsVideo(Ljava/lang/String;)Z
    .registers 4

    const-string p0, "."

    .line 3019
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mp4"

    .line 3020
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    const-string p1, "avi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    const-string p1, "mkv"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    const-string p1, "flv"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :cond_36
    :goto_36
    return v0
.end method

.method private doKeyguardForChildProfilesLocked()V
    .registers 6

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1182
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_22

    aget v3, v0, v2

    .line 1183
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1184
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_22
    return-void
.end method

.method private doKeyguardLaterForChildProfilesLocked()V
    .registers 11

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1160
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_57

    aget v4, v0, v3

    .line 1161
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1162
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_2b

    .line 1164
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    goto :goto_54

    .line 1166
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 1167
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    const-string v9, "seq"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.USER_ID"

    .line 1169
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 1170
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1171
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1173
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_57
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .registers 5

    .line 1136
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    const/4 v0, 0x0

    .line 1138
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_16

    .line 1140
    :cond_13
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    :goto_16
    return-void
.end method

.method private doKeyguardLaterLocked(J)V
    .registers 7

    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 1147
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1148
    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    const-string v2, "seq"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 1149
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1150
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1152
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setting alarm to turn off keyguard, seq = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardViewMediator"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterForChildProfilesLocked()V

    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .registers 9

    .line 1526
    invoke-static {}, Lcom/flyme/systemui/drivemode/DriveMode;->shouldInterruptShowLock()Z

    move-result v0

    const-string v1, "KeyguardViewMediator"

    if-eqz v0, :cond_e

    const-string p0, "not to lock because drive mode"

    .line 1527
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1532
    :cond_e
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z

    if-eqz v0, :cond_18

    const-string p0, "doKeyguard: not showing because booting to cryptkeeper"

    .line 1534
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1539
    :cond_18
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_25

    const-string p1, "doKeyguard: not showing because externally disabled"

    .line 1540
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    return-void

    .line 1547
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string p1, "doKeyguard: not showing because it is already showing"

    .line 1548
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void

    .line 1554
    :cond_36
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1555
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_cf

    :cond_45
    const-string v0, "keyguard.no_require_sim"

    .line 1558
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 1559
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1560
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v4

    .line 1559
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    .line 1561
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1562
    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 1561
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    .line 1563
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    if-nez v6, :cond_75

    if-nez v4, :cond_70

    if-eqz v5, :cond_73

    :cond_70
    if-eqz v0, :cond_73

    goto :goto_75

    :cond_73
    move v0, v3

    goto :goto_76

    :cond_75
    :goto_75
    move v0, v2

    .line 1566
    :goto_76
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isWellcomePage()Z

    move-result v4

    if-nez v0, :cond_8c

    .line 1569
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-nez v5, :cond_86

    if-eqz v4, :cond_8c

    :cond_86
    const-string p0, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    .line 1570
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8c
    if-eqz p1, :cond_97

    const-string v4, "force_show"

    .line 1575
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_97

    goto :goto_98

    :cond_97
    move v2, v3

    .line 1576
    :goto_98
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_ae

    if-nez v0, :cond_ae

    if-nez v2, :cond_ae

    const-string p0, "doKeyguard: not showing because lockscreen is off"

    .line 1578
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1582
    :cond_ae
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    const-string p1, "Not showing lock screen since just decrypted"

    .line 1583
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1586
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1588
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    return-void

    :cond_cf
    const-string v0, "doKeyguard: showing the lock screen"

    .line 1594
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardExit(Z)V

    .line 1598
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method private expandNotifications()V
    .registers 1

    .line 2891
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->openQsOrExpandNotificationPanel()V

    return-void
.end method

.method private getLockTimeout(I)J
    .registers 9

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const/16 v2, 0x1388

    .line 1110
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 1115
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 1116
    invoke-virtual {p0, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-gtz v5, :cond_21

    goto :goto_37

    :cond_21
    const/16 v5, 0x7530

    const-string v6, "screen_off_timeout"

    .line 1124
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v5, v0

    .line 1128
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sub-long/2addr p0, v5

    .line 1129
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 1130
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_37
    return-wide v1
.end method

.method private handleCustomGesture(IZ)V
    .registers 7

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardViewMediator"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xb1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_64

    const/16 p2, 0xca

    if-eq p1, p2, :cond_5d

    packed-switch p1, :pswitch_data_ec

    move-object p2, v1

    goto :goto_6a

    .line 2862
    :pswitch_2c  #0xc6
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawVComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2856
    :pswitch_33  #0xc5
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawSComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2853
    :pswitch_3a  #0xc4
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawOComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2850
    :pswitch_41  #0xc3
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawMComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2847
    :pswitch_48  #0xc2
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawWComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2841
    :pswitch_4f  #0xc1
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawCComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2844
    :pswitch_56  #0xc0
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawEComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2859
    :cond_5d
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawZComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_6a

    .line 2838
    :cond_64
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {p2}, Lcom/meizu/keyguard/MzGestureHelper;->getSlideRightComponent()Landroid/content/ComponentName;

    move-result-object p2

    :goto_6a
    if-eqz p2, :cond_eb

    .line 2868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 2871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH_LIGHT_COMPONENT.equals(component) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,mFlashlightController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz v2, :cond_da

    .line 2874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto :goto_df

    :cond_da
    const-string v2, "flash light controller null ..."

    .line 2877
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :goto_df
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-nez p2, :cond_e4

    goto :goto_e8

    :cond_e4
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_e8
    invoke-static {p0, p1, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    :cond_eb
    return-void

    :pswitch_data_ec
    .packed-switch 0xc0
        :pswitch_56  #000000c0
        :pswitch_4f  #000000c1
        :pswitch_48  #000000c2
        :pswitch_41  #000000c3
        :pswitch_3a  #000000c4
        :pswitch_33  #000000c5
        :pswitch_2c  #000000c6
    .end packed-switch
.end method

.method private handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1615
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_13

    if-eqz p1, :cond_b

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->addCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 1619
    :cond_b
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 1620
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissAndCollapse()V

    goto :goto_1d

    :cond_13
    if-eqz p1, :cond_1d

    .line 1622
    new-instance p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissError()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private handleGesture(I)V
    .registers 8

    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGesture gestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xca

    const/4 v1, 0x0

    if-eq p1, v0, :cond_112

    const/4 v0, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_118

    packed-switch p1, :pswitch_data_122

    packed-switch p1, :pswitch_data_12e

    goto/16 :goto_115

    .line 2790
    :pswitch_28  #0xb3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2791
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2792
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2800
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_115

    .line 2780
    :pswitch_4e  #0xb2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 2781
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    iput-boolean v0, v3, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    .line 2782
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    goto :goto_5f

    .line 2784
    :cond_5c
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 2786
    :goto_5f
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_115

    .line 2805
    :pswitch_66  #0xb0, 0xb1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_89

    const/4 v0, -0x1

    const/16 v3, 0xb0

    if-ne p1, v3, :cond_7a

    const/16 v0, 0x57

    goto :goto_80

    :cond_7a
    const/16 v3, 0xb1

    if-ne p1, v3, :cond_80

    const/16 v0, 0x58

    .line 2812
    :cond_80
    :goto_80
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/meizu/media/music/KeyguardMusicController;->sendMediaButtonClick(I)V

    .line 2814
    :cond_89
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_115

    .line 2770
    :pswitch_90  #0xa2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerDown(Z)V

    .line 2771
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHasFingerprintClient:Z

    if-eqz p1, :cond_115

    .line 2772
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->cancelAnimation()V

    goto :goto_115

    .line 2753
    :pswitch_a3  #0xa1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerDown(Z)V

    .line 2754
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHasFingerprintClient:Z

    if-eqz p1, :cond_c6

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 2755
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->startDownAnimation()V

    .line 2756
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetBrightToDimAnimation()V

    .line 2758
    :cond_c6
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getKeyguardFingerprintIconVisbile()Z

    move-result p1

    if-eqz p1, :cond_115

    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2759
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCanSetFingerprintState()Z

    move-result p1

    if-eqz p1, :cond_115

    .line 2760
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFingerprintFreeze()Z

    move-result p1

    .line 2761
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v2

    xor-int/2addr v0, v2

    if-nez p1, :cond_f7

    if-eqz v0, :cond_115

    .line 2763
    :cond_f7
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    .line 2764
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->fpFreezePressShowBouncer()V

    .line 2765
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    goto :goto_115

    .line 2775
    :pswitch_109  #0xa0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 2776
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_115

    .line 2825
    :cond_112
    :pswitch_112  #0xc0, 0xc1, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleCustomGesture(IZ)V

    .line 2830
    :cond_115
    :goto_115
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHasFingerprintClient:Z

    return-void

    :pswitch_data_118
    .packed-switch 0xa0
        :pswitch_109  #000000a0
        :pswitch_a3  #000000a1
        :pswitch_90  #000000a2
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0xb0
        :pswitch_66  #000000b0
        :pswitch_66  #000000b1
        :pswitch_4e  #000000b2
        :pswitch_28  #000000b3
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0xc0
        :pswitch_112  #000000c0
        :pswitch_112  #000000c1
        :pswitch_112  #000000c2
        :pswitch_112  #000000c3
        :pswitch_112  #000000c4
        :pswitch_112  #000000c5
        :pswitch_112  #000000c6
    .end packed-switch
.end method

.method private handleHide()V
    .registers 6

    const-string v0, "KeyguardViewMediator#handleHide"

    .line 2257
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2260
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    if-eqz v0, :cond_1d

    .line 2261
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x4

    const-string v4, "com.android.systemui:BOUNCER_DOZING"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2266
    :cond_1d
    monitor-enter p0

    :try_start_1e
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    .line 2267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "KeyguardViewMediator"

    const-string v1, "Split system user, quit unlocking."

    .line 2274
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    monitor-exit p0

    return-void

    :cond_34
    const/4 v0, 0x1

    .line 2277
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2279
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_45

    .line 2280
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_59

    .line 2283
    :cond_45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 2284
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 2282
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    .line 2287
    :goto_59
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 2289
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_67

    .line 2290
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_67
    move-exception v0

    .line 2289
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0
.end method

.method private handleKeyguardDone()V
    .registers 5

    const-string v0, "KeyguardViewMediator#handleKeyguardDone"

    .line 2014
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2015
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2016
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$_5R5BVmx-ThRHQbevLLkSqkvnz0;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$_5R5BVmx-ThRHQbevLLkSqkvnz0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDone"

    .line 2021
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    monitor-enter p0

    .line 2023
    :try_start_1b
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2024
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_74

    .line 2026
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2029
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 2030
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->recordUnlockTimes()V

    .line 2032
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    if-eqz v0, :cond_51

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2035
    :cond_44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardDoneCancel()V

    const-string p0, "KeyguardViewMediator"

    const-string v0, "Device is going to sleep, aborting keyguardDone"

    .line 2037
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2041
    :cond_51
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v0, :cond_6d

    const/4 v1, 0x1

    .line 2043
    :try_start_56
    invoke-interface {v0, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_62

    :catch_5a
    move-exception v0

    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult()"

    .line 2045
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_62
    const/4 v0, 0x0

    .line 2048
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 2052
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v0, 0x0

    .line 2053
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 2054
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 2057
    :cond_6d
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 2058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_74
    move-exception v0

    .line 2024
    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0
.end method

.method private handleKeyguardDoneDrawing()V
    .registers 3

    const-string v0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    .line 2085
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2086
    monitor-enter p0

    :try_start_6
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    .line 2087
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_25

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    .line 2089
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2090
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 2091
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2096
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2098
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2a

    .line 2099
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_2a
    move-exception v0

    .line 2098
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private handleNotifyFinishedGoingToSleep()V
    .registers 3

    .line 2434
    monitor-enter p0

    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyFinishedGoingToSleep"

    .line 2435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onFinishedGoingToSleep()V

    .line 2437
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleNotifyScreenTurnedOff()V
    .registers 3

    .line 2478
    monitor-enter p0

    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurnedOff"

    .line 2479
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2480
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2481
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private handleNotifyScreenTurnedOn()V
    .registers 3

    const-string v0, "KeyguardViewMediator#handleNotifyScreenTurnedOn"

    .line 2466
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2467
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2468
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 2470
    :cond_17
    monitor-enter p0

    :try_start_18
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurnedOn"

    .line 2471
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn()V

    .line 2473
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_29

    .line 2474
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_29
    move-exception v0

    .line 2473
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 4

    const-string v0, "KeyguardViewMediator#handleNotifyScreenTurningOn"

    .line 2450
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2451
    monitor-enter p0

    :try_start_6
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurningOn"

    .line 2452
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurningOn()V

    if-eqz p1, :cond_1e

    .line 2455
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_1b

    .line 2456
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    goto :goto_1e

    .line 2458
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2461
    :cond_1e
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_23

    .line 2462
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_23
    move-exception p1

    .line 2461
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private handleNotifyStartedGoingToSleep()V
    .registers 3

    .line 2423
    monitor-enter p0

    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyStartedGoingToSleep"

    .line 2424
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedGoingToSleep()V

    .line 2426
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleNotifyStartedWakingUp()V
    .registers 3

    const-string v0, "KeyguardViewMediator#handleMotifyStartedWakingUp"

    .line 2441
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2442
    monitor-enter p0

    :try_start_6
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyWakingUp"

    .line 2443
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedWakingUp()V

    .line 2445
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    .line 2446
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_17
    move-exception v0

    .line 2445
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private handleReset()V
    .registers 3

    .line 2402
    monitor-enter p0

    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    .line 2403
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 2405
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private handleSetOccluded(ZZ)V
    .registers 5

    const-string v0, "KeyguardViewMediator#handleSetOccluded"

    .line 1457
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1458
    monitor-enter p0

    .line 1459
    :try_start_6
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    const-wide/16 v0, 0x0

    .line 1462
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 1465
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_3a

    .line 1466
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardOccluded(Z)V

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1469
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_33

    :cond_2b
    if-eqz p2, :cond_33

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz p2, :cond_33

    const/4 p2, 0x1

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p2, 0x0

    .line 1468
    :goto_34
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(ZZ)V

    .line 1471
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1473
    :cond_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_3f

    .line 1474
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_3f
    move-exception p1

    .line 1473
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "KeyguardViewMediator#handleShow"

    .line 2154
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2155
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2156
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2157
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    .line 2159
    :cond_1a
    monitor-enter p0

    .line 2160
    :try_start_1b
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_28

    const-string p1, "KeyguardViewMediator"

    const-string v0, "ignoring handleShow because system is not ready."

    .line 2161
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    monitor-exit p0

    return-void

    :cond_28
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow"

    .line 2164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2167
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2168
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    const/4 v1, 0x1

    .line 2169
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2170
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2172
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2174
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2175
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 2176
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardGoingAway(Z)V

    .line 2177
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2178
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_99

    .line 2179
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    .line 2182
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    if-eqz p1, :cond_6c

    .line 2183
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz p1, :cond_6c

    .line 2184
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2188
    :cond_6c
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz p1, :cond_83

    .line 2189
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 2190
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p1, :cond_83

    .line 2191
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDemoLockHintStarted()V

    .line 2196
    :cond_83
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2197
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2199
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_99
    move-exception p1

    .line 2178
    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p1
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .registers 9

    const-string v0, "KeyguardViewMediator#handleStartKeyguardExitAnimation"

    .line 2294
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartKeyguardExitAnimation startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " fadeoutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    monitor-enter p0

    .line 2299
    :try_start_24
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    const/4 v1, 0x1

    if-nez v0, :cond_30

    .line 2301
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 2302
    monitor-exit p0

    return-void

    :cond_30
    const/4 v0, 0x0

    .line 2304
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2306
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardExit(Z)V

    .line 2307
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 2310
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v2, :cond_5e

    .line 2315
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->setReportNextDraw()V

    .line 2316
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v2, 0x0

    .line 2317
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2322
    :cond_5e
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2323
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2326
    :cond_6b
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2327
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2328
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissSucceeded()V

    .line 2329
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 2330
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2331
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2332
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2333
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2335
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startDemoActivity()V

    .line 2337
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string p2, "fingerprint"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_97

    .line 2339
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->closeHBM()V

    .line 2342
    :cond_97
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result p1

    if-nez p1, :cond_b7

    .line 2343
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->resetFaceImage()V

    .line 2344
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "is_unlock"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2346
    :cond_b7
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetFingerprintAuthenticated()V

    .line 2347
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p1

    if-nez p1, :cond_d1

    .line 2348
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceRecognitionSucceeded(Z)V

    .line 2350
    :cond_d1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    if-eqz p1, :cond_da

    .line 2351
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->resetAuthUnlockAttempt()V

    .line 2353
    :cond_da
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->detachWindow()V

    .line 2354
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->detachFakeWindow()V

    .line 2355
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setStartBrightToDimAnimation(Z)V

    .line 2356
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetKeyguardPeriodNotifications()V

    .line 2358
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_24 .. :try_end_fb} :catchall_ff

    .line 2359
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_ff
    move-exception p1

    .line 2358
    :try_start_100
    monitor-exit p0
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw p1
.end method

.method private handleSystemReady()V
    .registers 3

    .line 935
    monitor-enter p0

    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    .line 936
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 937
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    const/4 v0, 0x0

    .line 938
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 939
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 940
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    .line 943
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    return-void

    :catchall_1b
    move-exception v0

    .line 940
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private handleVerifyUnlock()V
    .registers 3

    const-string v0, "KeyguardViewMediator#handleVerifyUnlock"

    .line 2413
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2414
    monitor-enter p0

    :try_start_6
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    .line 2415
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2416
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2417
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissAndCollapse()V

    .line 2418
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    .line 2419
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1b
    move-exception v0

    .line 2418
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private hideLocked()V
    .registers 3

    const-string v0, "KeyguardViewMediator#hideLocked"

    .line 1701
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "hideLocked"

    .line 1702
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1704
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1705
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private initFaceRecognition()V
    .registers 3

    .line 2728
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldFaceRecognitionRun()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    if-nez v0, :cond_3f

    const-string v0, "KeyguardViewMediator"

    const-string v1, "initFaceRecognition"

    .line 2729
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    .line 2731
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->initKeyguardFaceRecognition()V

    .line 2732
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 2733
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRecognitionControllerRef(Lcom/android/keyguard/KeyguardUpdateMonitor$FaceRecognitionCallback;)V

    .line 2734
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionState()V

    :cond_3f
    return-void
.end method

.method static synthetic lambda$updateActivityLockScreenState$3(ZZ)V
    .registers 4

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateActivityLockScreenState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :try_start_24
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method

.method private lockProfile(I)V
    .registers 3

    .line 1602
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method private maybeSendUserPresentBroadcast()V
    .registers 3

    .line 1262
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1263
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 1262
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1267
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    goto :goto_29

    .line 1268
    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1272
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method private notifyDefaultDisplayCallbacks(Z)V
    .registers 7

    .line 2630
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 2632
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 2634
    :try_start_12
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_27

    :catch_16
    move-exception v2

    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onShowingStateChanged"

    .line 2636
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2637
    instance-of v2, v2, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_27

    .line 2638
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2642
    :cond_2a
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 2643
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$tj2ooDljMkGvvuUoztwrUid_YnI;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$tj2ooDljMkGvvuUoztwrUid_YnI;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 3

    const-string p0, "KeyguardViewMediator#notifyDrawn"

    .line 2485
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2487
    :try_start_5
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "Exception calling onDrawn():"

    .line 2489
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2491
    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private notifyFinishedGoingToSleep()V
    .registers 3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyFinishedGoingToSleep"

    .line 1655
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyHasLockscreenWallpaperChanged(Z)V
    .registers 6

    .line 2663
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 2666
    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_27

    :catch_16
    move-exception v1

    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onHasLockscreenWallpaperChanged"

    .line 2669
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2670
    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_27

    .line 2671
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method private notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 4

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOn"

    .line 1665
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1667
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyScreenTurnedOff()V
    .registers 3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenTurnedOff"

    .line 1677
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1679
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyScreenTurnedOn()V
    .registers 3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenTurnedOn"

    .line 1671
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1673
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyStartedGoingToSleep()V
    .registers 3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyStartedGoingToSleep"

    .line 1650
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyStartedWakingUp()V
    .registers 3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyStartedWakingUp"

    .line 1660
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyTrustedChangedLocked(Z)V
    .registers 6

    .line 2649
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 2652
    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_27

    :catch_16
    move-exception v1

    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call notifyTrustedChangedLocked"

    .line 2654
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2655
    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_27

    .line 2656
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method private playSound(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2108
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lockscreen_sounds_enabled"

    .line 2109
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3e

    .line 2111
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 2113
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_34

    .line 2114
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 2115
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2e

    return-void

    .line 2116
    :cond_2e
    invoke-virtual {v0}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    .line 2119
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$gkamSmMNqxOX1FiRuNJrEyzupq0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$gkamSmMNqxOX1FiRuNJrEyzupq0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3e
    return-void
.end method

.method private playSounds(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 2103
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    goto :goto_7

    :cond_5
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    :goto_7
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    return-void
.end method

.method private playTrustedSound()V
    .registers 2

    .line 2134
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    return-void
.end method

.method private playVideoLocked(J)V
    .registers 14

    .line 2943
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "meizu_shopdemo_tool_playvideo"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 2945
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow play video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "demoMode"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v3, :cond_153

    if-nez v0, :cond_31

    goto/16 :goto_153

    :cond_31
    const-string v0, "playVideoLocked"

    .line 2950
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2952
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2953
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 2954
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    .line 2955
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    .line 2959
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "meizu_shopdemo_tool_playtime"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    if-eqz v1, :cond_75

    .line 2962
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "meizu_shopdemo_tool_playtime_start"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2964
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "meizu_shopdemo_tool_playtime_end"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_79

    :cond_75
    const-string v6, "0900"

    const-string v7, "2200"

    .line 2970
    :goto_79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playVideoLocked start = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "， end = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isOpenPlayTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 2973
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    .line 2974
    invoke-virtual {v6, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2975
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2976
    invoke-virtual {v7, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v3, v8, :cond_d6

    if-ne v3, v8, :cond_dd

    if-le v5, v6, :cond_dd

    :cond_d6
    if-lt v3, v10, :cond_101

    if-ne v3, v10, :cond_dd

    if-ge v5, v7, :cond_dd

    goto :goto_101

    :cond_dd
    if-lt v3, v10, :cond_e3

    rsub-int/lit8 p1, v3, 0x17

    add-int/2addr p1, v8

    goto :goto_e5

    :cond_e3
    sub-int p1, v8, v3

    :goto_e5
    sub-int p2, v6, v5

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    sub-int/2addr v10, v8

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v10, v7

    sub-int/2addr v2, v0

    add-int/2addr v10, v2

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v2, v10

    add-long/2addr v2, p1

    goto :goto_10f

    :cond_101
    :goto_101
    sub-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v10, v7

    sub-int/2addr v2, v0

    add-int/2addr v10, v2

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v2, v10

    .line 2989
    :goto_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopDelayMs = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    .line 2991
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 2992
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2993
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2994
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStopVideoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long p1, v2, p1

    if-lez p1, :cond_14c

    .line 2996
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v4, v5, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2998
    :cond_14c
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStopVideoIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v6, v7, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_153
    :goto_153
    return-void
.end method

.method private resetKeyguardDonePendingLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 2495
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2497
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateKeyguardDonePending(Z)V

    .line 2499
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetStateLocked()V
    .registers 3

    const-string v0, "KeyguardViewMediator"

    const-string v1, "resetStateLocked"

    .line 1635
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1637
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendUserPresentBroadcast()V
    .registers 6

    .line 2062
    monitor-enter p0

    .line 2063
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v0, :cond_24

    .line 2064
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2065
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2066
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2068
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_27

    :cond_24
    const/4 v0, 0x1

    .line 2075
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 2077
    :goto_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private setShowingLocked(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2611
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    return-void
.end method

.method private setShowingLocked(ZZ)V
    .registers 7

    .line 2615
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 2616
    :goto_d
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-ne p1, v3, :cond_19

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    if-ne v0, v3, :cond_19

    if-eqz p2, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    .line 2618
    :cond_19
    :goto_19
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2619
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    if-eqz v1, :cond_30

    .line 2622
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardShowing(Z)V

    .line 2624
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDefaultDisplayCallbacks(Z)V

    .line 2625
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState(ZZ)V

    :cond_30
    return-void
.end method

.method private setupLocked()V
    .registers 10

    .line 769
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 770
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 772
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "show keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 773
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 775
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 776
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.meizu.keyguard.dismissfingerprint"

    .line 777
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.meizu.keyguard.showfingerprint"

    .line 778
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.meizu.keyguard.shutdown_or_reboot"

    .line 779
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 780
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.flyme.systemui.fp_move"

    .line 781
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.flyme.aod.action.fingerprint_icon_visible_change"

    .line 782
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.meizu.voiceassistant.keyguard.openapp"

    .line 784
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "meizu.intent.action.ACTION_SHOW_LOCK"

    .line 785
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    if-eqz v3, :cond_6b

    .line 790
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    .line 791
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    :cond_6b
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 796
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    .line 797
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    .line 798
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const-string v7, "com.android.systemui.permission.SELF"

    invoke-virtual {v3, v5, v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 802
    new-instance v0, Lcom/android/systemui/util/InjectionInflationController;

    .line 803
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIRootComponent;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/systemui/util/InjectionInflationController;-><init>(Lcom/android/systemui/SystemUIRootComponent;)V

    .line 804
    new-instance v3, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v0}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 807
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 809
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 811
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 812
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->config_enableKeyguardService:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 817
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-nez v0, :cond_ef

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 819
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 818
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_ef

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 821
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isWellcomePage()Z

    move-result v0

    if-nez v0, :cond_ef

    move v0, v1

    goto :goto_f0

    :cond_ef
    move v0, v2

    .line 817
    :goto_f0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    goto :goto_f7

    .line 826
    :cond_f4
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 830
    :goto_f7
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/systemui/SystemUIFactory;->createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 832
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 834
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 836
    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 837
    invoke-virtual {v3, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v3

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v6, 0xd

    .line 840
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/4 v6, 0x4

    .line 841
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 842
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 838
    invoke-virtual {v3, v5}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v3

    .line 843
    invoke-virtual {v3}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v3, "lock_sound"

    .line 844
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14c

    .line 846
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :cond_14c
    const-string v5, "KeyguardViewMediator"

    if-eqz v3, :cond_154

    .line 848
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v6, :cond_168

    .line 849
    :cond_154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load lock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    const-string/jumbo v3, "unlock_sound"

    .line 851
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_179

    .line 853
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v3, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    :cond_179
    if-eqz v3, :cond_17f

    .line 855
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v6, :cond_193

    .line 856
    :cond_17f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load unlock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_193
    const-string/jumbo v3, "trusted_sound"

    .line 858
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a4

    .line 860
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v3, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    :cond_1a4
    if-eqz v0, :cond_1aa

    .line 862
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v3, :cond_1be

    .line 863
    :cond_1aa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load trusted sound from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_1be
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0066

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-wide/high16 v5, 0x4024000000000000L  # 10.0

    int-to-float v0, v0

    const/high16 v3, 0x41a00000  # 20.0f

    div-float/2addr v0, v3

    float-to-double v7, v0

    .line 868
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 870
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x10a00f2

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 873
    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivityController;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWorkLockController:Lcom/android/systemui/keyguard/WorkLockActivityController;

    .line 875
    new-instance v0, Lcom/meizu/keyguard/SystemModeUtils;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/meizu/keyguard/SystemModeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    .line 876
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 877
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 878
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerFindPhoneCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 880
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFindPhoneUtils(Lcom/meizu/findphone/FindPhoneAbstract;)V

    .line 881
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSystemModeUtils(Lcom/meizu/keyguard/SystemModeUtils;)V

    .line 882
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFindPhoneState()V

    .line 884
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_266

    .line 885
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v3, "playvideo screenoff"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 886
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 887
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 888
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 889
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v3, "mz.action.demo.keyguard.lock"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    .line 891
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_STOPVIDEO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 893
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStopVideoIntent:Landroid/app/PendingIntent;

    :cond_266
    return-void
.end method

.method private shouldPlayVideo()Z
    .registers 5

    .line 3002
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/STBYV"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3003
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_36

    .line 3004
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_36

    move v1, v2

    .line 3006
    :goto_22
    array-length v3, v0

    if-ge v1, v3, :cond_36

    .line 3007
    aget-object v3, v0, v1

    .line 3008
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkIsVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_36
    return v2
.end method

.method private shouldWaitForProvisioning()Z
    .registers 2

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "KeyguardViewMediator#showLocked aqcuiring mShowKeyguardWakeLock"

    .line 1687
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "showLocked"

    .line 1688
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1691
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1692
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1693
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private startDemoActivity()V
    .registers 5

    .line 3029
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_70

    .line 3030
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3031
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockReason:Ljava/lang/String;

    const-string/jumbo v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_70

    .line 3034
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockReason:Ljava/lang/String;

    const-string v2, "faceUnlock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.flyme.demonstrationassistant"

    if-eqz v1, :cond_30

    .line 3035
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.flyme.demonstrationassistant.FaceUnlockSuccessActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4f

    .line 3037
    :cond_30
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockReason:Ljava/lang/String;

    const-string v3, "fingerprintUnlock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 3038
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.flyme.demonstrationassistant.FingerprintUnLockSuccessActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4f

    .line 3041
    :cond_45
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.flyme.demonstrationassistant.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3044
    :goto_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardViewMediator"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :try_start_66
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception v0

    .line 3048
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_70
    :goto_70
    const-string v0, ""

    .line 3052
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockReason:Ljava/lang/String;

    return-void
.end method

.method private startVoiceOpenAppAfterKeyguardExit()V
    .registers 5

    const-string v0, "KeyguardViewMediator"

    .line 2899
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReceiveVoiceAction:Z

    if-eqz v1, :cond_4c

    .line 2901
    :try_start_6
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mVoiceIntents:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    .line 2902
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mVoiceIntents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_10

    .line 2904
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    goto :goto_10

    .line 2907
    :cond_22
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mVoiceIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_30

    .line 2908
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mVoiceIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAssistantIntentParam:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_30
    const-string/jumbo p0, "voice open app"

    .line 2910
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_36} :catch_37

    goto :goto_4c

    :catch_37
    move-exception p0

    .line 2912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: pendingIntent e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    return-void
.end method

.method private tryKeyguardDone()V
    .registers 2

    .line 2000
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    if-nez v0, :cond_10

    .line 2001
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    goto :goto_20

    .line 2002
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 2003
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2004
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method private updateActivityLockScreenState(ZZ)V
    .registers 4

    .line 2138
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5eut-TA6Yee7TYJOtzflkZDg_6Y;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5eut-TA6Yee7TYJOtzflkZDg_6Y;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateInputRestricted()V
    .registers 2

    .line 1497
    monitor-enter p0

    .line 1498
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1499
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .registers 7

    .line 1503
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    .line 1504
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v1, v0, :cond_34

    .line 1505
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 1506
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_34

    .line 1508
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 1510
    :try_start_1c
    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_31

    :catch_20
    move-exception v3

    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onDeviceProvisioned"

    .line 1512
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1513
    instance-of v3, v3, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_31

    .line 1514
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_34
    return-void
.end method

.method private wakeUpAndStartActivityAfterKeyguardExit()V
    .registers 7

    .line 2918
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzGestureHelper;->getLaunchGestureUnlocked()I

    move-result v0

    .line 2919
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    iget-boolean v1, v1, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    const-wide/16 v2, 0x30

    const/16 v4, 0x1f9

    if-eqz v1, :cond_22

    const-string v1, "KeyguardViewMediator"

    const-string/jumbo v5, "start keyguard exit anination and wake up for slide up gesuter"

    .line 2920
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2922
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    if-lez v0, :cond_40

    .line 2925
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_34

    .line 2926
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2927
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2929
    :cond_34
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    const-wide/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .registers 4

    .line 2678
    monitor-enter p0

    .line 2679
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3a

    .line 2681
    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 2682
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    .line 2683
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    .line 2684
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2685
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 2684
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V

    .line 2686
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2f} :catch_30
    .catchall {:try_start_6 .. :try_end_2f} :catchall_3a

    goto :goto_38

    :catch_30
    move-exception p1

    :try_start_31
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call to IKeyguardStateCallback"

    .line 2688
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2690
    :goto_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1627
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 4

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1484
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "  mSystemReady: "

    .line 2556
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mBootCompleted: "

    .line 2557
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mBootSendUserPresent: "

    .line 2558
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mExternallyEnabled: "

    .line 2559
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mShuttingDown: "

    .line 2560
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mNeedToReshowWhenReenabled: "

    .line 2561
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mShowing: "

    .line 2562
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mInputRestricted: "

    .line 2563
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mOccluded: "

    .line 2564
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDelayedShowingSequence: "

    .line 2565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mExitSecureCallback: "

    .line 2566
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mDeviceInteractive: "

    .line 2567
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mGoingToSleep: "

    .line 2568
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mHiding: "

    .line 2569
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDozing: "

    .line 2570
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAodShowing: "

    .line 2571
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mWaitingUntilKeyguardVisible: "

    .line 2572
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mKeyguardDonePending: "

    .line 2573
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mHideAnimationRun: "

    .line 2574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mPendingReset: "

    .line 2575
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mPendingLock: "

    .line 2576
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mWakeAndUnlocking: "

    .line 2577
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDrawnCallback: "

    .line 2578
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 2551
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .registers 1

    .line 2547
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object p0
.end method

.method public isHiding()Z
    .registers 1

    .line 1450
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    return p0
.end method

.method public isInputRestricted()Z
    .registers 2

    .line 1493
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

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

.method public isSecure()Z
    .registers 2

    .line 1709
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isSecure(I)Z
    .registers 3

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1714
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isShowing()Z
    .registers 1

    .line 2739
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return p0
.end method

.method public isShowingAndNotOccluded()Z
    .registers 2

    .line 1434
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public keyguardDone()V
    .registers 3

    const-string v0, "KeyguardViewMediator#keyguardDone"

    .line 1880
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "keyguardDone()"

    .line 1881
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    const v0, 0x11170

    const/4 v1, 0x2

    .line 1883
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1884
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1885
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1886
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public synthetic lambda$handleKeyguardDone$0$KeyguardViewMediator(I)V
    .registers 3

    .line 2017
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2018
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardDismissed(I)V

    :cond_11
    return-void
.end method

.method public synthetic lambda$new$4$KeyguardViewMediator()V
    .registers 2

    const/4 v0, 0x0

    .line 2248
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 2249
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method public synthetic lambda$notifyDefaultDisplayCallbacks$5$KeyguardViewMediator()V
    .registers 1

    .line 2644
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {p0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    return-void
.end method

.method public synthetic lambda$playSound$2$KeyguardViewMediator(I)V
    .registers 10

    .line 2121
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2123
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    move v2, p1

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    .line 2125
    monitor-enter p0

    .line 2126
    :try_start_1a
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    .line 2127
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public synthetic lambda$sendUserPresentBroadcast$1$KeyguardViewMediator(Landroid/os/UserManager;Landroid/os/UserHandle;I)V
    .registers 8

    .line 2069
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p2, :cond_1c

    aget v1, p1, v0

    .line 2070
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2072
    :cond_1c
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    return-void
.end method

.method mustNotUnlockCurrentUser()Z
    .registers 2

    .line 764
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 765
    :cond_e
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public onBootCompleted()V
    .registers 2

    .line 2504
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2505
    monitor-enter p0

    const/4 v0, 0x1

    .line 2506
    :try_start_7
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 2507
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_10

    .line 2508
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2510
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onDreamingStarted()V
    .registers 3

    .line 1281
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    .line 1282
    monitor-enter p0

    .line 1283
    :try_start_a
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1284
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1285
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 1287
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onDreamingStopped()V
    .registers 2

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    .line 1295
    monitor-enter p0

    .line 1296
    :try_start_a
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_11

    .line 1297
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1299
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onFinishedGoingToSleep(IZ)V
    .registers 9

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishedGoingToSleep("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 1030
    invoke-virtual {v0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->setScreenOn(Z)V

    .line 1032
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasMeizuLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mResetFaceState:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getLiveWallpaperAnimationTime()I

    move-result v3

    add-int/lit16 v3, v3, 0x96

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4d

    .line 1035
    :cond_44
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceRecognitionSucceeded(Z)V

    .line 1038
    :goto_4d
    monitor-enter p0

    .line 1039
    :try_start_4e
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1040
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 1041
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 1043
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1044
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1046
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyFinishedGoingToSleep()V

    if-eqz p2, :cond_a2

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-virtual {v0}, Lcom/flyme/systemui/power/DoublePowerController;->canStartDoublePowerActivity()Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "KeyguardViewMediator"

    const-string v2, "Camera gesture was triggered, preventing Keyguard locking."

    .line 1049
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-virtual {v0}, Lcom/flyme/systemui/power/DoublePowerController;->getDoublePowerType()Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    move-result-object v0

    sget-object v2, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->CAMERA:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    if-ne v0, v2, :cond_8a

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCameraGestureTrigger(Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStopCamera()V

    .line 1058
    :cond_8a
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    const-string v5, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK"

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1061
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 1062
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 1066
    :cond_a2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-virtual {v0}, Lcom/flyme/systemui/power/DoublePowerController;->supportDoublePower()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1068
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    if-eqz v0, :cond_b3

    .line 1069
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1070
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 1073
    :cond_b3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_bd

    const/4 v0, 0x0

    .line 1074
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1075
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 1082
    :cond_bd
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    if-nez v0, :cond_c6

    if-nez p2, :cond_c6

    .line 1083
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    .line 1086
    :cond_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_4e .. :try_end_c7} :catchall_e8

    .line 1087
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchFinishedGoingToSleep(I)V

    .line 1090
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    iput-boolean v1, p1, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    .line 1091
    invoke-virtual {p1, v1}, Lcom/meizu/keyguard/MzGestureHelper;->setLaunchAppUnlocked(I)V

    .line 1094
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz p1, :cond_e7

    const-string p1, "demoMode"

    const-string p2, "onScreenoff and playVideo and delay : 5000"

    .line 1095
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x1388

    .line 1096
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playVideoLocked(J)V

    :cond_e7
    return-void

    :catchall_e8
    move-exception p1

    .line 1086
    :try_start_e9
    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw p1
.end method

.method public onScreenTurnedOff()V
    .registers 1

    .line 1257
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOff()V

    .line 1258
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 2

    const-string v0, "KeyguardViewMediator#onScreenTurnedOn"

    .line 1250
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOn()V

    .line 1252
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1253
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 3

    const-string v0, "KeyguardViewMediator#onScreenTurningOn"

    .line 1244
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1245
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1246
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .registers 1

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 12

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartedGoingToSleep("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.boot_completed"

    .line 954
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 955
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->initFaceRecognition()V

    .line 957
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    .line 959
    monitor-enter p0

    const/4 v0, 0x0

    .line 960
    :try_start_38
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    const/4 v1, 0x1

    .line 961
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 966
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 967
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 968
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v3

    if-nez v3, :cond_54

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 969
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_52

    goto :goto_54

    :cond_52
    move v3, v0

    goto :goto_55

    :cond_54
    :goto_54
    move v3, v1

    .line 970
    :goto_55
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v4

    .line 971
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    .line 972
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v7, 0x0

    if-eqz v6, :cond_83

    const-string v2, "KeyguardViewMediator"

    const-string v3, "pending exit secure callback cancelled"

    .line 973
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_38 .. :try_end_6b} :catchall_e6

    .line 975
    :try_start_6b
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_70} :catch_71
    .catchall {:try_start_6b .. :try_end_70} :catchall_e6

    goto :goto_79

    :catch_71
    move-exception v0

    :try_start_72
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    .line 977
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    :goto_79
    iput-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 980
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v0, :cond_c3

    .line 981
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto :goto_c3

    .line 983
    :cond_83
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_96

    .line 986
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-virtual {v0}, Lcom/flyme/systemui/power/DoublePowerController;->supportDoublePower()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 987
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    goto :goto_c3

    .line 989
    :cond_92
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_c3

    :cond_96
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9f

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gtz v0, :cond_a4

    :cond_9f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_aa

    if-nez v3, :cond_aa

    .line 994
    :cond_a4
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    .line 995
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    goto :goto_c3

    .line 996
    :cond_aa
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 999
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-virtual {v0}, Lcom/flyme/systemui/power/DoublePowerController;->supportDoublePower()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1000
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    goto :goto_c3

    .line 1002
    :cond_bd
    invoke-direct {p0, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1003
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1008
    :cond_c3
    :goto_c3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_ca

    .line 1009
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1011
    :cond_ca
    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_72 .. :try_end_cb} :catchall_e6

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    if-eqz v0, :cond_d9

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1022
    :cond_d9
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedGoingToSleep(I)V

    .line 1023
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedGoingToSleep()V

    return-void

    :catchall_e6
    move-exception p1

    .line 1011
    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw p1
.end method

.method public onStartedWakingUp()V
    .registers 5

    const-string v0, "KeyguardViewMediator#onStartedWakingUp"

    .line 1201
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1204
    monitor-enter p0

    const/4 v0, 0x1

    .line 1205
    :try_start_7
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1206
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1207
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardForChildProfilesLocked()V

    const-string v1, "KeyguardViewMediator"

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartedWakingUp, seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedWakingUp()V

    .line 1210
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_91

    .line 1211
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp()V

    .line 1212
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1214
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    if-eqz v1, :cond_3e

    .line 1215
    invoke-virtual {v1, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->setScreenOn(Z)V

    .line 1217
    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasMeizuLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mResetFaceState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5c

    .line 1220
    :cond_52
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceRecognitionSucceeded(Z)V

    .line 1222
    :goto_5c
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceRecognitionController:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceRecognition()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1234
    :cond_76
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_8d

    .line 1235
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1236
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string p0, "demoMode"

    const-string v0, "onScreenoOn and remove playIntent"

    .line 1237
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_8d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_91
    move-exception v0

    .line 1210
    :try_start_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method

.method public onSystemReady()V
    .registers 2

    .line 931
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWakeAndUnlocking()V
    .registers 2

    const-string v0, "KeyguardViewMediator#onWakeAndUnlocking"

    .line 2514
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2515
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2516
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 2517
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .registers 20

    move-object v0, p0

    move-object v2, p1

    .line 2526
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2528
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 2531
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public removeExitGuestModeMsg()V
    .registers 3

    .line 2743
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2744
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3

    .line 1728
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 1729
    monitor-enter p0

    .line 1730
    :try_start_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    .line 1731
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public setDozing(Z)V
    .registers 3

    .line 2585
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 2588
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    .line 2589
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .registers 2

    .line 2895
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .registers 5

    .line 1308
    monitor-enter p0

    :try_start_1
    const-string v0, "KeyguardViewMediator"

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz p1, :cond_32

    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    .line 1315
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1316
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->initFaceRecognition()V

    :cond_32
    const/4 v0, 0x1

    if-nez p1, :cond_56

    .line 1320
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_56

    .line 1321
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz p1, :cond_46

    const-string p1, "KeyguardViewMediator"

    const-string v0, "in process of verifyUnlock request, ignoring"

    .line 1322
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    monitor-exit p0

    return-void

    :cond_46
    const-string p1, "KeyguardViewMediator"

    const-string v1, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    .line 1329
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1332
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1333
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto :goto_b6

    :cond_56
    if-eqz p1, :cond_b6

    .line 1334
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz p1, :cond_b6

    const-string p1, "KeyguardViewMediator"

    const-string v1, "previously hidden, reshowing, reenabling status bar expansion"

    .line 1336
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1338
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1339
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1341
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_89

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onKeyguardExitResult(false), resetting"

    .line 1342
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_b8

    .line 1344
    :try_start_75
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7a} :catch_7b
    .catchall {:try_start_75 .. :try_end_7a} :catchall_b8

    goto :goto_83

    :catch_7b
    move-exception p1

    :try_start_7c
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1346
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1348
    :goto_83
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1349
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_b6

    .line 1351
    :cond_89
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1356
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1357
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "KeyguardViewMediator"

    const-string/jumbo v0, "waiting until mWaitingUntilKeyguardVisible is false"

    .line 1358
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_9f
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_a1
    .catchall {:try_start_7c .. :try_end_a1} :catchall_b8

    if-eqz p1, :cond_af

    .line 1361
    :try_start_a3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_b8

    goto :goto_9f

    .line 1363
    :catch_a7
    :try_start_a7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9f

    :cond_af
    const-string p1, "KeyguardViewMediator"

    const-string v0, "done waiting for mWaitingUntilKeyguardVisible"

    .line 1366
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_b6
    :goto_b6
    monitor-exit p0

    return-void

    :catchall_b8
    move-exception p1

    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_a7 .. :try_end_ba} :catchall_b8

    throw p1
.end method

.method public setOccluded(ZZ)V
    .registers 5

    const-string v0, "KeyguardViewMediator#setOccluded"

    .line 1441
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOccluded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1445
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1446
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setPulsing(Z)V
    .registers 2

    .line 2596
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPulsing:Z

    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 2

    .line 1718
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public start()V
    .registers 4

    .line 900
    monitor-enter p0

    .line 901
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V

    .line 902
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_75

    .line 903
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "sys.boot_completed"

    .line 905
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 906
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->initFaceRecognition()V

    :cond_1c
    const-string v0, "gesture_manager"

    .line 909
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 908
    invoke-static {v0}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object v0

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gestureManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardViewMediator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4d

    :try_start_3e
    const-string v1, "KeyguardViewMediator"

    const-string v2, "gestureManager.registeCallback(mGestureCallback,KeyguardViewmediator)"

    .line 913
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

    const-string v2, "KeyguardViewmediator"

    invoke-interface {v0, v1, v2}, Landroid/view/IGestureManager;->registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V

    goto :goto_5d

    :cond_4d
    const-string v0, "KeyguardViewMediator"

    const-string v1, "can not get gesture service"

    .line 916
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_54} :catch_55

    goto :goto_5d

    :catch_55
    move-exception v0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "IGestureManager threw RemoteException"

    .line 919
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    :goto_5d
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/MzGestureHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/MzGestureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    .line 922
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/power/DoublePowerController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/power/DoublePowerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

    .line 923
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDoublePowerController:Lcom/flyme/systemui/power/DoublePowerController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/power/DoublePowerController;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    return-void

    :catchall_75
    move-exception v0

    .line 902
    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 13

    const-string v0, "KeyguardViewMediator#startKeyguardExitAnimation"

    .line 2535
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2536
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2538
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2539
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public userActivity()V
    .registers 4

    .line 760
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .registers 5

    const-string v0, "KeyguardViewMediator#verifyUnlock"

    .line 1376
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1377
    monitor-enter p0

    :try_start_6
    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "verifyUnlock"

    .line 1378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    const-string v0, "KeyguardViewMediator"

    const-string v2, "ignoring because device isn\'t provisioned"

    .line 1381
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_7f

    .line 1383
    :try_start_1c
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_7f

    goto :goto_7a

    :catch_20
    move-exception p1

    :try_start_21
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1385
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 1387
    :cond_29
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_42

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock called when not externally disabled"

    .line 1391
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_7f

    .line 1393
    :try_start_35
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_7f

    goto :goto_7a

    :catch_39
    move-exception p1

    :try_start_3a
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1395
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 1397
    :cond_42
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_7f

    if-eqz v0, :cond_53

    .line 1400
    :try_start_46
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_7f

    goto :goto_7a

    :catch_4a
    move-exception p1

    :try_start_4b
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1402
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 1404
    :cond_53
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_6e

    const/4 v0, 0x1

    .line 1408
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1409
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1410
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_7f

    .line 1412
    :try_start_61
    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_7f

    goto :goto_7a

    :catch_65
    move-exception p1

    :try_start_66
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1414
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_7f

    goto :goto_7a

    .line 1421
    :cond_6e
    :try_start_6e
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_7f

    goto :goto_7a

    :catch_72
    move-exception p1

    :try_start_73
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1423
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1426
    :goto_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_7f

    .line 1427
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_7f
    move-exception p1

    .line 1426
    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p1
.end method

.method public wakeUp()V
    .registers 3

    .line 2886
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    const-string p0, "KeyguardViewMediator"

    const-string/jumbo v0, "wakeUp"

    .line 2887
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
