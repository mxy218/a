.class Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;,
        Lcom/android/server/am/UserController$UserProgressListener;
    }
.end annotation


# static fields
.field static final CONTINUE_USER_SWITCH_MSG:I = 0x14

.field static final FOREGROUND_PROFILE_CHANGED_MSG:I = 0x46

.field static final REPORT_LOCKED_BOOT_COMPLETE_MSG:I = 0x6e

.field static final REPORT_USER_SWITCH_COMPLETE_MSG:I = 0x50

.field static final REPORT_USER_SWITCH_MSG:I = 0xa

.field static final START_PROFILES_MSG:I = 0x28

.field static final START_USER_SWITCH_FG_MSG:I = 0x78

.field static final START_USER_SWITCH_UI_MSG:I = 0x3e8

.field static final SYSTEM_USER_CURRENT_MSG:I = 0x3c

.field static final SYSTEM_USER_START_MSG:I = 0x32

.field static final SYSTEM_USER_UNLOCK_MSG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e


# instance fields
.field volatile mBootCompleted:Z

.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private volatile mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDelayUserDataLocking:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLastActiveUsers:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMaxRunningUsers:I

.field private mStartedUserArray:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingFromSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSwitchingToSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private volatile mTargetUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfileGroupIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitchUiEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;

    .line 260
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 261
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .registers 7
    .param p1, "injector"  # Lcom/android/server/am/UserController$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 177
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 183
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 195
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v0, v2, v0

    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 200
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 206
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 212
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 215
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    .line 265
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 266
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 267
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 269
    new-instance v1, Lcom/android/server/am/UserState;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v1, v2}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 270
    .local v1, "uss":Lcom/android/server/am/UserState;
    iget-object v2, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v3, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 271
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 274
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 275
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/UserController;)Lcom/android/server/am/UserController$Injector;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/UserController;

    .line 125
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/UserController;

    .line 125
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/UserController;

    .line 125
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/UserController;

    .line 125
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method private dispatchForegroundProfileChanged(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1367
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1368
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1370
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1373
    goto :goto_16

    .line 1371
    :catch_15
    move-exception v2

    .line 1368
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1375
    .end local v1  # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1376
    return-void
.end method

.method private dispatchLockedBootComplete(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1392
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1393
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1395
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1398
    goto :goto_16

    .line 1396
    :catch_15
    move-exception v2

    .line 1393
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1400
    .end local v1  # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1401
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;I)V
    .registers 6
    .param p1, "restriction"  # Ljava/lang/String;
    .param p2, "userHandle"  # I

    .line 1934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_28

    .line 1935
    if-ltz p2, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 1936
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1940
    :cond_28
    :goto_28
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 340
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 24
    .param p1, "uss"  # Lcom/android/server/am/UserState;
    .param p2, "resultTo"  # Landroid/content/IIntentReceiver;

    .line 343
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 345
    .local v6, "userId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing user boot "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 348
    :try_start_23
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_14b

    if-eq v0, v2, :cond_31

    .line 349
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return-void

    .line 351
    :catchall_2d
    move-exception v0

    move v4, v6

    goto/16 :goto_14d

    :cond_31
    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_14b

    .line 357
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 358
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v6, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 360
    if-nez v6, :cond_86

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 361
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_86

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    long-to-int v0, v4

    .line 363
    .local v0, "uptimeSeconds":I
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "framework_locked_boot_completed"

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 365
    const/16 v4, 0x78

    .line 366
    .local v4, "MAX_UPTIME_SECONDS":I
    const/16 v5, 0x78

    if-le v0, v5, :cond_86

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishUserBoot took too long. uptimeSeconds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SystemServerTiming"

    invoke-static {v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v0  # "uptimeSeconds":I
    .end local v4  # "MAX_UPTIME_SECONDS":I
    :cond_86
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6e

    invoke-virtual {v0, v4, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    new-instance v0, Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    move-object v4, v0

    .line 375
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const/high16 v3, 0x9000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    .line 381
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 378
    move/from16 v20, v6

    .end local v6  # "userId":I
    .local v20, "userId":I
    move-object/from16 v6, p2

    move/from16 v19, v20

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_cc

    .line 357
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v20  # "userId":I
    .restart local v6  # "userId":I
    :cond_ca
    move/from16 v20, v6

    .line 386
    .end local v6  # "userId":I
    .restart local v20  # "userId":I
    :goto_cc
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    move/from16 v4, v20

    .end local v20  # "userId":I
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 387
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 388
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_118

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x4

    .line 389
    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (parent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): attempting unlock because parent is unlocked"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_146

    .line 394
    :cond_118
    if-nez v0, :cond_11d

    const-string v3, "<null>"

    goto :goto_123

    :cond_11d
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "parentId":Ljava/lang/String;
    :goto_123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): delaying unlock because parent is locked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0  # "parent":Landroid/content/pm/UserInfo;
    .end local v3  # "parentId":Ljava/lang/String;
    :goto_146
    goto :goto_14a

    .line 399
    :cond_147
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 401
    :goto_14a
    return-void

    .line 351
    .end local v4  # "userId":I
    .restart local v6  # "userId":I
    :catchall_14b
    move-exception v0

    move v4, v6

    .end local v6  # "userId":I
    .restart local v4  # "userId":I
    :goto_14d
    :try_start_14d
    monitor-exit v3
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14f

    throw v0

    :catchall_14f
    move-exception v0

    goto :goto_14d
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 28
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 523
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 524
    .local v6, "userId":I
    iget-object v1, v7, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_d
    iget-object v0, v7, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v2, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_fb

    if-eq v0, v8, :cond_21

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    return-void

    .line 527
    :catchall_1d
    move-exception v0

    move v14, v6

    goto/16 :goto_fd

    :cond_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_fb

    .line 528
    invoke-direct {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 529
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_29

    .line 530
    return-void

    .line 533
    :cond_29
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_30

    return-void

    .line 536
    :cond_30
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 538
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 539
    if-eqz v6, :cond_8b

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    move-object v10, v1

    .line 542
    const/high16 v2, 0x11000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    iget-object v9, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v11, 0x0

    new-instance v2, Lcom/android/server/am/UserController$1;

    move-object v12, v2

    invoke-direct {v2, v7, v0}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    .line 554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 555
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    .line 544
    move/from16 v25, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 560
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_8b
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-nez v6, :cond_cb

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 565
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_cb

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 567
    .local v1, "uptimeSeconds":I
    iget-object v2, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "framework_boot_completed"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 570
    .end local v1  # "uptimeSeconds":I
    :cond_cb
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v9, v1

    .line 571
    .local v9, "bootIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v9, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const/high16 v1, -0x77000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 578
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 579
    .local v11, "callingPid":I
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v9

    move v4, v6

    move v5, v10

    move v14, v6

    .end local v6  # "userId":I
    .local v14, "userId":I
    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    return-void

    .line 527
    .end local v0  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9  # "bootIntent":Landroid/content/Intent;
    .end local v10  # "callingUid":I
    .end local v11  # "callingPid":I
    .end local v14  # "userId":I
    .restart local v6  # "userId":I
    :catchall_fb
    move-exception v0

    move v14, v6

    .end local v6  # "userId":I
    .restart local v14  # "userId":I
    :goto_fd
    :try_start_fd
    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_ff

    throw v0

    :catchall_ff
    move-exception v0

    goto :goto_fd
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)Z
    .registers 8
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 408
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 410
    .local v0, "userId":I
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    .line 411
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_11
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_45

    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    goto :goto_45

    .line 416
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_47

    .line 417
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 420
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 421
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x1040081

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 424
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    return v4

    .line 414
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v1

    return v2

    .line 416
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v2
.end method

.method private forceStopUser(ILjava/lang/String;)V
    .registers 25
    .param p1, "userId"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 905
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    .line 906
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    move-object v6, v2

    .line 907
    const/high16 v4, 0x50000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 909
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 912
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 913
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 910
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x3e8

    const/16 v21, -0x1

    invoke-virtual/range {v5 .. v21}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 914
    return-void
.end method

.method private getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .registers 3

    .line 2033
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2034
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2035
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getSwitchingToSystemUserMessage()Ljava/lang/String;
    .registers 3

    .line 2039
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2040
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2041
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"  # I

    .line 1908
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUsersToStopLU(I)[I
    .registers 13
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 883
    .local v0, "startedUsersSize":I
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 884
    .local v1, "userIds":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 885
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 886
    .local v2, "userGroupId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v0, :cond_44

    .line 887
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 888
    .local v5, "uss":Lcom/android/server/am/UserState;
    iget-object v6, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 890
    .local v6, "startedUserId":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 892
    .local v7, "startedUserGroupId":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_35

    if-ne v2, v7, :cond_35

    move v10, v9

    goto :goto_36

    :cond_35
    move v10, v8

    .line 895
    .local v10, "sameGroup":Z
    :goto_36
    if-ne v6, p1, :cond_39

    move v8, v9

    .line 896
    .local v8, "sameUserId":Z
    :cond_39
    if-eqz v10, :cond_41

    if-eqz v8, :cond_3e

    .line 897
    goto :goto_41

    .line 899
    :cond_3e
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    .line 886
    .end local v5  # "uss":Lcom/android/server/am/UserState;
    .end local v6  # "startedUserId":I
    .end local v7  # "startedUserGroupId":I
    .end local v8  # "sameUserId":Z
    .end local v10  # "sameGroup":Z
    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 901
    .end local v4  # "i":I
    :cond_44
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    return-object v3
.end method

.method private isCallingOnHandlerThread()Z
    .registers 3

    .line 1217
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isCurrentUserLU(I)Z
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$stopSingleUserLU$4(Landroid/app/IStopUserCallback;I)V
    .registers 3
    .param p0, "stopUserCallback"  # Landroid/app/IStopUserCallback;
    .param p1, "userId"  # I

    .line 678
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 680
    goto :goto_5

    .line 679
    :catch_4
    move-exception v0

    .line 681
    :goto_5
    return-void
.end method

.method private maybeUnlockUser(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method private moveUserToForeground(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"  # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"  # I
    .param p3, "newUserId"  # I

    .line 1515
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1516
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_11

    .line 1517
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_16

    .line 1519
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorResumeFocusedStackTopActivity()V

    .line 1521
    :goto_16
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1522
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 1523
    return-void
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 3
    .param p0, "userId"  # I
    .param p1, "listener"  # Landroid/os/IProgressListener;

    .line 1261
    if-nez p1, :cond_3

    return-void

    .line 1263
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1265
    goto :goto_9

    .line 1264
    :catch_8
    move-exception v0

    .line 1266
    :goto_9
    return-void
.end method

.method private showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1362
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1363
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessage()Ljava/lang/String;

    move-result-object v4

    .line 1362
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .registers 8
    .param p1, "oldUserId"  # I

    .line 1405
    if-nez p1, :cond_3

    .line 1406
    return-void

    .line 1409
    :cond_3
    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    move v0, v1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 1411
    .local v0, "disallowRunInBg":Z
    :goto_15
    if-nez v0, :cond_18

    .line 1412
    return-void

    .line 1414
    :cond_18
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1415
    :try_start_1b
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v3, :cond_3b

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundUsersIfEnforced stopping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and related users"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_3b
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v3}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1418
    monitor-exit v2

    .line 1419
    return-void

    .line 1418
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_1b .. :try_end_43} :catchall_41

    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground(I)V
    .registers 6
    .param p1, "oldUserId"  # I

    .line 920
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop guest or ephemeral user if background: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 923
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    if-eqz p1, :cond_67

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_67

    if-eqz v1, :cond_67

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_67

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_38

    goto :goto_67

    .line 928
    .end local v1  # "oldUss":Lcom/android/server/am/UserState;
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_69

    .line 930
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 931
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 932
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 934
    :cond_4e
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 936
    :cond_5a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 937
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_5f
    invoke-direct {p0, p1, v0, v3, v3}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 938
    monitor-exit v2

    .line 940
    :cond_63
    return-void

    .line 938
    :catchall_64
    move-exception v0

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_64

    throw v0

    .line 926
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    :cond_67
    :goto_67
    :try_start_67
    monitor-exit v0

    return-void

    .line 928
    .end local v1  # "oldUss":Lcom/android/server/am/UserState;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method private stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "stopUserCallback"  # Landroid/app/IStopUserCallback;
    .param p3, "keyEvictedCallback"  # Lcom/android/server/am/UserState$KeyEvictedCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 670
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSingleUserLocked userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    .line 672
    .local v0, "uss":Lcom/android/server/am/UserState;
    if-nez v0, :cond_32

    .line 675
    if-eqz p2, :cond_31

    .line 676
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;

    invoke-direct {v2, p2, p1}, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    :cond_31
    return-void

    .line 686
    :cond_32
    if-eqz p2, :cond_39

    .line 687
    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_39
    if-eqz p3, :cond_40

    .line 690
    iget-object v1, v0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_40
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_65

    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_65

    .line 695
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 696
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 697
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 700
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    :cond_65
    return-void
.end method

.method private stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 12
    .param p1, "userId"  # I
    .param p2, "force"  # Z
    .param p3, "stopUserCallback"  # Landroid/app/IStopUserCallback;
    .param p4, "keyEvictedCallback"  # Lcom/android/server/am/UserState$KeyEvictedCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 635
    if-nez p1, :cond_4

    .line 636
    const/4 v0, -0x3

    return v0

    .line 638
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 639
    const/4 v0, -0x2

    return v0

    .line 641
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    .line 643
    .local v0, "usersToStop":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    const-string v3, "ActivityManager"

    const/4 v4, 0x0

    if-ge v1, v2, :cond_5f

    .line 644
    aget v2, v0, v1

    .line 645
    .local v2, "relatedUserId":I
    if-eqz v2, :cond_25

    invoke-direct {p0, v2}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_25

    .line 643
    .end local v2  # "relatedUserId":I
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 646
    .restart local v2  # "relatedUserId":I
    :cond_25
    :goto_25
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopUsersLocked cannot stop related user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_3e
    if-eqz p2, :cond_5d

    .line 650
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force stop user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Related users will not be stopped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 653
    return v4

    .line 655
    :cond_5d
    const/4 v3, -0x4

    return v3

    .line 658
    .end local v1  # "i":I
    .end local v2  # "relatedUserId":I
    :cond_5f
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v1, :cond_7c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUsersLocked usersToStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_7c
    array-length v1, v0

    move v2, v4

    :goto_7e
    if-ge v2, v1, :cond_92

    aget v3, v0, v2

    .line 660
    .local v3, "userIdToStop":I
    nop

    .line 661
    const/4 v5, 0x0

    if-ne v3, p1, :cond_88

    move-object v6, p3

    goto :goto_89

    :cond_88
    move-object v6, v5

    .line 662
    :goto_89
    if-ne v3, p1, :cond_8c

    move-object v5, p4

    .line 660
    :cond_8c
    invoke-direct {p0, v3, v6, v5}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 659
    .end local v3  # "userIdToStop":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 664
    :cond_92
    return v4
.end method

.method private timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9
    .param p1, "uss"  # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"  # I
    .param p3, "newUserId"  # I

    .line 1422
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_3
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1425
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1426
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1428
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1430
    monitor-exit v0

    .line 1431
    return-void

    .line 1430
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private timeoutUserSwitchCallbacks(II)V
    .registers 7
    .param p1, "oldUserId"  # I
    .param p2, "newUserId"  # I

    .line 1434
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1435
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1436
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Observers that didn\'t respond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1440
    :cond_3a
    monitor-exit v0

    .line 1441
    return-void

    .line 1440
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .registers 14
    .param p1, "userId"  # I
    .param p2, "token"  # [B
    .param p3, "secret"  # [B
    .param p4, "listener"  # Landroid/os/IProgressListener;

    .line 1271
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1272
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1273
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1276
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_10
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_16

    .line 1279
    goto :goto_31

    .line 1277
    :catch_16
    move-exception v2

    .line 1278
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    .end local v0  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1  # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_34
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1284
    .local v1, "uss":Lcom/android/server/am/UserState;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    .line 1285
    iget-object v4, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1286
    if-eqz p2, :cond_49

    move v4, v2

    goto :goto_4a

    :cond_49
    move v4, v3

    :goto_4a
    iput-boolean v4, v1, Lcom/android/server/am/UserState;->tokenProvided:Z

    .line 1288
    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_be

    .line 1290
    if-nez v1, :cond_53

    .line 1291
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1292
    return v3

    .line 1295
    :cond_53
    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1296
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1297
    return v3

    .line 1305
    :cond_5d
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1306
    :try_start_60
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1307
    .local v0, "userIds":[I
    move v5, v3

    .local v5, "i":I
    :goto_69
    array-length v6, v0

    if-ge v5, v6, :cond_77

    .line 1308
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v0, v5

    .line 1307
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 1310
    .end local v5  # "i":I
    :cond_77
    monitor-exit v4
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_bb

    .line 1311
    array-length v4, v0

    :goto_79
    if-ge v3, v4, :cond_ba

    aget v5, v0, v3

    .line 1312
    .local v5, "testUserId":I
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1313
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_b7

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p1, :cond_b7

    if-eq v5, p1, :cond_b7

    .line 1314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " (parent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-direct {p0, v5}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1311
    .end local v5  # "testUserId":I
    .end local v6  # "parent":Landroid/content/pm/UserInfo;
    :cond_b7
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 1320
    :cond_ba
    return v2

    .line 1310
    .end local v0  # "userIds":[I
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v4
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0

    .line 1288
    .end local v1  # "uss":Lcom/android/server/am/UserState;
    :catchall_be
    move-exception v1

    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v1
.end method

.method private updateCurrentProfileIds()V
    .registers 10

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1758
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1759
    .local v1, "currentProfileIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v1

    if-ge v3, v4, :cond_26

    .line 1760
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v1, v3

    .line 1759
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1762
    .end local v3  # "i":I
    :cond_26
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1763
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1764
    :try_start_33
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1766
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1767
    nop

    .local v2, "i":I
    :goto_3b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_59

    .line 1768
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1769
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_56

    .line 1770
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    .end local v5  # "user":Landroid/content/pm/UserInfo;
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1773
    .end local v2  # "i":I
    :cond_59
    monitor-exit v4

    .line 1774
    return-void

    .line 1773
    :catchall_5b
    move-exception v2

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method private updateStartedUserArrayLU()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1713
    const/4 v0, 0x0

    .line 1714
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-ge v1, v2, :cond_21

    .line 1715
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1717
    .local v2, "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_1e

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v3, :cond_1e

    .line 1719
    add-int/lit8 v0, v0, 0x1

    .line 1714
    .end local v2  # "uss":Lcom/android/server/am/UserState;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1722
    .end local v1  # "i":I
    :cond_21
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1723
    const/4 v0, 0x0

    .line 1724
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_27
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 1725
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1726
    .restart local v2  # "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_4c

    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v3, :cond_4c

    .line 1728
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0  # "num":I
    .local v6, "num":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v0

    move v0, v6

    .line 1724
    .end local v2  # "uss":Lcom/android/server/am/UserState;
    .end local v6  # "num":I
    .restart local v0  # "num":I
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1731
    .end local v1  # "i":I
    :cond_4f
    return-void
.end method

.method private updateUserToLockLU(I)I
    .registers 7
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 854
    move v0, p1

    .line 855
    .local v0, "userIdToLock":I
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v1, :cond_93

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_93

    .line 856
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_93

    .line 857
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 858
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 859
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 860
    .local v1, "totalUnlockedUsers":I
    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    const-string v3, "ActivityManager"

    if-le v1, v2, :cond_78

    .line 861
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 862
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, stopping user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lock user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 866
    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",skip locking"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/16 v0, -0x2710

    .line 873
    .end local v1  # "totalUnlockedUsers":I
    :cond_93
    :goto_93
    return v0
.end method


# virtual methods
.method canStartMoreUsers()Z
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-ge v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 335
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"  # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"  # I
    .param p3, "newUserId"  # I

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continue user switch oldUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v0, :cond_2b

    .line 1504
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 1506
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1507
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1508
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1510
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 1511
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1512
    return-void
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 23
    .param p1, "uss"  # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"  # I
    .param p3, "newUserId"  # I

    .line 1444
    move-object/from16 v11, p0

    move/from16 v12, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 1446
    .local v14, "observerCount":I
    if-lez v14, :cond_aa

    .line 1447
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v0

    .line 1448
    .local v15, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1449
    const/4 v0, 0x1

    move-object/from16 v10, p1

    :try_start_38
    iput-boolean v0, v10, Lcom/android/server/am/UserState;->switching:Z

    .line 1450
    iput-object v15, v11, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1451
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_a7

    .line 1452
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1453
    .local v7, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1454
    .local v16, "dispatchStartedTime":J
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_48
    if-ge v9, v14, :cond_a5

    .line 1457
    :try_start_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1458
    .local v8, "name":Ljava/lang/String;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_6d} :catch_9c

    .line 1459
    :try_start_6d
    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1460
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_92

    .line 1461
    :try_start_71
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_73} :catch_9c

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, v16

    move-object v5, v8

    move-object v6, v15

    move-object/from16 v18, v8

    .end local v8  # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v8, p1

    move v13, v9

    .end local v9  # "i":I
    .local v13, "i":I
    move/from16 v9, p2

    move/from16 v10, p3

    :try_start_83
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1481
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v12, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_91} :catch_98

    .line 1483
    .end local v0  # "callback":Landroid/os/IRemoteCallback;
    .end local v18  # "name":Ljava/lang/String;
    goto :goto_9e

    .line 1460
    .end local v13  # "i":I
    .restart local v8  # "name":Ljava/lang/String;
    .restart local v9  # "i":I
    :catchall_92
    move-exception v0

    move-object/from16 v18, v8

    move v13, v9

    .end local v8  # "name":Ljava/lang/String;
    .end local v9  # "i":I
    .restart local v13  # "i":I
    .restart local v18  # "name":Ljava/lang/String;
    :goto_96
    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_9a

    .end local v7  # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13  # "i":I
    .end local v14  # "observerCount":I
    .end local v15  # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16  # "dispatchStartedTime":J
    .end local p0  # "this":Lcom/android/server/am/UserController;
    .end local p1  # "uss":Lcom/android/server/am/UserState;
    .end local p2  # "oldUserId":I
    .end local p3  # "newUserId":I
    :try_start_97
    throw v0
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_98} :catch_98

    .line 1482
    .end local v18  # "name":Ljava/lang/String;
    .restart local v7  # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v13  # "i":I
    .restart local v14  # "observerCount":I
    .restart local v15  # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16  # "dispatchStartedTime":J
    .restart local p0  # "this":Lcom/android/server/am/UserController;
    .restart local p1  # "uss":Lcom/android/server/am/UserState;
    .restart local p2  # "oldUserId":I
    .restart local p3  # "newUserId":I
    :catch_98
    move-exception v0

    goto :goto_9e

    .line 1460
    .restart local v18  # "name":Ljava/lang/String;
    :catchall_9a
    move-exception v0

    goto :goto_96

    .line 1482
    .end local v13  # "i":I
    .end local v18  # "name":Ljava/lang/String;
    .restart local v9  # "i":I
    :catch_9c
    move-exception v0

    move v13, v9

    .line 1454
    .end local v9  # "i":I
    .restart local v13  # "i":I
    :goto_9e
    add-int/lit8 v9, v13, 0x1

    move-object/from16 v10, p1

    move/from16 v13, p2

    .end local v13  # "i":I
    .restart local v9  # "i":I
    goto :goto_48

    :cond_a5
    move v13, v9

    .line 1485
    .end local v7  # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v9  # "i":I
    .end local v15  # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16  # "dispatchStartedTime":J
    goto :goto_b1

    .line 1451
    .restart local v15  # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_a7
    move-exception v0

    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v0

    .line 1486
    .end local v15  # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_aa
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1487
    :try_start_ad
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1488
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b7

    .line 1490
    :goto_b1
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1491
    return-void

    .line 1488
    :catchall_b7
    move-exception v0

    :try_start_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v0
