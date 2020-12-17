.class public Landroidx/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field static final TIMEOUT_MS:J = 0x2bcL
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;


# instance fields
.field private mDelayedPauseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mInitializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

.field private mPauseSent:Z

.field private final mRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private mResumedCounter:I

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-direct {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;-><init>()V

    sput-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 56
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 59
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 62
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 64
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$2;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$2;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method static init(Landroid/content/Context;)V
    .registers 2

    .line 103
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method activityPaused()V
    .registers 4

    .line 127
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 128
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_13

    .line 129
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method activityResumed()V
    .registers 3

    .line 115
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 116
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-ne v0, v1, :cond_20

    .line 117
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_19

    .line 118
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    goto :goto_20

    .line 121
    :cond_19
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method activityStarted()V
    .registers 3

    .line 107
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 108
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    if-eqz v0, :cond_18

    .line 109
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    :cond_18
    return-void
.end method

.method activityStopped()V
    .registers 2

    .line 134
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 135
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method

.method attach(Landroid/content/Context;)V
    .registers 4

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    .line 157
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 159
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$3;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$3;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method dispatchPauseIfNeeded()V
    .registers 2

    .line 139
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 141
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_e
    return-void
.end method

.method dispatchStopIfNeeded()V
    .registers 3

    .line 146
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    :cond_12
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 180
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method
