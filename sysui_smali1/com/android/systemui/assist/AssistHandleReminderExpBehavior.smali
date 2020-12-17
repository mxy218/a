.class final Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

.field private static final DEFAULT_LEARNING_TIME_MS:J

.field private static final DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

.field private static final DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J


# instance fields
.field private final mActivityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mClock:Landroidx/slice/Clock;

.field private mConsecutiveTaskSwitches:I

.field private mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDefaultHome:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAwake:Z

.field private mIsDozing:Z

.field private mIsLauncherShowing:Z

.field private mIsLearned:Z

.field private mIsNavBarHidden:Z

.field private mLastLearningTimestamp:J

.field private mLearnedHintLastShownEpochDay:J

.field private mLearningCount:I

.field private mLearningTimeElapsed:J

.field private mOnLockscreen:Z

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private final mOverviewProxyService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

.field private final mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

.field private mRunningTaskId:I

.field private final mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mWakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_LEARNING_TIME_MS:J

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 82
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/slice/Clock;Landroid/os/Handler;Lcom/android/systemui/assist/PhenotypeHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .registers 10
    .param p1  # Landroidx/slice/Clock;
        .annotation runtime Ljavax/inject/Named;
            value = "uptime"
        .end annotation
    .end param
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "assist_handle_thread"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Clock;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 102
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 114
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$3;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 126
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 148
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$5;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$pwcnWUhYSvHUPTaX_vnnVqcvKYA;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$pwcnWUhYSvHUPTaX_vnnVqcvKYA;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    .line 197
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mClock:Landroidx/slice/Clock;

    .line 198
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    .line 199
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    .line 200
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    .line 201
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    .line 202
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Ldagger/Lazy;

    .line 203
    iput-object p7, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 204
    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPackageManagerWrapper:Ldagger/Lazy;

    .line 205
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    .line 206
    sget-object p1, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_48
    if-ge p3, p2, :cond_54

    aget-object p4, p1, p3

    .line 207
    iget-object p5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p5, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_48

    :cond_54
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleStatusBarStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleDozingChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;ILandroid/content/ComponentName;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleTaskStackTopChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleOverviewShown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleSystemUiStateChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleWakefullnessChanged(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroid/content/ComponentName;
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private callbackForCurrentState(Z)V
    .registers 3

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->updateLearningStatus()V

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLearned:Z

    if-eqz v0, :cond_b

    .line 371
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForLearnedState(Z)V

    goto :goto_e

    .line 373
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForUnlearnedState()V

    :goto_e
    return-void
.end method

.method private callbackForLearnedState(Z)V
    .registers 6

    .line 378
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_5

    return-void

    .line 382
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isFullyAwake()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-nez v0, :cond_3f

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowWhenTaught()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_3f

    :cond_1a
    if-eqz p1, :cond_44

    .line 385
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 386
    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_44

    .line 387
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_37

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "reminder_exp_learned_hint_last_shown"

    .line 388
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 393
    :cond_37
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    .line 394
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    goto :goto_44

    .line 383
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :cond_44
    :goto_44
    return-void
.end method

.method private callbackForUnlearnedState()V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_5

    return-void

    .line 404
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isFullyAwake()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_44

    .line 406
    :cond_16
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-eqz v0, :cond_20

    .line 407
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndStay()V

    goto :goto_49

    .line 408
    :cond_20
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz v0, :cond_2a

    .line 409
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    goto :goto_49

    .line 410
    :cond_2a
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 411
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedShortDelayMs()J

    move-result-wide v1

    const/4 p0, 0x0

    .line 411
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGoDelayed(JZ)V

    goto :goto_49

    .line 414
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedLongDelayMs()J

    move-result-wide v2

    .line 414
    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGoDelayed(JZ)V

    goto :goto_49

    .line 405
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :goto_49
    return-void
.end method

.method private getCurrentDefaultHome()Landroid/content/ComponentName;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPackageManagerWrapper:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    :cond_14
    const/high16 p0, -0x80000000

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, p0

    :goto_1c
    move-object p0, v1

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 288
    iget v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v4, v2, :cond_36

    .line 289
    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 290
    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1d

    :cond_36
    if-ne v4, v2, :cond_1d

    goto :goto_1c

    :cond_39
    return-object p0
.end method

.method private getLearningCount()I
    .registers 3

    .line 466
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_learn_count"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getLearningTimeMs()J
    .registers 4

    .line 460
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_LEARNING_TIME_MS:J

    const-string v2, "assist_handles_learn_time_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayResetTimeoutMs()J
    .registers 4

    .line 484
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J

    const-string v2, "assist_handles_show_and_go_delay_reset_timeout_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayedLongDelayMs()J
    .registers 4

    .line 478
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

    const-string v2, "assist_handles_show_and_go_delayed_long_delay_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayedShortDelayMs()J
    .registers 4

    .line 472
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_show_and_go_delayed_short_delay_ms"

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowWhenTaught()Z
    .registers 3

    .line 508
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_show_when_taught"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnApps()Z
    .registers 3

    .line 502
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_suppress_on_apps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnLauncher()Z
    .registers 3

    .line 496
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_suppress_on_launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnLockscreen()Z
    .registers 3

    .line 490
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_suppress_on_lockscreen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private handleDozingChanged(Z)V
    .registers 3

    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 314
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 315
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    const/4 p1, 0x0

    .line 316
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleOverviewShown()V
    .registers 2

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleStatusBarStateChanged(I)V
    .registers 3

    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->onLockscreen(I)Z

    move-result p1

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-ne v0, p1, :cond_9

    return-void

    .line 304
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 305
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    xor-int/lit8 p1, p1, 0x1

    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleSystemUiStateChanged(I)V
    .registers 4

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    move p1, v0

    .line 348
    :goto_8
    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-ne v1, p1, :cond_d

    return-void

    .line 352
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 353
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    .line 354
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleTaskStackTopChanged(ILandroid/content/ComponentName;)V
    .registers 4
    .param p2  # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 330
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    if-eq v0, p1, :cond_26

    if-nez p2, :cond_7

    goto :goto_26

    .line 334
    :cond_7
    iput p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    .line 335
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    .line 336
    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz p1, :cond_19

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    goto :goto_22

    .line 339
    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->rescheduleConsecutiveTaskSwitchesReset()V

    .line 340
    iget p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    :goto_22
    const/4 p1, 0x0

    .line 342
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    :cond_26
    :goto_26
    return-void
.end method

.method private handleWakefullnessChanged(Z)V
    .registers 3

    .line 320
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 324
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 325
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    const/4 p1, 0x0

    .line 326
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private isFullyAwake()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isSuppressed()Z
    .registers 2

    .line 420
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-eqz v0, :cond_9

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLockscreen()Z

    move-result p0

    return p0

    .line 422
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz v0, :cond_12

    .line 423
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLauncher()Z

    move-result p0

    return p0

    .line 425
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnApps()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pwcnWUhYSvHUPTaX_vnnVqcvKYA(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    return-void
.end method

.method private onLockscreen(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private rescheduleConsecutiveTaskSwitchesReset()V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayResetTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetConsecutiveTaskSwitches()V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 447
    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    return-void
.end method

.method private updateLearningStatus()V
    .registers 7

    .line 430
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mClock:Landroidx/slice/Clock;

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 435
    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    iget-wide v4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    .line 436
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    .line 438
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningCount()I

    move-result v1

    if-ge v0, v1, :cond_2b

    iget-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningTimeMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLearned:Z

    .line 441
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$b5N62AJXKgTBT_CGtHJhp-XuFas;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$b5N62AJXKgTBT_CGtHJhp-XuFas;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current AssistHandleReminderExpBehavior State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mOnLockscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mRunningTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mDefaultHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsNavBarHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsLauncherShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mConsecutiveTaskSwitches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsLearned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLearned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLastLearningTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLearningTimeElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLearningCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLearnedHintLastShownEpochDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mAssistHandleCallbacks present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-eqz v1, :cond_16c

    const/4 v1, 0x1

    goto :goto_16d

    :cond_16c
    const/4 v1, 0x0

    :goto_16d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   Phenotype Flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "assist_handles_learn_time_ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningTimeMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_learn_count"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delayed_short_delay_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedShortDelayMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delayed_long_delay_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedLongDelayMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delay_reset_timeout_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayResetTimeoutMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_lockscreen"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLockscreen()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_launcher"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLauncher()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_apps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnApps()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "assist_handles_show_when_taught"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowWhenTaught()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 565
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateLearningStatus$0$AssistHandleReminderExpBehavior()V
    .registers 4

    .line 441
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 442
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    const-string p0, "reminder_exp_learning_time_elapsed"

    .line 441
    invoke-static {v0, p0, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public onAssistHandlesRequested()V
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-eqz v0, :cond_17

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isFullyAwake()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-nez v0, :cond_17

    .line 273
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    :cond_17
    return-void
.end method

.method public onAssistantGesturePerformed()V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 264
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    int-to-long v1, v1

    const-string p0, "reminder_exp_learning_event_count"

    .line 263
    invoke-static {v0, p0, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .registers 8

    .line 213
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    const/4 p2, 0x0

    .line 215
    iput p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->onLockscreen(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    .line 219
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    .line 220
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    .line 222
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_51

    move v0, p2

    goto :goto_53

    .line 223
    :cond_51
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_53
    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    .line 224
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_80

    const/4 v0, 0x1

    goto :goto_81

    :cond_80
    move v0, p2

    :goto_81
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "reminder_exp_learning_time_elapsed"

    .line 230
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reminder_exp_learning_event_count"

    .line 232
    invoke-static {v0, v3, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "reminder_exp_learned_hint_last_shown"

    .line 234
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    .line 236
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mClock:Landroidx/slice/Clock;

    invoke-interface {p1}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    .line 238
    invoke-direct {p0, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method public onModeDeactivated()V
    .registers 7

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_32

    .line 245
    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "reminder_exp_learning_time_elapsed"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 247
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "reminder_exp_learning_event_count"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "reminder_exp_learned_hint_last_shown"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 249
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 251
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method