.end method

.method dispatchUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1380
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1381
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1382
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_23

    .line 1384
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 1386
    goto :goto_20

    .line 1385
    :catch_1f
    move-exception v2

    .line 1382
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1388
    .end local v1  # "i":I
    :cond_23
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1389
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z

    .line 2075
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2076
    :try_start_3
    const-string v1, "  mStartedUsers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 2078
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 2079
    .local v3, "uss":Lcom/android/server/am/UserState;
    const-string v4, "    User #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2080
    iget-object v4, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2081
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2082
    const-string v4, ""

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2077
    .end local v3  # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2084
    .end local v2  # "i":I
    :cond_35
    const-string v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2085
    move v2, v1

    .restart local v2  # "i":I
    :goto_3b
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v3, v3

    if-ge v2, v3, :cond_51

    .line 2086
    if-lez v2, :cond_47

    .line 2087
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    :cond_47
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2085
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 2090
    .end local v2  # "i":I
    :cond_51
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    const-string v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2092
    move v2, v1

    .restart local v2  # "i":I
    :goto_5c
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_77

    .line 2093
    if-lez v2, :cond_6b

    .line 2094
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2095
    :cond_6b
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2092
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 2097
    .end local v2  # "i":I
    :cond_77
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_b1

    .line 2099
    const-string v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    nop

    .local v1, "i":I
    :goto_8a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b1

    .line 2101
    const-string v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2102
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2103
    const-string v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2104
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2100
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 2107
    .end local v1  # "i":I
    :cond_b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastActiveUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2109
    monitor-exit v0

    .line 2110
    return-void

    .line 2109
    :catchall_df
    move-exception v1

    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_3 .. :try_end_e1} :catchall_df

    throw v1
