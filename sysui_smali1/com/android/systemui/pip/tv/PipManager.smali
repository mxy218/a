.class public Lcom/android/systemui/pip/tv/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipManager$MediaListener;,
        Lcom/android/systemui/pip/tv/PipManager$Listener;,
        Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private static sSettingsPackageAndClassNamePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClosePipRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private mCustomActions:Landroid/content/pm/ParceledListSlice;

.field private mDefaultPipBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mImeHeightAdjustment:I

.field private mImeVisible:Z

.field private mInitialized:Z

.field private mLastOrientation:I

.field private mLastPackagesResourceGranted:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/tv/PipManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/tv/PipManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMenuModePipBounds:Landroid/graphics/Rect;

.field private mPinnedStackId:I

.field private final mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

.field private mPipBounds:Landroid/graphics/Rect;

.field private mPipComponentName:Landroid/content/ComponentName;

.field private mPipMediaController:Landroid/media/session/MediaController;

.field private mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

.field private mPipTaskId:I

.field private final mResizePinnedStackRunnable:Ljava/lang/Runnable;

.field private mResumeResizePinnedStackRunnableState:I

.field private mSettingsPipBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mSuspendPipResizingReason:I

.field private mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "PipManager"

    const/4 v1, 0x3

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 119
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    .line 128
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 131
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    .line 142
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    .line 144
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$1;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$2;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$3;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$4;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 636
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$5;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipManager;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/tv/PipManager;)I
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/pip/tv/PipManager;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/pip/tv/PipManager;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/pip/tv/PipManager;)Z
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/pip/tv/PipManager;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipManager;[Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->handleMediaResourceGranted([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/pip/tv/PipManager;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->showPipMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updateMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipManager;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/pip/tv/PipManager;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/tv/PipManager;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeVisible:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/pip/tv/PipManager;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeVisible:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/tv/PipManager;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeHeightAdjustment:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/pip/tv/PipManager;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeHeightAdjustment:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method private closePipInternal(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    const/4 v1, -0x1

    .line 349
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    const/4 v2, 0x0

    .line 350
    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 351
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    if-eqz p1, :cond_2a

    .line 354
    :try_start_12
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    invoke-interface {p1, v2}, Landroid/app/IActivityTaskManager;->removeStack(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1e
    .catchall {:try_start_12 .. :try_end_19} :catchall_1c

    .line 358
    :goto_19
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    goto :goto_2a

    :catchall_1c
    move-exception p1

    goto :goto_27

    :catch_1e
    move-exception p1

    :try_start_1f
    const-string v2, "PipManager"

    const-string v3, "removeStack failed"

    .line 356
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    goto :goto_19

    .line 358
    :goto_27
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    throw p1

    .line 361
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_32
    if-ltz p1, :cond_42

    .line 362
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipActivityClosed()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_32

    .line 364
    :cond_42
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/pip/tv/PipManager;
    .registers 1

    .line 753
    sget-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    if-nez v0, :cond_b

    .line 754
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/pip/tv/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 756
    :cond_b
    sget-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object v0
.end method

.method private getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .registers 3

    .line 522
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception p0

    const-string v0, "PipManager"

    const-string v1, "getStackInfo failed"

    .line 525
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method private getState()I
    .registers 2

    .line 455
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_7

    .line 456
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return p0

    .line 458
    :cond_7
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p0
.end method

.method private handleMediaResourceGranted([Ljava/lang/String;)V
    .registers 11

    .line 531
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    if-nez v0, :cond_9

    .line 532
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    goto :goto_31

    .line 535
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 536
    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_11
    if-ge v3, v2, :cond_29

    aget-object v5, v0, v3

    .line 537
    array-length v6, p1

    move v7, v1

    :goto_17
    if-ge v7, v6, :cond_26

    aget-object v8, p1, v7

    .line 538
    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_23

    const/4 v4, 0x1

    goto :goto_26

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_29
    move v1, v4

    .line 545
    :cond_2a
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-nez v1, :cond_31

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    :cond_31
    :goto_31
    return-void
.end method

.method private isSettingsShown()Z
    .registers 7

    const/4 v0, 0x0

    .line 615
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    .line 616
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_49

    if-eqz v2, :cond_f

    return v0

    .line 623
    :cond_f
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 624
    sget-object v2, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 625
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 626
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 627
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_47

    .line 628
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_47
    return v1

    :cond_48
    return v0

    :catch_49
    move-exception p0

    const-string v1, "PipManager"

    const-string v2, "Failed to detect top activity"

    .line 620
    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static synthetic lambda$updatePipVisibility$0(Z)V
    .registers 2

    .line 761
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setPipVisibility(Z)V

    return-void
.end method

.method private loadConfigurationsAndApply(Landroid/content/res/Configuration;)V
    .registers 3

    .line 303
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_9

    .line 306
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    return-void

    .line 310
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 311
    sget v0, Lcom/android/systemui/R$string;->pip_settings_bounds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    .line 313
    sget v0, Lcom/android/systemui/R$string;->pip_menu_bounds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    goto :goto_32

    :cond_30
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    :goto_32
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    if-nez p1, :cond_3c

    const/4 p1, 0x0

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x1

    :goto_3d
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    return-void
.end method

.method private showPipMenu()V
    .registers 4

    .line 473
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "PipManager"

    const-string/jumbo v1, "showPipMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x2

    .line 474
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 475
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_27

    .line 476
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onShowPipMenu()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 478
    :cond_27
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/pip/tv/PipMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 479
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    const-string v2, "custom_actions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 481
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateMediaController(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2e

    .line 554
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_2e

    .line 555
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_2e

    .line 556
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 559
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2f

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_2e
    const/4 v1, 0x0

    .line 565
    :goto_2f
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eq p1, v1, :cond_62

    .line 566
    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 567
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3d
    if-ltz p1, :cond_4d

    .line 568
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-interface {v0}, Lcom/android/systemui/pip/tv/PipManager$MediaListener;->onMediaControllerChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3d

    .line 570
    :cond_4d
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_5b

    .line 571
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_62

    .line 574
    :cond_5b
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private updatePipVisibility(Z)V
    .registers 3

    .line 760
    const-class p0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$B3cwmVrFFG3e6pUajgQn8FpuCeM;

    invoke-direct {v0, p1}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$B3cwmVrFFG3e6pUajgQn8FpuCeM;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .registers 2

    .line 488
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .registers 2

    .line 502
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closePip()V
    .registers 2

    const/4 v0, 0x1

    .line 344
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method getMediaController()Landroid/media/session/MediaController;
    .registers 1

    .line 583
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method getPlaybackState()I
    .registers 12

    .line 592
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x2

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_55

    .line 595
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_33

    const/16 v2, 0x8

    if-eq v0, v2, :cond_33

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    const/4 v2, 0x4

    if-eq v0, v2, :cond_33

    const/4 v2, 0x5

    if-eq v0, v2, :cond_33

    const/16 v2, 0x9

    if-eq v0, v2, :cond_33

    const/16 v2, 0xa

    if-ne v0, v2, :cond_31

    goto :goto_33

    :cond_31
    move v0, v3

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v4

    .line 603
    :goto_34
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    if-nez v0, :cond_4a

    const-wide/16 v9, 0x4

    and-long/2addr v9, v5

    cmp-long p0, v9, v7

    if-eqz p0, :cond_4a

    return v4

    :cond_4a
    if-eqz v0, :cond_55

    const-wide/16 v9, 0x2

    and-long v4, v5, v9

    cmp-long p0, v4, v7

    if-eqz p0, :cond_55

    return v3

    :cond_55
    :goto_55
    return v1
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 11

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    .line 243
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    .line 245
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 246
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 247
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 248
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 249
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    .line 250
    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    sget-object v1, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    const-string v2, "PipManager"

    const/4 v3, 0x0

    if-nez v1, :cond_bc

    .line 255
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$array;->tv_pip_settings_class_name:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    if-eqz v1, :cond_bc

    move v4, v3

    .line 259
    :goto_57
    array-length v5, v1

    if-ge v4, v5, :cond_bc

    .line 261
    aget-object v5, v1, v4

    const-string v6, "/"

    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 263
    array-length v6, v5

    const/4 v7, 0x0

    if-eq v6, v0, :cond_95

    const/4 v8, 0x2

    if-eq v6, v8, :cond_6a

    goto :goto_9b

    .line 268
    :cond_6a
    aget-object v6, v5, v0

    if-eqz v6, :cond_9b

    .line 269
    aget-object v6, v5, v3

    .line 270
    aget-object v7, v5, v0

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_90

    .line 272
    :cond_8e
    aget-object v5, v5, v0

    .line 269
    :goto_90
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    goto :goto_9b

    .line 265
    :cond_95
    aget-object v5, v5, v3

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    :cond_9b
    :goto_9b
    if-eqz v7, :cond_a3

    .line 277
    sget-object v5, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b9

    .line 279
    :cond_a3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring malformed settings name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 286
    :cond_bc
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 287
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 288
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 294
    :try_start_d9
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    invoke-interface {v0, v3, v1}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_e0} :catch_e1

    goto :goto_e7

    :catch_e1
    move-exception v0

    const-string v1, "Failed to register pinned stack listener"

    .line 296
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    :goto_e7
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {v0, p1}, Lcom/android/systemui/pip/tv/PipNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    return-void
.end method

.method public isPipShown()Z
    .registers 1

    .line 516
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method movePipToFullscreen()V
    .registers 3

    const/4 v0, -0x1

    .line 372
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1b

    .line 374
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onMoveToFullscreen()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 377
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 327
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 328
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .registers 2

    .line 509
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resizePinnedStack(I)V
    .registers 11

    .line 409
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    const-string v1, "PipManager"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizePinnedStack() state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    :cond_1f
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    const/4 v2, 0x1

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 411
    :goto_27
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2e
    if-ltz v3, :cond_3e

    .line 412
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v4}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipResizeAboutToStart()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    .line 414
    :cond_3e
    iget v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v3, :cond_69

    .line 415
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 416
    sget-boolean p1, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz p1, :cond_68

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resizePinnedStack() deferring mSuspendPipResizingReason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mResumeResizePinnedStackRunnableState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void

    .line 422
    :cond_69
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 423
    iget p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    if-eqz p1, :cond_83

    if-eq p1, v2, :cond_7e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_79

    .line 439
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_89

    .line 433
    :cond_79
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_89

    .line 436
    :cond_7e
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_89

    :cond_83
    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_89

    return-void

    :cond_89
    :goto_89
    const/4 v8, -0x1

    .line 444
    :try_start_8a
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityTaskManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_96} :catch_97

    goto :goto_9d

    :catch_97
    move-exception p0

    const-string p1, "resizeStack failed"

    .line 447
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d
    return-void
.end method

.method public resumePipResizing(I)V
    .registers 4

    .line 395
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    return-void

    .line 398
    :cond_6
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePipResizing() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 399
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    .line 398
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2d
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    .line 401
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 3

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x2

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    :cond_b
    return-void
.end method

.method public suspendPipResizing(I)V
    .registers 4

    .line 385
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suspendPipResizing() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 386
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    .line 385
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_28
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    return-void
.end method