.end method

.method ensureNotSpecialUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1670
    if-ltz p1, :cond_3

    .line 1671
    return-void

    .line 1673
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call does not support special user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method exists(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1930
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method expandUserId(I)[I
    .registers 4
    .param p1, "userId"  # I

    .line 1922
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 1923
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 1925
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    return-object v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .registers 11
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 768
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 770
    .local v0, "userId":I
    const/4 v1, 0x1

    .line 773
    .local v1, "lockUser":Z
    move v2, v0

    .line 774
    .local v2, "userIdToLock":I
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 775
    :try_start_b
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 776
    .local v4, "stopCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 777
    .local v5, "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_44

    iget v6, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_27

    goto :goto_44

    .line 780
    :cond_27
    const/4 v6, 0x1

    .line 782
    .local v6, "stopped":Z
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 783
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 784
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 785
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->updateUserToLockLU(I)I

    move-result v7

    move v2, v7

    .line 786
    const/16 v7, -0x2710

    if-ne v2, v7, :cond_45

    .line 787
    const/4 v1, 0x0

    goto :goto_45

    .line 778
    .end local v6  # "stopped":Z
    :cond_44
    :goto_44
    const/4 v6, 0x0

    .line 790
    .restart local v6  # "stopped":Z
    :cond_45
    :goto_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_a7

    .line 791
    if-eqz v6, :cond_5b

    .line 792
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 793
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 796
    const-string v3, "finish user"

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    .line 799
    :cond_5b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/IStopUserCallback;

    .line 801
    .local v7, "callback":Landroid/app/IStopUserCallback;
    if-eqz v6, :cond_71

    :try_start_6d
    invoke-interface {v7, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_74

    .line 802
    :cond_71
    invoke-interface {v7, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_74} :catch_75

    .line 804
    :goto_74
    goto :goto_76

    .line 803
    :catch_75
    move-exception v8

    .line 805
    .end local v7  # "callback":Landroid/app/IStopUserCallback;
    :goto_76
    goto :goto_5f

    .line 807
    :cond_77
    if-eqz v6, :cond_a6

    .line 808
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerCleanupUser(I)V

    .line 809
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->stackSupervisorRemoveUser(I)V

    .line 811
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 812
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 815
    :cond_96
    if-nez v1, :cond_99

    .line 816
    return-void

    .line 818
    :cond_99
    move v3, v2

    .line 822
    .local v3, "userIdToLockF":I
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;

    invoke-direct {v8, p0, v3, v0, v5}, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;-><init>(Lcom/android/server/am/UserController;IILjava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    .end local v3  # "userIdToLockF":I
    :cond_a6
    return-void

    .line 790
    .end local v4  # "stopCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v5  # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    .end local v6  # "stopped":Z
    :catchall_a7
    move-exception v4

    :try_start_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v4
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .registers 22
    .param p1, "userId"  # I
    .param p2, "uss"  # Lcom/android/server/am/UserState;

    .line 731
    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v14, p2

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v3, "shutdownIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/server/am/UserController$5;

    invoke-direct {v5, v1, v14}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 746
    .local v5, "shutdownReceiver":Landroid/content/IIntentReceiver;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 747
    :try_start_15
    iget v0, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1c

    .line 749
    monitor-exit v2

    return-void

    .line 751
    :cond_1c
    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 752
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_5f

    .line 753
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v2, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 755
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x4007

    .line 757
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 755
    invoke-virtual {v0, v2, v4, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 758
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 760
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move v14, v0

    const/16 v0, 0x3e8

    move v15, v0

    .line 763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 760
    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 765
    return-void

    .line 752
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 279
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 39
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 453
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 455
    .local v15, "userId":I
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 456
    :cond_11
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 458
    :try_start_14
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_116

    if-eq v0, v2, :cond_28

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_24

    return-void

    .line 464
    :catchall_24
    move-exception v0

    move v4, v15

    goto/16 :goto_118

    .line 461
    :cond_28
    const/4 v0, 0x2

    const/4 v4, 0x3

    :try_start_2a
    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_116

    if-nez v0, :cond_32

    .line 462
    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_24

    return-void

    .line 464
    :cond_32
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_116

    .line 465
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 466
    iget-object v0, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 470
    if-nez v15, :cond_4c

    .line 471
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v3, 0x40000

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 473
    :cond_4c
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "unlockedIntent":Landroid/content/Intent;
    move-object v4, v0

    .line 477
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    const/high16 v14, 0x50000000

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v14, v16

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v20, v15

    .end local v15  # "userId":I
    .local v20, "userId":I
    move/from16 v15, v16

    const/16 v16, 0x3e8

    .line 482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 480
    move/from16 v19, v20

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 484
    move/from16 v4, v20

    .end local v20  # "userId":I
    .local v4, "userId":I
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 485
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 486
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_e1

    .line 487
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "profileUnlockedIntent":Landroid/content/Intent;
    move-object/from16 v21, v5

    .line 489
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const-string v7, "android.intent.extra.USER"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 490
    const/high16 v6, 0x50000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 493
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v20, v6

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    sget v32, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v33, 0x3e8

    .line 495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v34

    .line 496
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v35

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v6

    .line 493
    invoke-virtual/range {v20 .. v36}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 503
    .end local v3  # "parent":Landroid/content/pm/UserInfo;
    .end local v5  # "profileUnlockedIntent":Landroid/content/Intent;
    :cond_e1
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 504
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget-object v5, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_112

    .line 509
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_106

    .line 510
    iget-boolean v5, v2, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v5, :cond_104

    iget-object v5, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 511
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_102

    goto :goto_104

    :cond_102
    const/4 v5, 0x0

    goto :goto_105

    :cond_104
    :goto_104
    const/4 v5, 0x1

    .local v5, "quiet":Z
    :goto_105
    goto :goto_107

    .line 513
    .end local v5  # "quiet":Z
    :cond_106
    const/4 v5, 0x0

    .line 515
    .restart local v5  # "quiet":Z
    :goto_107
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v7, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;

    invoke-direct {v7, v1, v2}, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    .line 517
    .end local v5  # "quiet":Z
    goto :goto_115

    .line 518
    :cond_112
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    .line 520
    :goto_115
    return-void

    .line 464
    .end local v0  # "unlockedIntent":Landroid/content/Intent;
    .end local v3  # "info":Landroid/content/pm/UserInfo;
    .end local v4  # "userId":I
    .restart local v15  # "userId":I
    :catchall_116
    move-exception v0

    move v4, v15

    .end local v15  # "userId":I
    .restart local v4  # "userId":I
    :goto_118
    :try_start_118
    monitor-exit v3
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_11a

    throw v0

    :catchall_11a
    move-exception v0

    goto :goto_118
.end method

.method getCurrentOrTargetUserId()I
    .registers 4

    .line 1875
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_e

    :cond_c
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_e
    monitor-exit v0

    return v1

    .line 1877
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method getCurrentOrTargetUserIdLU()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1882
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_b
    return v0
.end method

.method getCurrentProfileIds()[I
    .registers 3

    .line 1980
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1981
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object v1

    .line 1982
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 1847
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1849
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4b

    .line 1851
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1860
    .end local v0  # "msg":Ljava/lang/String;
    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_58

    .line 1861
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    .line 1863
    :cond_58
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1864
    :try_start_5b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1865
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_61

    throw v1
.end method

.method getCurrentUserId()I
    .registers 3

    .line 1892
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1893
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return v1

    .line 1894
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCurrentUserIdLU()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1888
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLU()Landroid/content/pm/UserInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1870
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1871
    .local v0, "userId":I
    :goto_b
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method getFlymeParallelSpaceUserIds()[I
    .registers 2

    .line 2410
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getFlymeParallelSpaceUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getRunningUsersLU()Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "runningUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 292
    .local v2, "userId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 293
    .local v3, "uss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_26

    .line 295
    goto :goto_b

    .line 297
    :cond_26
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_31

    .line 300
    goto :goto_b

    .line 302
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_42

    .line 304
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 305
    goto :goto_b

    .line 308
    :cond_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v2  # "userId":Ljava/lang/Integer;
    .end local v3  # "uss":Lcom/android/server/am/UserState;
    goto :goto_b

    .line 310
    :cond_46
    return-object v0
.end method

.method getStartedUserArray()[I
    .registers 3

    .line 1777
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1778
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object v1

    .line 1779
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getStartedUserState(I)Lcom/android/server/am/UserState;
    .registers 4
    .param p1, "userId"  # I

    .line 1700
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object v1

    .line 1702
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getUserIds()[I
    .registers 2

    .line 1912
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .registers 4

    .line 1903
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1904
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    goto :goto_13

    :cond_d
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    :goto_13
    return-object v1
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 22
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "userId"  # I
    .param p4, "allowAll"  # Z
    .param p5, "allowMode"  # I
    .param p6, "name"  # Ljava/lang/String;
    .param p7, "callerPackage"  # Ljava/lang/String;

    .line 1580
    move-object v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1581
    .local v11, "callingUserId":I
    if-ne v11, v8, :cond_10

    .line 1582
    return v8

    .line 1591
    :cond_10
    invoke-virtual {p0, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 1593
    .local v12, "targetUserId":I
    if-eqz v7, :cond_d7

    const/16 v1, 0x3e8

    if-eq v7, v1, :cond_d7

    .line 1595
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v1

    const/4 v13, 0x2

    if-eqz v1, :cond_31

    .line 1596
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    if-ne v11, v1, :cond_31

    .line 1597
    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1600
    const/4 v1, 0x1

    .local v1, "allow":Z
    goto :goto_62

    .line 1601
    .end local v1  # "allow":Z
    :cond_31
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_42

    .line 1604
    const/4 v1, 0x1

    .restart local v1  # "allow":Z
    goto :goto_62

    .line 1605
    .end local v1  # "allow":Z
    :cond_42
    if-ne v9, v13, :cond_46

    .line 1607
    const/4 v1, 0x0

    .restart local v1  # "allow":Z
    goto :goto_62

    .line 1608
    .end local v1  # "allow":Z
    :cond_46
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_57

    .line 1611
    const/4 v1, 0x0

    .restart local v1  # "allow":Z
    goto :goto_62

    .line 1612
    .end local v1  # "allow":Z
    :cond_57
    if-nez v9, :cond_5b

    .line 1614
    const/4 v1, 0x1

    .restart local v1  # "allow":Z
    goto :goto_62

    .line 1615
    .end local v1  # "allow":Z
    :cond_5b
    const/4 v1, 0x1

    if-ne v9, v1, :cond_be

    .line 1618
    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    .line 1622
    .restart local v1  # "allow":Z
    :goto_62
    if-nez v1, :cond_bb

    .line 1623
    const/4 v2, -0x3

    if-ne v8, v2, :cond_6b

    .line 1626
    move v12, v11

    move-object/from16 v3, p6

    goto :goto_d9

    .line 1628
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1629
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    if-eqz v10, :cond_86

    .line 1632
    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    :cond_86
    const-string v4, " asks to run as user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1637
    const-string v4, " but is calling from uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1639
    const-string v4, "; this requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    if-eq v9, v13, :cond_ac

    .line 1642
    const-string v4, " or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    :cond_ac
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1646
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1622
    .end local v2  # "builder":Ljava/lang/StringBuilder;
    .end local v4  # "msg":Ljava/lang/String;
    :cond_bb
    move-object/from16 v3, p6

    goto :goto_d9

    .line 1620
    .end local v1  # "allow":Z
    :cond_be
    move-object/from16 v3, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1593
    :cond_d7
    move-object/from16 v3, p6

    .line 1651
    :goto_d9
    if-nez p4, :cond_de

    .line 1652
    invoke-virtual {p0, v12}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 1655
    :cond_de
    const/16 v1, 0x7d0

    if-ne v7, v1, :cond_112

    if-ltz v12, :cond_112

    .line 1656
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v12}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_ee

    goto :goto_112

    .line 1657
    :cond_ee
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shell does not have permission to access user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    .line 1658
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1661
    :cond_112
    :goto_112
    return v12
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 2113
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c6

    goto/16 :goto_c3

    .line 2167
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_c3

    .line 2115
    :sswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 2116
    goto/16 :goto_c3

    .line 2164
    :sswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    .line 2165
    goto/16 :goto_c3

    .line 2139
    :sswitch_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2140
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2142
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2145
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 2146
    goto/16 :goto_c3

    .line 2127
    .end local v0  # "userId":I
    :sswitch_3e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    .line 2128
    goto/16 :goto_c3

    .line 2161
    :sswitch_47
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    .line 2162
    goto/16 :goto_c3

    .line 2158
    :sswitch_4e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    .line 2159
    goto :goto_c3

    .line 2148
    :sswitch_54
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2150
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2148
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2151
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2153
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2151
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2155
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    .line 2156
    goto :goto_c3

    .line 2133
    :sswitch_7f
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2135
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2133
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2136
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    .line 2137
    goto :goto_c3

    .line 2130
    :sswitch_9b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 2131
    goto :goto_c3

    .line 2124
    :sswitch_9f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2125
    goto :goto_c3

    .line 2121
    :sswitch_ab
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2122
    goto :goto_c3

    .line 2118
    :sswitch_b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2119
    nop

    .line 2170
    :goto_c3
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_c6
    .sparse-switch
        0xa -> :sswitch_b7
        0x14 -> :sswitch_ab
        0x1e -> :sswitch_9f
        0x28 -> :sswitch_9b
        0x32 -> :sswitch_7f
        0x3c -> :sswitch_54
        0x46 -> :sswitch_4e
        0x50 -> :sswitch_47
        0x5a -> :sswitch_3e
        0x64 -> :sswitch_1e
        0x6e -> :sswitch_17
        0x78 -> :sswitch_10
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

.method hasStartedUserState(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 1706
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1707
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 1708
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1943
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfile(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 1974
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1975
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1976
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isLockScreenDisabled(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 2017
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .registers 8
    .param p1, "callingUserId"  # I
    .param p2, "targetUserId"  # I

    .line 1947
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 1948
    return v0

    .line 1950
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1951
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1953
    .local v2, "callingProfile":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 1955
    .local v4, "targetProfile":I
    if-eq v2, v3, :cond_1a

    if-ne v2, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    monitor-exit v1

    return v0

    .line 1957
    .end local v2  # "callingProfile":I
    .end local v4  # "targetProfile":I
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method isSystemUserStarted()Z
    .registers 7

    .line 1835
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1836
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1837
    .local v1, "uss":Lcom/android/server/am/UserState;
    if-nez v1, :cond_10

    .line 1838
    monitor-exit v0

    return v2

    .line 1840
    :cond_10
    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1f

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_20

    :cond_1f
    move v2, v4

    :cond_20
    monitor-exit v0

    return v2

    .line 1843
    .end local v1  # "uss":Lcom/android/server/am/UserState;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method isUserOrItsParentRunning(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 1961
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1962
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1963
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1965
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1966
    .local v2, "parentUserId":I
    if-ne v2, v3, :cond_19

    .line 1967
    monitor-exit v0

    return v1

    .line 1969
    :cond_19
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1970
    .end local v2  # "parentUserId":I
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method isUserRunning(II)Z
    .registers 11
    .param p1, "userId"  # I
    .param p2, "flags"  # I

    .line 1783
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1784
    .local v0, "state":Lcom/android/server/am/UserState;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1785
    return v1

    .line 1787
    :cond_8
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 1788
    return v3

    .line 1790
    :cond_e
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1a

    .line 1791
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eqz v2, :cond_19

    if-eq v2, v3, :cond_19

    .line 1796
    return v1

    .line 1794
    :cond_19
    return v3

    .line 1799
    :cond_1a
    and-int/lit8 v2, p2, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eqz v2, :cond_33

    .line 1800
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_32

    if-eq v2, v4, :cond_32

    if-eq v2, v6, :cond_2d

    if-eq v2, v5, :cond_2d

    .line 1809
    return v1

    .line 1807
    :cond_2d
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1803
    :cond_32
    return v3

    .line 1812
    :cond_33
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_46

    .line 1813
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v4, :cond_45

    if-eq v2, v6, :cond_40

    if-eq v2, v5, :cond_40

    .line 1821
    return v1

    .line 1819
    :cond_40
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1815
    :cond_45
    return v3

    .line 1825
    :cond_46
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v6, :cond_4f

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v5, :cond_4f

    move v1, v3

    :cond_4f
    return v1
.end method

.method public synthetic lambda$finishUserStopped$6$UserController(IILjava/util/ArrayList;)V
    .registers 7
    .param p1, "userIdToLockF"  # I
    .param p2, "userId"  # I
    .param p3, "keyEvictedCallbacks"  # Ljava/util/ArrayList;

    .line 823
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 825
    const-string v1, "ActivityManager"

    const-string v2, "User was restarted, skipping key eviction"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    monitor-exit v0

    return-void

    .line 828
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3c

    .line 830
    :try_start_15
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_36

    .line 833
    nop

    .line 834
    if-ne p1, p2, :cond_35

    .line 835
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 836
    .local v1, "callback":Lcom/android/server/am/UserState$KeyEvictedCallback;
    invoke-interface {v1, p2}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    .line 837
    .end local v1  # "callback":Lcom/android/server/am/UserState$KeyEvictedCallback;
    goto :goto_25

    .line 839
    :cond_35
    return-void

    .line 831
    :catch_36
    move-exception v0

    .line 832
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 828
    .end local v0  # "re":Landroid/os/RemoteException;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public synthetic lambda$finishUserSwitch$0$UserController(Lcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 282
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_9
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    .line 284
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public synthetic lambda$finishUserUnlocked$2$UserController(Lcom/android/server/am/UserState;)V
    .registers 2
    .param p1, "uss"  # Lcom/android/server/am/UserState;

    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public synthetic lambda$finishUserUnlockedCompleted$3$UserController(Landroid/content/Intent;III)V
    .registers 24
    .param p1, "bootIntent"  # Landroid/content/Intent;
    .param p2, "userId"  # I
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v17, p2

    move/from16 v15, p3

    move/from16 v16, p4

    .line 580
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$2;

    move-object v4, v3

    move/from16 v14, p2

    invoke-direct {v3, v0, v14}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v18, 0x3e8

    move/from16 v14, v18

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 594
    return-void
.end method

.method public synthetic lambda$finishUserUnlocking$1$UserController(ILcom/android/server/am/UserState;)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "uss"  # Lcom/android/server/am/UserState;

    .line 425
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 426
    const-string v0, "ActivityManager"

    const-string v1, "User key got locked unexpectedly, leaving user locked."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 429
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 430
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_1c
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_24

    .line 433
    monitor-exit v0

    return-void

    .line 435
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_44

    .line 436
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 438
    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 442
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 444
    return-void

    .line 435
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public synthetic lambda$handleMessage$9$UserController(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 2143
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    .line 2144
    return-void
.end method

.method public synthetic lambda$scheduleStartProfiles$7$UserController()V
    .registers 5

    .line 948
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 949
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 952
    :cond_15
    return-void
.end method

.method public synthetic lambda$startUser$8$UserController(IZLandroid/os/IProgressListener;)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "foreground"  # Z
    .param p3, "unlockListener"  # Landroid/os/IProgressListener;

    .line 1089
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method public synthetic lambda$stopSingleUserLU$5$UserController(ILcom/android/server/am/UserState;)V
    .registers 24
    .param p1, "userId"  # I
    .param p2, "uss"  # Lcom/android/server/am/UserState;

    .line 704
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "stoppingIntent":Landroid/content/Intent;
    move-object v5, v2

    .line 705
    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 706
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v3, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    new-instance v7, Lcom/android/server/am/UserController$4;

    move-object/from16 v3, p2

    invoke-direct {v7, v0, v1, v3}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 718
    .local v7, "stoppingReceiver":Landroid/content/IIntentReceiver;
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 720
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 720
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 725
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 1746
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1747
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1748
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 1986
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1987
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1988
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_25

    .line 1989
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, p1, :cond_1d

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 1990
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p1, :cond_22

    .line 1991
    :cond_1d
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1988
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1995
    .end local v2  # "i":I
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1996
    .end local v1  # "size":I
    monitor-exit v0

    .line 1997
    return-void

    .line 1996
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 6
    .param p1, "observer"  # Landroid/app/IUserSwitchObserver;
    .param p2, "name"  # Ljava/lang/String;

    .line 1677
    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1687
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1688
    return-void

    .line 1680
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1684
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method restartUser(IZ)I
    .registers 6
    .param p1, "userId"  # I
    .param p2, "foreground"  # Z

    .line 598
    new-instance v0, Lcom/android/server/am/UserController$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v0

    return v0
.end method

.method scheduleStartProfiles()V
    .registers 3

    .line 947
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 953
    return-void
.end method

.method sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .registers 5
    .param p1, "resultTo"  # Landroid/content/IIntentReceiver;

    .line 1736
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 1738
    .local v1, "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 1739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1740
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1741
    .local v2, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1739
    .end local v2  # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1743
    .end local v0  # "i":I
    :cond_1d
    return-void

    .line 1738
    .end local v1  # "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .registers 6
    .param p1, "uss"  # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"  # I
    .param p3, "newUserId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1496
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1499
    return-void
.end method

.method sendForegroundProfileChanged(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1691
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1693
    return-void
.end method

.method sendUserSwitchBroadcasts(II)V
    .registers 39
    .param p1, "oldUserId"  # I
    .param p2, "newUserId"  # I

    .line 1526
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 1527
    .local v21, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 1528
    .local v22, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 1531
    .local v23, "ident":J
    const/4 v0, 0x0

    const-string v15, "android.intent.extra.user_handle"

    const/high16 v14, 0x50000000

    if-ltz v2, :cond_99

    .line 1533
    :try_start_19
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 1534
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v12, v4

    .line 1535
    .local v12, "count":I
    const/4 v4, 0x0

    move v11, v4

    .local v11, "i":I
    :goto_2b
    if-ge v11, v12, :cond_8d

    .line 1536
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v10, v4

    .line 1537
    .local v10, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    .line 1538
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1540
    invoke-virtual {v9, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1541
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v9

    move-object/from16 v29, v9

    .end local v9  # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v9, v16

    move/from16 v30, v10

    .end local v10  # "profileUserId":I
    .local v30, "profileUserId":I
    move-object/from16 v10, v18

    move/from16 v31, v11

    .end local v11  # "i":I
    .local v31, "i":I
    move-object/from16 v11, v19

    move/from16 v32, v12

    .end local v12  # "count":I
    .local v32, "count":I
    move/from16 v12, v20

    move-object/from16 v33, v13

    .end local v13  # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v33, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v13, v25

    move/from16 v14, v26

    move-object/from16 v34, v15

    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v30

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1535
    nop

    .end local v30  # "profileUserId":I
    add-int/lit8 v11, v31, 0x1

    move/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v15, v34

    const/high16 v14, 0x50000000

    .end local v31  # "i":I
    .restart local v11  # "i":I
    goto :goto_2b

    .end local v29  # "intent":Landroid/content/Intent;
    .end local v32  # "count":I
    .end local v33  # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12  # "count":I
    .restart local v13  # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8d
    move/from16 v31, v11

    move/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v15

    .end local v11  # "i":I
    .end local v12  # "count":I
    .end local v13  # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v31  # "i":I
    .restart local v32  # "count":I
    .restart local v33  # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_9b

    .line 1573
    .end local v31  # "i":I
    .end local v32  # "count":I
    .end local v33  # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_96
    move-exception v0

    goto/16 :goto_14a

    .line 1531
    :cond_99
    move-object/from16 v34, v15

    .line 1547
    :goto_9b
    if-ltz v3, :cond_14e

    .line 1549
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1550
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v15, v4

    .line 1551
    .local v15, "count":I
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_ae
    if-ge v14, v15, :cond_10b

    .line 1552
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v13, v4

    .line 1553
    .local v13, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v4

    .line 1554
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v11, 0x50000000

    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1556
    move-object/from16 v10, v34

    invoke-virtual {v12, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v12

    move-object/from16 v35, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move-object/from16 v28, v12

    .end local v12  # "intent":Landroid/content/Intent;
    .local v28, "intent":Landroid/content/Intent;
    move/from16 v12, v19

    move/from16 v29, v13

    .end local v13  # "profileUserId":I
    .local v29, "profileUserId":I
    move-object/from16 v13, v20

    move/from16 v30, v14

    .end local v14  # "i":I
    .local v30, "i":I
    move/from16 v14, v25

    move/from16 v25, v15

    .end local v15  # "count":I
    .local v25, "count":I
    move/from16 v15, v26

    move/from16 v16, v27

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v29

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1551
    nop

    .end local v29  # "profileUserId":I
    add-int/lit8 v14, v30, 0x1

    move/from16 v15, v25

    move-object/from16 v34, v35

    .end local v30  # "i":I
    .restart local v14  # "i":I
    goto :goto_ae

    .end local v25  # "count":I
    .end local v28  # "intent":Landroid/content/Intent;
    .restart local v15  # "count":I
    :cond_10b
    move/from16 v30, v14

    move/from16 v25, v15

    move-object/from16 v35, v34

    .line 1562
    .end local v14  # "i":I
    .end local v15  # "count":I
    .restart local v25  # "count":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    .line 1563
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1565
    move-object/from16 v4, v35

    invoke-virtual {v15, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1566
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "android.permission.MANAGE_USERS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    move-object v5, v15

    move-object/from16 v26, v15

    .end local v15  # "intent":Landroid/content/Intent;
    .local v26, "intent":Landroid/content/Intent;
    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_149
    .catchall {:try_start_19 .. :try_end_149} :catchall_96

    goto :goto_14e

    .line 1573
    .end local v0  # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25  # "count":I
    .end local v26  # "intent":Landroid/content/Intent;
    :goto_14a
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_14e
    :goto_14e
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1574
    nop

    .line 1575
    return-void
.end method

.method setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "switchingFromSystemUserMessage"  # Ljava/lang/String;

    .line 2021
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2022
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 2023
    monitor-exit v0

    .line 2024
    return-void

    .line 2023
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "switchingToSystemUserMessage"  # Ljava/lang/String;

    .line 2027
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2028
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 2029
    monitor-exit v0

    .line 2030
    return-void

    .line 2029
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected shouldConfirmCredentials(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 2004
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2005
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 2006
    monitor-exit v0

    return v2

    .line 2008
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    .line 2009
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2010
    return v2

    .line 2012
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 2013
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    return v2

    .line 2008
    .end local v0  # "km":Landroid/app/KeyguardManager;
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method startProfiles()V
    .registers 10

    .line 956
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 957
    .local v0, "currentUserId":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_10

    const-string/jumbo v1, "startProfilesLocked"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 960
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 961
    .local v4, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 962
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_48

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v0, :cond_48

    .line 963
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v7

    if-nez v7, :cond_48

    .line 964
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    .end local v6  # "user":Landroid/content/pm/UserInfo;
    :cond_48
    goto :goto_28

    .line 967
    :cond_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 968
    .local v5, "profilesToStartSize":I
    const/4 v6, 0x0

    .line 969
    .local v6, "i":I
    :goto_4e
    if-ge v6, v5, :cond_64

    iget v7, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_64

    .line 970
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 969
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 972
    :cond_64
    if-ge v6, v5, :cond_6b

    .line 973
    const-string v3, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_6b
    return-void
.end method

.method startUser(IZ)Z
    .registers 4
    .param p1, "userId"  # I
    .param p2, "foreground"  # Z

    .line 978
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUser(IZLandroid/os/IProgressListener;)Z
    .registers 36
    .param p1, "userId"  # I
    .param p2, "foreground"  # Z
    .param p3, "unlockListener"  # Landroid/os/IProgressListener;

    .line 1015
    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p3

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_338

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting userid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 1028
    .local v20, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 1029
    .local v21, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1031
    .local v22, "ident":J
    :try_start_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    move v11, v0

    .line 1032
    .local v11, "oldUserId":I
    const/4 v0, 0x1

    if-ne v11, v14, :cond_66

    .line 1033
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v2

    .line 1034
    .local v2, "state":Lcom/android/server/am/UserState;
    if-nez v2, :cond_52

    .line 1035
    const-string v3, "ActivityManager"

    const-string v4, "Current user has no UserState"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 1038
    :cond_52
    if-nez v14, :cond_59

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-nez v3, :cond_59

    goto :goto_66

    .line 1042
    :cond_59
    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_61

    .line 1045
    invoke-static {v14, v12}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_332

    .line 1047
    :cond_61
    nop

    .line 1210
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1047
    return v0

    .line 1052
    .end local v2  # "state":Lcom/android/server/am/UserState;
    :cond_66
    :goto_66
    if-eqz v13, :cond_70

    .line 1053
    :try_start_68
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v3, "startUser"

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    .line 1056
    :cond_70
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    move-object/from16 v24, v2

    .line 1057
    .local v24, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-nez v24, :cond_94

    .line 1058
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No user info for user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_68 .. :try_end_8f} :catchall_332

    .line 1059
    nop

    .line 1210
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    return v2

    .line 1061
    :cond_94
    if-eqz v13, :cond_bc

    :try_start_96
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 1062
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot switch to User #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not a full user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_96 .. :try_end_b7} :catchall_332

    .line 1063
    nop

    .line 1210
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    return v2

    .line 1066
    :cond_bc
    if-eqz v13, :cond_d1

    :try_start_be
    iget-boolean v3, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v3, :cond_d1

    .line 1067
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const v4, 0x10a0128

    const v5, 0x10a0127

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 1071
    :cond_d1
    const/4 v3, 0x0

    .line 1072
    .local v3, "needStart":Z
    const/4 v4, 0x0

    .line 1077
    .local v4, "updateUmState":Z
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d6
    .catchall {:try_start_be .. :try_end_d6} :catchall_332

    .line 1078
    :try_start_d6
    iget-object v6, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_328

    .line 1079
    .local v6, "uss":Lcom/android/server/am/UserState;
    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v6, :cond_10a

    .line 1080
    :try_start_e2
    new-instance v9, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    move-object v6, v9

    .line 1081
    iget-object v9, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v10, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v10, v7}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1082
    iget-object v9, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1083
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V
    :try_end_fe
    .catchall {:try_start_e2 .. :try_end_fe} :catchall_104

    .line 1084
    const/4 v3, 0x1

    .line 1085
    const/4 v4, 0x1

    move/from16 v25, v4

    move-object v10, v6

    goto :goto_141

    .line 1095
    .end local v6  # "uss":Lcom/android/server/am/UserState;
    :catchall_104
    move-exception v0

    move/from16 v30, v11

    move v2, v14

    goto/16 :goto_32c

    .line 1086
    .restart local v6  # "uss":Lcom/android/server/am/UserState;
    :cond_10a
    :try_start_10a
    iget v9, v6, Lcom/android/server/am/UserState;->state:I
    :try_end_10c
    .catchall {:try_start_10a .. :try_end_10c} :catchall_328

    if-ne v9, v8, :cond_13e

    :try_start_10e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v9

    if-nez v9, :cond_13e

    .line 1087
    const-string v2, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is shutting down - will start after full stop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;

    invoke-direct {v7, v1, v14, v13, v12}, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1090
    monitor-exit v5
    :try_end_13a
    .catchall {:try_start_10e .. :try_end_13a} :catchall_104

    .line 1210
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1090
    return v0

    .line 1092
    :cond_13e
    move/from16 v25, v4

    move-object v10, v6

    .end local v4  # "updateUmState":Z
    .end local v6  # "uss":Lcom/android/server/am/UserState;
    .local v10, "uss":Lcom/android/server/am/UserState;
    .local v25, "updateUmState":Z
    :goto_141
    :try_start_141
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1093
    .local v4, "userIdInt":Ljava/lang/Integer;
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1094
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    nop

    .end local v4  # "userIdInt":Ljava/lang/Integer;
    monitor-exit v5
    :try_end_151
    .catchall {:try_start_141 .. :try_end_151} :catchall_321

    .line 1096
    if-eqz v12, :cond_158

    .line 1097
    :try_start_153
    iget-object v4, v10, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, v12}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1099
    :cond_158
    if-eqz v25, :cond_165

    .line 1100
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    iget v5, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v14, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1102
    :cond_165
    if-eqz v13, :cond_1ac

    .line 1104
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEventLocked(I)V

    .line 1105
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_171
    .catchall {:try_start_153 .. :try_end_171} :catchall_332

    .line 1106
    :try_start_171
    iput v14, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1107
    const/16 v5, -0x2710

    iput v5, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1108
    monitor-exit v4
    :try_end_178
    .catchall {:try_start_171 .. :try_end_178} :catchall_1a9

    .line 1109
    :try_start_178
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 1110
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1111
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1112
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1115
    iget-boolean v4, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_1d0

    .line 1116
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1117
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V
    :try_end_1a8
    .catchall {:try_start_178 .. :try_end_1a8} :catchall_332

    goto :goto_1d0

    .line 1108
    :catchall_1a9
    move-exception v0

    :try_start_1aa
    monitor-exit v4
    :try_end_1ab
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_1a9

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .end local v22  # "ident":J
    .end local p0  # "this":Lcom/android/server/am/UserController;
    .end local p1  # "userId":I
    .end local p2  # "foreground":Z
    .end local p3  # "unlockListener":Landroid/os/IProgressListener;
    :try_start_1ab
    throw v0

    .line 1120
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    .restart local v22  # "ident":J
    .restart local p0  # "this":Lcom/android/server/am/UserController;
    .restart local p1  # "userId":I
    .restart local p2  # "foreground":Z
    .restart local p3  # "unlockListener":Landroid/os/IProgressListener;
    :cond_1ac
    iget v4, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1121
    .local v4, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1122
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 1123
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c5
    .catchall {:try_start_1ab .. :try_end_1c5} :catchall_332

    .line 1124
    :try_start_1c5
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1125
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    monitor-exit v5
    :try_end_1d0
    .catchall {:try_start_1c5 .. :try_end_1d0} :catchall_317

    .line 1131
    .end local v4  # "currentUserIdInt":Ljava/lang/Integer;
    :cond_1d0
    :goto_1d0
    :try_start_1d0
    iget v4, v10, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1f3

    .line 1135
    iget v4, v10, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v10, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1136
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    iget v5, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v14, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1137
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1e8
    .catchall {:try_start_1d0 .. :try_end_1e8} :catchall_332

    .line 1138
    :try_start_1e8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1139
    monitor-exit v4

    .line 1140
    const/4 v3, 0x1

    move/from16 v26, v3

    goto :goto_215

    .line 1139
    :catchall_1f0
    move-exception v0

    monitor-exit v4
    :try_end_1f2
    .catchall {:try_start_1e8 .. :try_end_1f2} :catchall_1f0

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .end local v22  # "ident":J
    .end local p0  # "this":Lcom/android/server/am/UserController;
    .end local p1  # "userId":I
    .end local p2  # "foreground":Z
    .end local p3  # "unlockListener":Landroid/os/IProgressListener;
    :try_start_1f2
    throw v0

    .line 1141
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    .restart local v22  # "ident":J
    .restart local p0  # "this":Lcom/android/server/am/UserController;
    .restart local p1  # "userId":I
    .restart local p2  # "foreground":Z
    .restart local p3  # "unlockListener":Landroid/os/IProgressListener;
    :cond_1f3
    iget v4, v10, Lcom/android/server/am/UserState;->state:I

    if-ne v4, v8, :cond_213

    .line 1144
    invoke-virtual {v10, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1145
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    iget v5, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v14, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1146
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_208
    .catchall {:try_start_1f2 .. :try_end_208} :catchall_332

    .line 1147
    :try_start_208
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1148
    monitor-exit v4

    .line 1149
    const/4 v3, 0x1

    move/from16 v26, v3

    goto :goto_215

    .line 1148
    :catchall_210
    move-exception v0

    monitor-exit v4
    :try_end_212
    .catchall {:try_start_208 .. :try_end_212} :catchall_210

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .end local v22  # "ident":J
    .end local p0  # "this":Lcom/android/server/am/UserController;
    .end local p1  # "userId":I
    .end local p2  # "foreground":Z
    .end local p3  # "unlockListener":Landroid/os/IProgressListener;
    :try_start_212
    throw v0

    .line 1141
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    .restart local v22  # "ident":J
    .restart local p0  # "this":Lcom/android/server/am/UserController;
    .restart local p1  # "userId":I
    .restart local p2  # "foreground":Z
    .restart local p3  # "unlockListener":Landroid/os/IProgressListener;
    :cond_213
    move/from16 v26, v3

    .line 1152
    .end local v3  # "needStart":Z
    .local v26, "needStart":Z
    :goto_215
    iget v3, v10, Lcom/android/server/am/UserState;->state:I

    if-nez v3, :cond_22f

    .line 1155
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 1160
    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    .line 1161
    invoke-virtual {v4, v5, v14, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1160
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1164
    :cond_22f
    if-eqz v13, :cond_264

    .line 1165
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4, v14, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1167
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1168
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, v11, v14, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1171
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v11, v14, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_264
    .catchall {:try_start_212 .. :try_end_264} :catchall_332

    .line 1175
    :cond_264
    if-eqz v26, :cond_2af

    .line 1177
    :try_start_266
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 1178
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1180
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v9, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    move-object v3, v9

    move-object/from16 v29, v9

    .end local v9  # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v9, v16

    move-object/from16 v30, v10

    .end local v10  # "uss":Lcom/android/server/am/UserState;
    .local v30, "uss":Lcom/android/server/am/UserState;
    move/from16 v10, v17

    move/from16 v31, v11

    .end local v11  # "oldUserId":I
    .local v31, "oldUserId":I
    move-object/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_2a9
    .catchall {:try_start_266 .. :try_end_2a9} :catchall_2aa

    goto :goto_2b3

    .line 1210
    .end local v24  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v25  # "updateUmState":Z
    .end local v26  # "needStart":Z
    .end local v29  # "intent":Landroid/content/Intent;
    .end local v30  # "uss":Lcom/android/server/am/UserState;
    .end local v31  # "oldUserId":I
    :catchall_2aa
    move-exception v0

    move/from16 v2, p1

    goto/16 :goto_334

    .line 1175
    .restart local v10  # "uss":Lcom/android/server/am/UserState;
    .restart local v11  # "oldUserId":I
    .restart local v24  # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v25  # "updateUmState":Z
    .restart local v26  # "needStart":Z
    :cond_2af
    move-object/from16 v30, v10

    move/from16 v31, v11

    .line 1186
    .end local v10  # "uss":Lcom/android/server/am/UserState;
    .end local v11  # "oldUserId":I
    .restart local v30  # "uss":Lcom/android/server/am/UserState;
    .restart local v31  # "oldUserId":I
    :goto_2b3
    if-eqz p2, :cond_2bf

    .line 1187
    move/from16 v2, p1

    move-object/from16 v14, v30

    move/from16 v15, v31

    .end local v30  # "uss":Lcom/android/server/am/UserState;
    .end local v31  # "oldUserId":I
    .local v14, "uss":Lcom/android/server/am/UserState;
    .local v15, "oldUserId":I
    :try_start_2bb
    invoke-direct {v1, v14, v15, v2}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V

    goto :goto_2c8

    .line 1189
    .end local v14  # "uss":Lcom/android/server/am/UserState;
    .end local v15  # "oldUserId":I
    .restart local v30  # "uss":Lcom/android/server/am/UserState;
    .restart local v31  # "oldUserId":I
    :cond_2bf
    move/from16 v2, p1

    move-object/from16 v14, v30

    move/from16 v15, v31

    .end local v30  # "uss":Lcom/android/server/am/UserState;
    .end local v31  # "oldUserId":I
    .restart local v14  # "uss":Lcom/android/server/am/UserState;
    .restart local v15  # "oldUserId":I
    invoke-direct {v1, v14}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 1192
    :goto_2c8
    if-eqz v26, :cond_30e

    .line 1193
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STARTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    .line 1194
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1195
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1196
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/am/UserController$6;

    invoke-direct {v6, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    const/16 v19, -0x1

    move-object v4, v13

    move-object/from16 v28, v13

    .end local v13  # "intent":Landroid/content/Intent;
    .local v28, "intent":Landroid/content/Intent;
    move/from16 v13, v17

    move-object/from16 v29, v14

    .end local v14  # "uss":Lcom/android/server/am/UserState;
    .local v29, "uss":Lcom/android/server/am/UserState;
    move/from16 v14, v18

    move/from16 v30, v15

    .end local v15  # "oldUserId":I
    .local v30, "oldUserId":I
    move/from16 v15, v27

    move/from16 v17, v20

    move/from16 v18, v21

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_30d
    .catchall {:try_start_2bb .. :try_end_30d} :catchall_32e

    goto :goto_312

    .line 1192
    .end local v28  # "intent":Landroid/content/Intent;
    .end local v29  # "uss":Lcom/android/server/am/UserState;
    .end local v30  # "oldUserId":I
    .restart local v14  # "uss":Lcom/android/server/am/UserState;
    .restart local v15  # "oldUserId":I
    :cond_30e
    move-object/from16 v29, v14

    move/from16 v30, v15

    .line 1210
    .end local v14  # "uss":Lcom/android/server/am/UserState;
    .end local v15  # "oldUserId":I
    .end local v24  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v25  # "updateUmState":Z
    .end local v26  # "needStart":Z
    :goto_312
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    nop

    .line 1213
    return v0

    .line 1126
    .restart local v3  # "needStart":Z
    .restart local v4  # "currentUserIdInt":Ljava/lang/Integer;
    .restart local v10  # "uss":Lcom/android/server/am/UserState;
    .restart local v11  # "oldUserId":I
    .restart local v24  # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v25  # "updateUmState":Z
    :catchall_317
    move-exception v0

    move-object/from16 v29, v10

    move/from16 v30, v11

    move v2, v14

    .end local v10  # "uss":Lcom/android/server/am/UserState;
    .end local v11  # "oldUserId":I
    .restart local v29  # "uss":Lcom/android/server/am/UserState;
    .restart local v30  # "oldUserId":I
    :goto_31d
    :try_start_31d
    monitor-exit v5
    :try_end_31e
    .catchall {:try_start_31d .. :try_end_31e} :catchall_31f

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .end local v22  # "ident":J
    .end local p0  # "this":Lcom/android/server/am/UserController;
    .end local p1  # "userId":I
    .end local p2  # "foreground":Z
    .end local p3  # "unlockListener":Landroid/os/IProgressListener;
    :try_start_31e
    throw v0
    :try_end_31f
    .catchall {:try_start_31e .. :try_end_31f} :catchall_32e

    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    .restart local v22  # "ident":J
    .restart local p0  # "this":Lcom/android/server/am/UserController;
    .restart local p1  # "userId":I
    .restart local p2  # "foreground":Z
    .restart local p3  # "unlockListener":Landroid/os/IProgressListener;
    :catchall_31f
    move-exception v0

    goto :goto_31d

    .line 1095
    .end local v4  # "currentUserIdInt":Ljava/lang/Integer;
    .end local v29  # "uss":Lcom/android/server/am/UserState;
    .end local v30  # "oldUserId":I
    .restart local v11  # "oldUserId":I
    :catchall_321
    move-exception v0

    move/from16 v30, v11

    move v2, v14

    move/from16 v4, v25

    .end local v11  # "oldUserId":I
    .restart local v30  # "oldUserId":I
    goto :goto_32c

    .end local v25  # "updateUmState":Z
    .end local v30  # "oldUserId":I
    .local v4, "updateUmState":Z
    .restart local v11  # "oldUserId":I
    :catchall_328
    move-exception v0

    move/from16 v30, v11

    move v2, v14

    .end local v11  # "oldUserId":I
    .restart local v30  # "oldUserId":I
    :goto_32c
    :try_start_32c
    monitor-exit v5
    :try_end_32d
    .catchall {:try_start_32c .. :try_end_32d} :catchall_330

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .end local v22  # "ident":J
    .end local p0  # "this":Lcom/android/server/am/UserController;
    .end local p1  # "userId":I
    .end local p2  # "foreground":Z
    .end local p3  # "unlockListener":Landroid/os/IProgressListener;
    :try_start_32d
    throw v0
    :try_end_32e
    .catchall {:try_start_32d .. :try_end_32e} :catchall_32e

    .line 1210
    .end local v3  # "needStart":Z
    .end local v4  # "updateUmState":Z
    .end local v24  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30  # "oldUserId":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    .restart local v22  # "ident":J
    .restart local p0  # "this":Lcom/android/server/am/UserController;
    .restart local p1  # "userId":I
    .restart local p2  # "foreground":Z
    .restart local p3  # "unlockListener":Landroid/os/IProgressListener;
    :catchall_32e
    move-exception v0

    goto :goto_334

    .line 1095
    .restart local v3  # "needStart":Z
    .restart local v4  # "updateUmState":Z
    .restart local v24  # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v30  # "oldUserId":I
    :catchall_330
    move-exception v0

    goto :goto_32c

    .line 1210
    .end local v3  # "needStart":Z
    .end local v4  # "updateUmState":Z
    .end local v24  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30  # "oldUserId":I
    :catchall_332
    move-exception v0

    move v2, v14

    :goto_334
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1017
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .end local v22  # "ident":J
    :cond_338
    move v2, v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: switchUser() from pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method startUserInForeground(I)V
    .registers 5
    .param p1, "targetUserId"  # I

    .line 1224
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 1225
    .local v0, "success":Z
    if-nez v0, :cond_11

    .line 1226
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1228
    :cond_11
    return-void
.end method

.method stopRunningUsersLU(I)V
    .registers 8
    .param p1, "maxRunningUsers"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "currentlyRunning":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 317
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 319
    .local v2, "userId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_29

    .line 321
    goto :goto_8

    .line 323
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5, v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v3

    if-nez v3, :cond_38

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 326
    .end local v2  # "userId":Ljava/lang/Integer;
    :cond_38
    goto :goto_8

    .line 327
    :cond_39
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 8
    .param p1, "userId"  # I
    .param p2, "force"  # Z
    .param p3, "stopUserCallback"  # Landroid/app/IStopUserCallback;
    .param p4, "keyEvictedCallback"  # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 610
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_37

    .line 619
    if-ltz p1, :cond_20

    if-eqz p1, :cond_20

    .line 622
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 623
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 625
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d

    throw v1

    .line 620
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop system user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: switchUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method switchUser(I)Z
    .registers 10
    .param p1, "targetUserId"  # I

    .line 1324
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1326
    .local v0, "currentUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1327
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x1

    if-ne p1, v0, :cond_2e

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is already the current user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return v2

    .line 1331
    :cond_2e
    const/4 v3, 0x0

    if-nez v1, :cond_48

    .line 1332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No user info for user #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return v3

    .line 1335
    :cond_48
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot switch to User #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return v3

    .line 1339
    :cond_6a
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot switch to User #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not a full user"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return v3

    .line 1343
    :cond_8c
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1344
    :try_start_8f
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1345
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_c3

    .line 1346
    iget-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_b2

    .line 1347
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1348
    .local v3, "currentUserInfo":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1349
    .local v4, "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1350
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1352
    .end local v3  # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v4  # "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    goto :goto_c2

    .line 1353
    :cond_b2
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1354
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1357
    :goto_c2
    return v2

    .line 1345
    :catchall_c3
    move-exception v2

    :try_start_c4
    monitor-exit v4
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v2
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 8
    .param p1, "userId"  # I
    .param p2, "token"  # [B
    .param p3, "secret"  # [B
    .param p4, "listener"  # Landroid/os/IProgressListener;

    .line 1231
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 1241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1243
    .local v0, "binderToken":J
    :try_start_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 1245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    return v2

    .line 1245
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1233
    .end local v0  # "binderToken":J
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 3
    .param p1, "observer"  # Landroid/app/IUserSwitchObserver;

    .line 1696
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1697
    return-void
.end method

.method unsafeConvertIncomingUser(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 1665
    const/4 v0, -0x2

    if-eq p1, v0, :cond_9

    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    goto :goto_9

    .line 1666
    :cond_7
    move v0, p1

    goto :goto_d

    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1665
    :goto_d
    return v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 2045
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2046
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2047
    .local v1, "token":J
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const-wide v6, 0x10500000001L

    if-ge v4, v5, :cond_3e

    .line 2048
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 2049
    .local v5, "uss":Lcom/android/server/am/UserState;
    const-wide v8, 0x20b00000001L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2050
    .local v8, "uToken":J
    iget-object v10, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2051
    const-wide v6, 0x10b00000002L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/am/UserState;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2052
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2047
    .end local v5  # "uss":Lcom/android/server/am/UserState;
    .end local v8  # "uToken":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2054
    .end local v4  # "i":I
    :cond_3e
    move v4, v3

    .restart local v4  # "i":I
    :goto_3f
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v5, v5

    if-ge v4, v5, :cond_53

    .line 2055
    const-wide v8, 0x20500000002L

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v5, v5, v4

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2054
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 2057
    .end local v4  # "i":I
    :cond_53
    move v4, v3

    .restart local v4  # "i":I
    :goto_54
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 2058
    const-wide v8, 0x20500000003L

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2057
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 2060
    .end local v4  # "i":I
    :cond_73
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_aa

    .line 2061
    nop

    .local v3, "i":I
    :goto_7c
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_aa

    .line 2062
    const-wide v4, 0x20b00000004L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2063
    .local v4, "uToken":J
    iget-object v8, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2064
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2063
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2065
    const-wide v8, 0x10500000002L

    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2066
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2065
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2067
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2061
    .end local v4  # "uToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 2070
    .end local v3  # "i":I
    :cond_aa
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2071
    .end local v1  # "token":J
    monitor-exit v0

    .line 2072
    return-void

    .line 2071
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_af

    throw v1
.end method
