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

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final USER_CURRENT_MSG:I = 0x3c

.field static final USER_START_MSG:I = 0x32

.field private static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e

.field private static final USER_SWITCH_WARNING_TIMEOUT_MS:I = 0x1f4

.field static final USER_UNLOCK_MSG:I = 0x64


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

    .line 264
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 265
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 181
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 187
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 199
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v0, v2, v0

    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 204
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 210
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 216
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 219
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    .line 269
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 270
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 271
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 273
    new-instance p1, Lcom/android/server/am/UserState;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {p1, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 274
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v2, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 278
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 279
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/UserController;)Lcom/android/server/am/UserController$Injector;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method private dispatchForegroundProfileChanged(I)V
    .registers 5

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1400
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 1402
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1405
    goto :goto_16

    .line 1403
    :catch_15
    move-exception v2

    .line 1400
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1407
    :cond_19
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1408
    return-void
.end method

.method private dispatchLockedBootComplete(I)V
    .registers 5

    .line 1424
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1425
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 1427
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1430
    goto :goto_16

    .line 1428
    :catch_15
    move-exception v2

    .line 1425
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1432
    :cond_19
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1433
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;I)V
    .registers 5

    .line 1970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_28

    .line 1971
    if-ltz p2, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_28

    .line 1972
    :cond_11
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shell does not have permission to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1976
    :cond_28
    :goto_28
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 344
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 23

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing user boot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 352
    :try_start_23
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_2d

    .line 353
    monitor-exit v3

    return-void

    .line 355
    :cond_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_14a

    .line 361
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 362
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v3

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v3, v2, v1}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 364
    if-nez v2, :cond_80

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 365
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_80

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_80

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 367
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "framework_locked_boot_completed"

    invoke-static {v3, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 370
    const/16 v3, 0x78

    if-le v1, v3, :cond_80

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishUserBoot took too long. uptimeSeconds="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SystemServerTiming"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_80
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v1

    if-nez v1, :cond_cd

    .line 377
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    new-instance v1, Landroid/content/Intent;

    move-object v4, v1

    const/4 v3, 0x0

    const-string v5, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const/high16 v3, 0x9000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    .line 386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 383
    move-object/from16 v6, p2

    move/from16 v19, v2

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 392
    :cond_cd
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 393
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_117

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x4

    .line 395
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): attempting unlock because parent is unlocked"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {v0, v2}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_145

    .line 400
    :cond_117
    if-nez v1, :cond_11c

    const-string v0, "<null>"

    goto :goto_122

    :cond_11c
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): delaying unlock because parent is locked"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_145
    goto :goto_149

    .line 405
    :cond_146
    invoke-direct {v0, v2}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 407
    :goto_149
    return-void

    .line 355
    :catchall_14a
    move-exception v0

    :try_start_14b
    monitor-exit v3
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    throw v0
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 22

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserController event: finishUserUnlockedCompleted("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 534
    :try_start_28
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v5, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_38

    monitor-exit v3

    return-void

    .line 535
    :cond_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_12d

    .line 536
    invoke-direct {v0, v2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 537
    if-nez v1, :cond_40

    .line 538
    return-void

    .line 541
    :cond_40
    invoke-static {v2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_47

    return-void

    .line 544
    :cond_47
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 546
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 547
    if-eqz v2, :cond_9d

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v3, Landroid/content/Intent;

    move-object v4, v3

    const-string v5, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    const/high16 v5, 0x11000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    new-instance v7, Lcom/android/server/am/UserController$1;

    move-object v6, v7

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    .line 562
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 563
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 552
    move/from16 v19, v2

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 567
    :cond_9d
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_c3

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 575
    return-void

    .line 579
    :cond_c3
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-nez v2, :cond_103

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 584
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_103

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_103

    .line 585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 586
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "framework_boot_completed"

    invoke-static {v3, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 589
    :cond_103
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 590
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const/high16 v1, -0x77000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 597
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 598
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;

    move-object v1, v8

    move v4, v2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void

    .line 535
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v3
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v0
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)Z
    .registers 8

    .line 414
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserController event: finishUserUnlocking("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    return v2

    .line 418
    :cond_29
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_60

    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3a

    goto :goto_60

    .line 423
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_62

    .line 424
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 427
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 428
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x1040084

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 431
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return v4

    .line 421
    :cond_60
    :goto_60
    :try_start_60
    monitor-exit v1

    return v2

    .line 423
    :catchall_62
    move-exception p1

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_62

    throw p1
.end method

.method private forceStopUser(ILjava/lang/String;)V
    .registers 23

    .line 927
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    .line 928
    new-instance v2, Landroid/content/Intent;

    move-object v4, v2

    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    const/high16 v3, 0x50000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 931
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 935
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 932
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v19, -0x1

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 936
    return-void
.end method

.method private getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .registers 3

    .line 2069
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2070
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2071
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getSwitchingToSystemUserMessage()Ljava/lang/String;
    .registers 3

    .line 2075
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2076
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2077
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 1944
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method private getUsersToStopLU(I)[I
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 905
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 906
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 907
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 908
    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v0, :cond_45

    .line 909
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;

    .line 910
    iget-object v6, v6, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 912
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 914
    const/4 v8, 0x1

    if-eq v2, v3, :cond_35

    if-ne v2, v7, :cond_35

    move v7, v8

    goto :goto_36

    :cond_35
    move v7, v4

    .line 917
    :goto_36
    if-ne v6, p1, :cond_39

    goto :goto_3a

    :cond_39
    move v8, v4

    .line 918
    :goto_3a
    if-eqz v7, :cond_42

    if-eqz v8, :cond_3f

    .line 919
    goto :goto_42

    .line 921
    :cond_3f
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    .line 908
    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 923
    :cond_45
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    return-object p1
.end method

.method private isCallingOnHandlerThread()Z
    .registers 3

    .line 1248
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method static synthetic lambda$stopSingleUserLU$4(Landroid/app/IStopUserCallback;I)V
    .registers 2

    .line 697
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 699
    goto :goto_5

    .line 698
    :catch_4
    move-exception p0

    .line 700
    :goto_5
    return-void
.end method

.method private maybeUnlockUser(I)Z
    .registers 3

    .line 1288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result p1

    return p1
.end method

.method private moveUserToForeground(Lcom/android/server/am/UserState;II)V
    .registers 5

    .line 1551
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result p1

    .line 1552
    if-eqz p1, :cond_11

    .line 1553
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v0, "moveUserToForeground"

    invoke-virtual {p1, p3, v0}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_16

    .line 1555
    :cond_11
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorResumeFocusedStackTopActivity()V

    .line 1557
    :goto_16
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1558
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 1559
    return-void
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 3

    .line 1292
    if-nez p1, :cond_3

    return-void

    .line 1294
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1296
    goto :goto_9

    .line 1295
    :catch_8
    move-exception p0

    .line 1297
    :goto_9
    return-void
.end method

.method private showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 1395
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessage()Ljava/lang/String;

    move-result-object v3

    .line 1394
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    return-void
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .registers 5

    .line 1437
    if-nez p1, :cond_3

    .line 1438
    return-void

    .line 1441
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

    .line 1443
    :goto_15
    if-nez v0, :cond_18

    .line 1444
    return-void

    .line 1446
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1449
    const/4 v2, 0x0

    :try_start_1c
    invoke-direct {p0, p1, v1, v2, v2}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1450
    monitor-exit v0

    .line 1451
    return-void

    .line 1450
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw p1
.end method

.method private stopGuestOrEphemeralUserIfBackground(I)V
    .registers 6

    .line 943
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 945
    if-eqz p1, :cond_4d

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_4d

    if-eqz v1, :cond_4d

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4d

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    goto :goto_4d

    .line 950
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_4f

    .line 952
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 954
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    invoke-virtual {v1, p1}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 956
    :cond_34
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 958
    :cond_40
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_45
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 960
    monitor-exit v1

    .line 962
    :cond_49
    return-void

    .line 960
    :catchall_4a
    move-exception p1

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw p1

    .line 948
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v0

    return-void

    .line 950
    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4f

    throw p1
.end method

.method private stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    .line 691
    if-nez v0, :cond_17

    .line 694
    if-eqz p2, :cond_16

    .line 695
    iget-object p3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;

    invoke-direct {v0, p2, p1}, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 702
    :cond_16
    return-void

    .line 705
    :cond_17
    if-eqz p2, :cond_1e

    .line 706
    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_1e
    if-eqz p3, :cond_25

    .line 709
    iget-object p2, v0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_25
    iget p2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4a

    iget p2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v1, 0x5

    if-eq p2, v1, :cond_4a

    .line 714
    invoke-virtual {v0, p3}, Lcom/android/server/am/UserState;->setState(I)V

    .line 715
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object p2

    iget p3, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {p2, p1, p3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 716
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 719
    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 746
    :cond_4a
    return-void
.end method

.method private stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 654
    if-nez p1, :cond_4

    .line 655
    const/4 p1, -0x3

    return p1

    .line 657
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 658
    const/4 p1, -0x2

    return p1

    .line 660
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    .line 662
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_46

    .line 663
    aget v3, v0, v2

    .line 664
    if-eqz v3, :cond_23

    invoke-direct {p0, v3}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_23

    .line 662
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 668
    :cond_23
    :goto_23
    if-eqz p2, :cond_44

    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force stop user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Related users will not be stopped"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 672
    return v1

    .line 674
    :cond_44
    const/4 p1, -0x4

    return p1

    .line 678
    :cond_46
    array-length p2, v0

    move v2, v1

    :goto_48
    if-ge v2, p2, :cond_5c

    aget v3, v0, v2

    .line 679
    nop

    .line 680
    const/4 v4, 0x0

    if-ne v3, p1, :cond_52

    move-object v5, p3

    goto :goto_53

    :cond_52
    move-object v5, v4

    .line 681
    :goto_53
    if-ne v3, p1, :cond_56

    move-object v4, p4

    .line 679
    :cond_56
    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 683
    :cond_5c
    return v1
.end method

.method private timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 8

    .line 1454
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1455
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

    .line 1456
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1457
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1458
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1460
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1462
    monitor-exit v0

    .line 1463
    return-void

    .line 1462
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method private timeoutUserSwitchCallbacks(II)V
    .registers 7

    .line 1466
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1468
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Observers that didn\'t respond: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1472
    :cond_3a
    monitor-exit v0

    .line 1473
    return-void

    .line 1472
    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method private unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .registers 10

    .line 1302
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1303
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1304
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1307
    :try_start_10
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_16

    .line 1310
    goto :goto_31

    .line 1308
    :catch_16
    move-exception p3

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ActivityManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_31
    :goto_31
    iget-object p3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1314
    :try_start_34
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    .line 1315
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    .line 1316
    iget-object v3, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1317
    if-eqz p2, :cond_49

    move p2, v1

    goto :goto_4a

    :cond_49
    move p2, v2

    :goto_4a
    iput-boolean p2, v0, Lcom/android/server/am/UserState;->tokenProvided:Z

    .line 1319
    :cond_4c
    monitor-exit p3
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_be

    .line 1321
    if-nez v0, :cond_53

    .line 1322
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1323
    return v2

    .line 1326
    :cond_53
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result p2

    if-nez p2, :cond_5d

    .line 1327
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1328
    return v2

    .line 1336
    :cond_5d
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1337
    :try_start_60
    iget-object p3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    new-array p3, p3, [I

    .line 1338
    move p4, v2

    :goto_69
    array-length v0, p3

    if-ge p4, v0, :cond_77

    .line 1339
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    aput v0, p3, p4

    .line 1338
    add-int/lit8 p4, p4, 0x1

    goto :goto_69

    .line 1341
    :cond_77
    monitor-exit p2
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_bb

    .line 1342
    array-length p2, p3

    :goto_79
    if-ge v2, p2, :cond_ba

    aget p4, p3, v2

    .line 1343
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_b7

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_b7

    if-eq p4, p1, :cond_b7

    .line 1345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-direct {p0, p4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1342
    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 1351
    :cond_ba
    return v1

    .line 1341
    :catchall_bb
    move-exception p1

    :try_start_bc
    monitor-exit p2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p1

    .line 1319
    :catchall_be
    move-exception p1

    :try_start_bf
    monitor-exit p3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw p1
.end method

.method private updateCurrentProfileIds()V
    .registers 7

    .line 1792
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1794
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1795
    move v3, v2

    :goto_16
    array-length v4, v1

    if-ge v3, v4, :cond_26

    .line 1796
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v1, v3

    .line 1795
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1798
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 1799
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1800
    :try_start_33
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1802
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1803
    nop

    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_59

    .line 1804
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1805
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_56

    .line 1806
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    iget v1, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1803
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1809
    :cond_59
    monitor-exit v3

    .line 1810
    return-void

    .line 1809
    :catchall_5b
    move-exception v0

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method private updateStartedUserArrayLU()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1749
    nop

    .line 1750
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ge v1, v3, :cond_23

    .line 1751
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1753
    iget v6, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v6, v5, :cond_20

    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v4, :cond_20

    .line 1755
    add-int/lit8 v2, v2, 0x1

    .line 1750
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1758
    :cond_23
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1759
    nop

    .line 1760
    move v1, v0

    :goto_29
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 1761
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1762
    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v5, :cond_4e

    iget v2, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v4, :cond_4e

    .line 1764
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v1

    move v1, v3

    .line 1760
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1767
    :cond_51
    return-void
.end method

.method private updateUserToLockLU(I)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 876
    nop

    .line 877
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v0, :cond_94

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_94

    .line 878
    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_94

    .line 879
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 882
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    const-string v2, "ActivityManager"

    if-le v0, v1, :cond_79

    .line 883
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 884
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishUserStopped, stopping user:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " lock user:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    goto :goto_94

    .line 888
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishUserStopped, user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",skip locking"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/16 p1, -0x2710

    .line 895
    :cond_94
    :goto_94
    return p1
.end method


# virtual methods
.method canStartMoreUsers()Z
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
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

    .line 339
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 6

    .line 1538
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

    .line 1539
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v0, :cond_2b

    .line 1540
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 1542
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1543
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1544
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1546
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 1547
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1548
    return-void
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 23

    .line 1476
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

    .line 1477
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 1478
    if-lez v14, :cond_ab

    .line 1479
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 1480
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1481
    const/4 v0, 0x1

    move-object/from16 v10, p1

    :try_start_37
    iput-boolean v0, v10, Lcom/android/server/am/UserState;->switching:Z

    .line 1482
    iput-object v15, v11, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1483
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_a8

    .line 1484
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1486
    const/4 v0, 0x0

    move v8, v0

    :goto_47
    if-ge v8, v14, :cond_a7

    .line 1489
    :try_start_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v8}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1490
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_6b} :catch_9a

    .line 1491
    :try_start_6b
    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1492
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_90

    .line 1493
    :try_start_6f
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_71} :catch_9a

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, v16

    move-object v6, v15

    move-object v7, v9

    move v13, v8

    move-object/from16 v8, p1

    move-object/from16 v18, v9

    move/from16 v9, p2

    move/from16 v10, p3

    :try_start_81
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1517
    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v12, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8f} :catch_96

    .line 1519
    goto :goto_9e

    .line 1492
    :catchall_90
    move-exception v0

    move v13, v8

    move-object/from16 v18, v9

    :goto_94
    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_98

    :try_start_95
    throw v0
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_96} :catch_96

    .line 1518
    :catch_96
    move-exception v0

    goto :goto_9e

    .line 1492
    :catchall_98
    move-exception v0

    goto :goto_94

    .line 1518
    :catch_9a
    move-exception v0

    move v13, v8

    move-object/from16 v18, v9

    .line 1486
    :goto_9e
    add-int/lit8 v8, v13, 0x1

    move-object/from16 v10, p1

    move/from16 v13, p2

    move-object/from16 v9, v18

    goto :goto_47

    .line 1521
    :cond_a7
    goto :goto_b2

    .line 1483
    :catchall_a8
    move-exception v0

    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0

    .line 1522
    :cond_ab
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1523
    :try_start_ae
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1524
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b8

    .line 1526
    :goto_b2
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1527
    return-void

    .line 1524
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0
.end method

.method dispatchUserSwitchComplete(I)V
    .registers 5

    .line 1412
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1414
    nop

    :goto_11
    if-ge v1, v0, :cond_23

    .line 1416
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 1418
    goto :goto_20

    .line 1417
    :catch_1f
    move-exception v2

    .line 1414
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1420
    :cond_23
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1421
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 7

    .line 2111
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2112
    :try_start_3
    const-string v0, "  mStartedUsers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2113
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 2114
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2115
    const-string v3, "    User #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2116
    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2117
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2118
    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2113
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2120
    :cond_35
    const-string v1, "  mStartedUserArray: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2121
    move v1, v0

    :goto_3b
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_51

    .line 2122
    if-lez v1, :cond_47

    .line 2123
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2124
    :cond_47
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2121
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 2126
    :cond_51
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    const-string v1, "  mUserLru: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    move v1, v0

    :goto_5c
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_77

    .line 2129
    if-lez v1, :cond_6b

    .line 2130
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    :cond_6b
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2128
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 2133
    :cond_77
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2134
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_b1

    .line 2135
    const-string v1, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    nop

    :goto_8a
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_b1

    .line 2137
    const-string v1, "    User #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2138
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2139
    const-string v1, " -> profile #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2140
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2136
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 2143
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastActiveUsers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    monitor-exit p2

    .line 2146
    return-void

    .line 2145
    :catchall_df
    move-exception p1

    monitor-exit p2
    :try_end_e1
    .catchall {:try_start_3 .. :try_end_e1} :catchall_df

    throw p1
.end method

.method ensureNotSpecialUser(I)V
    .registers 5

    .line 1706
    if-ltz p1, :cond_3

    .line 1707
    return-void

    .line 1709
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call does not support special user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method exists(I)Z
    .registers 3

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p1

    return p1
.end method

.method expandUserId(I)[I
    .registers 4

    .line 1958
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 1959
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 1961
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p1

    return-object p1
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .registers 10

    .line 788
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserController event: finishUserStopped("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    nop

    .line 794
    nop

    .line 795
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_26
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 797
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 798
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, p1, :cond_61

    iget p1, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-eq p1, v4, :cond_44

    goto :goto_61

    .line 801
    :cond_44
    nop

    .line 803
    iget-object p1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 804
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 805
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 806
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->updateUserToLockLU(I)I

    move-result p1

    .line 807
    const/16 v4, -0x2710

    if-ne p1, v4, :cond_5f

    .line 808
    goto :goto_65

    .line 807
    :cond_5f
    move v5, v6

    goto :goto_65

    .line 799
    :cond_61
    :goto_61
    move p1, v0

    move v7, v6

    move v6, v5

    move v5, v7

    .line 811
    :goto_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_cb

    .line 812
    if-eqz v6, :cond_7b

    .line 813
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 814
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 817
    const-string v1, "finish user"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    .line 820
    :cond_7b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IStopUserCallback;

    .line 822
    if-eqz v6, :cond_91

    :try_start_8d
    invoke-interface {v2, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_94

    .line 823
    :cond_91
    invoke-interface {v2, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_94} :catch_95

    .line 825
    :goto_94
    goto :goto_96

    .line 824
    :catch_95
    move-exception v2

    .line 826
    :goto_96
    goto :goto_7f

    .line 828
    :cond_97
    if-eqz v6, :cond_ca

    .line 829
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerCleanupUser(I)V

    .line 830
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController$Injector;->stackSupervisorRemoveUser(I)V

    .line 832
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 833
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_ba

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v1, :cond_ba

    .line 834
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 837
    :cond_ba
    if-nez v5, :cond_bd

    .line 838
    return-void

    .line 840
    :cond_bd
    nop

    .line 844
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;-><init>(Lcom/android/server/am/UserController;IILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 863
    :cond_ca
    return-void

    .line 811
    :catchall_cb
    move-exception p1

    :try_start_cc
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw p1
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .registers 21

    .line 749
    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserController event: finishUserStopping("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    new-instance v14, Lcom/android/server/am/UserController$5;

    invoke-direct {v14, v0, v1}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 766
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 767
    :try_start_30
    iget v4, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_37

    .line 769
    monitor-exit v2

    return-void

    .line 771
    :cond_37
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 772
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_82

    .line 773
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v3, v1}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 775
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x4007

    .line 777
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 775
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 778
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 780
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v13, 0x3e8

    .line 783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v16, v14

    move v14, v1

    .line 784
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    move-object/from16 v17, v15

    move v15, v1

    .line 780
    move-object/from16 v1, v17

    move-object/from16 v3, v16

    move/from16 v16, p1

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 785
    return-void

    .line 772
    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 39

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserController event: finishUserUnlocked("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {v2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    .line 463
    :cond_2c
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 465
    :try_start_2f
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v5, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_3f

    monitor-exit v3

    return-void

    .line 468
    :cond_3f
    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v4

    if-nez v4, :cond_49

    .line 469
    monitor-exit v3

    return-void

    .line 471
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_125

    .line 472
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v3, v2, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 473
    iget-object v3, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 477
    if-nez v2, :cond_63

    .line 478
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v4, 0x40000

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 480
    :cond_63
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v2}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 483
    new-instance v3, Landroid/content/Intent;

    move-object v4, v3

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const/high16 v15, 0x50000000

    invoke-virtual {v3, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v15, v16

    const/16 v16, 0x3e8

    .line 489
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 487
    move/from16 v19, v2

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 491
    invoke-direct {v0, v2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 492
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 493
    if-eqz v3, :cond_f1

    .line 494
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v21, v4

    const-string v5, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 497
    const/high16 v5, 0x50000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v20, v4

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

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v34

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v35

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v3

    .line 500
    invoke-virtual/range {v20 .. v36}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 510
    :cond_f1
    invoke-direct {v0, v2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 511
    iget-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->DATE:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_121

    .line 516
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_115

    .line 517
    iget-boolean v3, v1, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v3, :cond_112

    iget-object v3, v0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 518
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-nez v3, :cond_116

    :cond_112
    const/4 v3, 0x1

    move v4, v3

    goto :goto_116

    .line 520
    :cond_115
    nop

    .line 522
    :cond_116
    :goto_116
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v5, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    .line 524
    goto :goto_124

    .line 525
    :cond_121
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    .line 527
    :goto_124
    return-void

    .line 471
    :catchall_125
    move-exception v0

    :try_start_126
    monitor-exit v3
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    throw v0
.end method

.method getCurrentOrTargetUserId()I
    .registers 4

    .line 1911
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1912
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

    .line 1913
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

    .line 1918
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

    .line 2016
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2017
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object v1

    .line 2018
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 1883
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1885
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4b

    .line 1887
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1891
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1896
    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_58

    .line 1897
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    .line 1899
    :cond_58
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1900
    :try_start_5b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1901
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_61

    throw v1
.end method

.method getCurrentUserId()I
    .registers 3

    .line 1928
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1929
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return v1

    .line 1930
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

    .line 1924
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

    .line 1906
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1907
    :goto_b
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

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

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
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

    .line 296
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 297
    if-nez v3, :cond_26

    .line 299
    goto :goto_b

    .line 301
    :cond_26
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_31

    .line 304
    goto :goto_b

    .line 306
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_42

    .line 308
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 309
    goto :goto_b

    .line 312
    :cond_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    goto :goto_b

    .line 314
    :cond_46
    return-object v0
.end method

.method getStartedUserArray()[I
    .registers 3

    .line 1813
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1814
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object v1

    .line 1815
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getStartedUserState(I)Lcom/android/server/am/UserState;
    .registers 4

    .line 1736
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object p1

    .line 1738
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method getUserIds()[I
    .registers 2

    .line 1948
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .registers 3

    .line 1939
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1940
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    goto :goto_13

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    :goto_13
    return-object v0
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 24

    .line 1616
    move-object/from16 v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1617
    if-ne v11, v8, :cond_11

    .line 1618
    return v8

    .line 1627
    :cond_11
    invoke-virtual {v0, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 1629
    if-eqz v7, :cond_d1

    const/16 v1, 0x3e8

    if-eq v7, v1, :cond_d1

    .line 1631
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v1

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v1, :cond_34

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    if-ne v11, v1, :cond_34

    .line 1633
    invoke-virtual {v0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1636
    move v13, v15

    goto :goto_64

    .line 1637
    :cond_34
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_46

    .line 1640
    move v13, v15

    goto :goto_64

    .line 1641
    :cond_46
    if-ne v9, v14, :cond_49

    .line 1643
    goto :goto_64

    .line 1644
    :cond_49
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_5a

    .line 1647
    goto :goto_64

    .line 1648
    :cond_5a
    if-nez v9, :cond_5e

    .line 1650
    move v13, v15

    goto :goto_64

    .line 1651
    :cond_5e
    if-ne v9, v15, :cond_ba

    .line 1654
    invoke-virtual {v0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v13

    .line 1658
    :goto_64
    if-nez v13, :cond_d1

    .line 1659
    const/4 v1, -0x3

    if-ne v8, v1, :cond_6a

    .line 1662
    goto :goto_d2

    .line 1664
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1665
    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    if-eqz v10, :cond_85

    .line 1668
    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    :cond_85
    const-string v1, " asks to run as user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1673
    const-string v1, " but is calling from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-static {v0, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1675
    const-string v1, "; this requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    if-eq v9, v14, :cond_ab

    .line 1678
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    :cond_ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1682
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1656
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1687
    :cond_d1
    move v11, v12

    :goto_d2
    if-nez p4, :cond_d7

    .line 1688
    invoke-virtual {v0, v11}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 1691
    :cond_d7
    const/16 v1, 0x7d0

    if-ne v7, v1, :cond_10b

    if-ltz v11, :cond_10b

    .line 1692
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e7

    goto :goto_10b

    .line 1693
    :cond_e7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 1694
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_10b
    :goto_10b
    return v11
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 2149
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c6

    goto/16 :goto_c3

    .line 2203
    :sswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_c3

    .line 2151
    :sswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 2152
    goto/16 :goto_c3

    .line 2200
    :sswitch_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    .line 2201
    goto/16 :goto_c3

    .line 2175
    :sswitch_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2176
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2178
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2181
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 2182
    goto/16 :goto_c3

    .line 2163
    :sswitch_3e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    .line 2164
    goto/16 :goto_c3

    .line 2197
    :sswitch_47
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    .line 2198
    goto/16 :goto_c3

    .line 2194
    :sswitch_4e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    .line 2195
    goto :goto_c3

    .line 2184
    :sswitch_54
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2186
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2184
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2187
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2189
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2187
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    .line 2192
    goto :goto_c3

    .line 2169
    :sswitch_7f
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2171
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2169
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2172
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    .line 2173
    goto :goto_c3

    .line 2166
    :sswitch_9b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 2167
    goto :goto_c3

    .line 2160
    :sswitch_9f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2161
    goto :goto_c3

    .line 2157
    :sswitch_ab
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2158
    goto :goto_c3

    .line 2154
    :sswitch_b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2155
    nop

    .line 2206
    :goto_c3
    const/4 p1, 0x0

    return p1

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

    .line 1742
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit v0

    return p1

    .line 1744
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4

    .line 1979
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method isCurrentProfile(I)Z
    .registers 4

    .line 2010
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2011
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2012
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method isLockScreenDisabled(I)Z
    .registers 3

    .line 2053
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    return p1
.end method

.method isSameProfileGroup(II)Z
    .registers 7

    .line 1983
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 1984
    return v0

    .line 1986
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1987
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 1989
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 1991
    if-eq p1, v3, :cond_1a

    if-ne p1, p2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    monitor-exit v1

    return v0

    .line 1993
    :catchall_1d
    move-exception p1

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method isSystemUserStarted()Z
    .registers 7

    .line 1871
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1872
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1873
    if-nez v1, :cond_10

    .line 1874
    monitor-exit v0

    return v2

    .line 1876
    :cond_10
    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1f

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_20

    :cond_1f
    move v2, v4

    :cond_20
    monitor-exit v0

    return v2

    .line 1879
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method isUserOrItsParentRunning(I)Z
    .registers 6

    .line 1997
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1998
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1999
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2001
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 2002
    if-ne p1, v3, :cond_19

    .line 2003
    monitor-exit v0

    return v1

    .line 2005
    :cond_19
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2006
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method isUserRunning(II)Z
    .registers 10

    .line 1819
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1820
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1821
    return v1

    .line 1823
    :cond_8
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 1824
    return v3

    .line 1826
    :cond_e
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1a

    .line 1827
    iget p1, v0, Lcom/android/server/am/UserState;->state:I

    if-eqz p1, :cond_19

    if-eq p1, v3, :cond_19

    .line 1832
    return v1

    .line 1830
    :cond_19
    return v3

    .line 1835
    :cond_1a
    and-int/lit8 v2, p2, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eqz v2, :cond_33

    .line 1836
    iget p2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_32

    if-eq p2, v4, :cond_32

    if-eq p2, v6, :cond_2d

    if-eq p2, v5, :cond_2d

    .line 1845
    return v1

    .line 1843
    :cond_2d
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p1

    return p1

    .line 1839
    :cond_32
    return v3

    .line 1848
    :cond_33
    and-int/2addr p2, v6

    if-eqz p2, :cond_45

    .line 1849
    iget p2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq p2, v4, :cond_44

    if-eq p2, v6, :cond_3f

    if-eq p2, v5, :cond_3f

    .line 1857
    return v1

    .line 1855
    :cond_3f
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p1

    return p1

    .line 1851
    :cond_44
    return v3

    .line 1861
    :cond_45
    iget p1, v0, Lcom/android/server/am/UserState;->state:I

    if-eq p1, v6, :cond_4e

    iget p1, v0, Lcom/android/server/am/UserState;->state:I

    if-eq p1, v5, :cond_4e

    move v1, v3

    :cond_4e
    return v1
.end method

.method public synthetic lambda$finishUserStopped$6$UserController(IILjava/util/ArrayList;)V
    .registers 6

    .line 845
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 847
    const-string p1, "ActivityManager"

    const-string p2, "User was restarted, skipping key eviction"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    monitor-exit v0

    return-void

    .line 850
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3c

    .line 852
    :try_start_15
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_36

    .line 855
    nop

    .line 856
    if-ne p1, p2, :cond_35

    .line 857
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 858
    invoke-interface {p3, p2}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    .line 859
    goto :goto_25

    .line 861
    :cond_35
    return-void

    .line 853
    :catch_36
    move-exception p1

    .line 854
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 850
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public synthetic lambda$finishUserSwitch$0$UserController(Lcom/android/server/am/UserState;)V
    .registers 3

    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 286
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 287
    :try_start_9
    iget v0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    .line 288
    monitor-exit p1

    .line 289
    return-void

    .line 288
    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public synthetic lambda$finishUserUnlocked$2$UserController(Lcom/android/server/am/UserState;)V
    .registers 2

    .line 523
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public synthetic lambda$finishUserUnlockedCompleted$3$UserController(Landroid/content/Intent;III)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v17, p2

    move/from16 v15, p3

    move/from16 v16, p4

    .line 599
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$2;

    move-object v4, v3

    move/from16 v5, p2

    invoke-direct {v3, v0, v5}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v0}, [Ljava/lang/String;

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

    const/16 v14, 0x3e8

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 613
    return-void
.end method

.method public synthetic lambda$finishUserUnlocking$1$UserController(ILcom/android/server/am/UserState;)V
    .registers 6

    .line 432
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 433
    const-string p1, "ActivityManager"

    const-string p2, "User key got locked unexpectedly, leaving user locked."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 436
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 437
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_1c
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_24

    .line 440
    monitor-exit v0

    return-void

    .line 442
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_44

    .line 443
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 445
    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 449
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 450
    return-void

    .line 442
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public synthetic lambda$handleMessage$9$UserController(I)V
    .registers 3

    .line 2179
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    .line 2180
    return-void
.end method

.method public synthetic lambda$scheduleStartProfiles$7$UserController()V
    .registers 5

    .line 970
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 971
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 974
    :cond_15
    return-void
.end method

.method public synthetic lambda$startUser$8$UserController(IZLandroid/os/IProgressListener;)V
    .registers 4

    .line 1118
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method public synthetic lambda$stopSingleUserLU$5$UserController(ILcom/android/server/am/UserState;)V
    .registers 22

    .line 723
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/content/Intent;

    move-object v3, v2

    const-string v4, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    const/high16 v4, 0x40000000  # 2.0f

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 725
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    new-instance v2, Lcom/android/server/am/UserController$4;

    move-object v5, v2

    move-object/from16 v4, p2

    invoke-direct {v2, v0, v1, v4}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 737
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 739
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 743
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 739
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    const/16 v18, -0x1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 744
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 1782
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1783
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1784
    return-void
.end method

.method onUserRemoved(I)V
    .registers 5

    .line 2022
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2023
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2024
    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_25

    .line 2025
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-eq v2, p1, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2026
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_22

    .line 2027
    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2024
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2031
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 2032
    monitor-exit v0

    .line 2033
    return-void

    .line 2032
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 5

    .line 1713
    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1723
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1724
    return-void

    .line 1716
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1720
    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method restartUser(IZ)I
    .registers 5

    .line 617
    new-instance v0, Lcom/android/server/am/UserController$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p1

    return p1
.end method

.method scheduleStartProfiles()V
    .registers 3

    .line 969
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 975
    return-void
.end method

.method sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .registers 5

    .line 1772
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 1774
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 1775
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1776
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1777
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1775
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1779
    :cond_1d
    return-void

    .line 1774
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1532
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1533
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1535
    return-void
.end method

.method sendForegroundProfileChanged(I)V
    .registers 5

    .line 1727
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1728
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1729
    return-void
.end method

.method sendUserSwitchBroadcasts(II)V
    .registers 35

    .line 1562
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 1563
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 1564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1567
    const-string v15, "android.intent.extra.user_handle"

    const/high16 v14, 0x50000000

    const/4 v13, 0x0

    if-ltz v1, :cond_81

    .line 1569
    :try_start_19
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v1, v13}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1570
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1571
    move v11, v13

    :goto_28
    if-ge v11, v12, :cond_7b

    .line 1572
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1573
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1576
    invoke-virtual {v4, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget v26, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    move/from16 v27, v10

    move-object/from16 v10, v17

    move/from16 v28, v11

    move/from16 v11, v18

    move/from16 v29, v12

    move-object/from16 v12, v19

    move/from16 v13, v24

    move/from16 v14, v25

    move-object/from16 v30, v15

    move/from16 v15, v26

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v27

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1571
    add-int/lit8 v11, v28, 0x1

    move/from16 v12, v29

    move-object/from16 v15, v30

    const/4 v13, 0x0

    const/high16 v14, 0x50000000

    goto :goto_28

    :cond_7b
    move-object/from16 v30, v15

    goto :goto_83

    .line 1609
    :catchall_7e
    move-exception v0

    goto/16 :goto_118

    .line 1567
    :cond_81
    move-object/from16 v30, v15

    .line 1583
    :goto_83
    if-ltz v2, :cond_11c

    .line 1585
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1586
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    .line 1587
    move v14, v3

    :goto_95
    if-ge v14, v15, :cond_e6

    .line 1588
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v13, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1589
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1590
    const/high16 v12, 0x50000000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1592
    move-object/from16 v11, v30

    invoke-virtual {v4, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1593
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    sget v25, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    move-object/from16 v31, v11

    move/from16 v11, v17

    move-object/from16 v12, v18

    move/from16 v26, v13

    move/from16 v13, v19

    move/from16 v27, v14

    move/from16 v14, v24

    move/from16 v24, v15

    move/from16 v15, v25

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v26

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1587
    add-int/lit8 v14, v27, 0x1

    move/from16 v15, v24

    move-object/from16 v30, v31

    goto :goto_95

    .line 1598
    :cond_e6
    move-object/from16 v31, v30

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1599
    const/high16 v3, 0x50000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1601
    move-object/from16 v3, v31

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1602
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.MANAGE_USERS"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v13, 0x3e8

    const/16 v16, -0x1

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_117
    .catchall {:try_start_19 .. :try_end_117} :catchall_7e

    goto :goto_11c

    .line 1609
    :goto_118
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_11c
    :goto_11c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    nop

    .line 1611
    return-void
.end method

.method setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 3

    .line 2057
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2058
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 2059
    monitor-exit v0

    .line 2060
    return-void

    .line 2059
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 3

    .line 2063
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2064
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 2065
    monitor-exit v0

    .line 2066
    return-void

    .line 2065
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method protected shouldConfirmCredentials(I)Z
    .registers 5

    .line 2040
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2041
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 2042
    monitor-exit v0

    return v2

    .line 2044
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    .line 2045
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2046
    return v2

    .line 2048
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 2049
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    return v2

    .line 2044
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method startProfiles()V
    .registers 8

    .line 978
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 982
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 983
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 984
    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    const/16 v6, 0x10

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3c

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v0, :cond_3c

    .line 985
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 986
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_3c
    goto :goto_1c

    .line 989
    :cond_3d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 990
    move v1, v2

    .line 991
    :goto_42
    if-ge v1, v0, :cond_58

    iget v4, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_58

    .line 992
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 994
    :cond_58
    if-ge v1, v0, :cond_61

    .line 995
    const-string v0, "ActivityManager"

    const-string v1, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_61
    return-void
.end method

.method startUser(IZ)Z
    .registers 4

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result p1

    return p1
.end method

.method startUser(IZLandroid/os/IProgressListener;)Z
    .registers 32

    .line 1039
    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v13, p2

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_319

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting userid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 1052
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 1053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 1055
    :try_start_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v12

    .line 1056
    const/4 v11, 0x1

    if-ne v12, v15, :cond_65

    .line 1057
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v2

    .line 1058
    if-nez v2, :cond_51

    .line 1059
    const-string v2, "ActivityManager"

    const-string v3, "Current user has no UserState"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1062
    :cond_51
    if-nez v15, :cond_58

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-nez v3, :cond_58

    goto :goto_65

    .line 1066
    :cond_58
    iget v0, v2, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_60

    .line 1069
    invoke-static {v15, v1}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_60
    .catchall {:try_start_3c .. :try_end_60} :catchall_314

    .line 1071
    :cond_60
    nop

    .line 1241
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    return v11

    .line 1076
    :cond_65
    :goto_65
    if-eqz v13, :cond_6f

    .line 1077
    :try_start_67
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v3, "startUser"

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    .line 1080
    :cond_6f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1081
    const/4 v3, 0x0

    if-nez v2, :cond_91

    .line 1082
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No user info for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_314

    .line 1083
    nop

    .line 1241
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1083
    return v3

    .line 1085
    :cond_91
    if-eqz v13, :cond_b9

    :try_start_93
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 1086
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot switch to User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not a full user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_93 .. :try_end_b4} :catchall_314

    .line 1087
    nop

    .line 1241
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    return v3

    .line 1090
    :cond_b9
    if-eqz v13, :cond_df

    :try_start_bb
    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_df

    .line 1091
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start pre-created user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_bb .. :try_end_da} :catchall_314

    .line 1092
    nop

    .line 1241
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    return v3

    .line 1095
    :cond_df
    if-eqz v13, :cond_f4

    :try_start_e1
    iget-boolean v4, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_f4

    .line 1096
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const v5, 0x10a0099

    const v6, 0x10a0098

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 1100
    :cond_f4
    nop

    .line 1101
    nop

    .line 1106
    iget-object v4, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_f9
    .catchall {:try_start_e1 .. :try_end_f9} :catchall_314

    .line 1107
    :try_start_f9
    iget-object v5, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 1108
    const/4 v6, 0x0

    const/4 v7, 0x5

    if-nez v5, :cond_125

    .line 1109
    new-instance v5, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 1110
    iget-object v8, v5, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v9, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v9, v6}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1111
    iget-object v8, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1112
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1113
    nop

    .line 1114
    move-object v10, v5

    move v5, v11

    move v8, v5

    goto :goto_15c

    .line 1115
    :cond_125
    iget v8, v5, Lcom/android/server/am/UserState;->state:I

    if-ne v8, v7, :cond_159

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v8

    if-nez v8, :cond_159

    .line 1116
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is shutting down - will start after full stop"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;

    invoke-direct {v3, v0, v15, v13, v1}, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    monitor-exit v4
    :try_end_155
    .catchall {:try_start_f9 .. :try_end_155} :catchall_311

    .line 1241
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1119
    return v11

    .line 1121
    :cond_159
    move v8, v3

    move-object v10, v5

    move v5, v8

    :goto_15c
    :try_start_15c
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1122
    iget-object v14, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1123
    iget-object v14, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    monitor-exit v4
    :try_end_16b
    .catchall {:try_start_15c .. :try_end_16b} :catchall_311

    .line 1125
    if-eqz v1, :cond_172

    .line 1126
    :try_start_16d
    iget-object v4, v10, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1128
    :cond_172
    if-eqz v5, :cond_17f

    .line 1129
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v4, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v15, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1131
    :cond_17f
    if-eqz v13, :cond_1c6

    .line 1133
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEventLocked(I)V

    .line 1134
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18b
    .catchall {:try_start_16d .. :try_end_18b} :catchall_314

    .line 1135
    :try_start_18b
    iput v15, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1136
    const/16 v4, -0x2710

    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1137
    monitor-exit v1
    :try_end_192
    .catchall {:try_start_18b .. :try_end_192} :catchall_1c3

    .line 1138
    :try_start_192
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 1139
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1140
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1141
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1144
    iget-boolean v1, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v1, :cond_1ea

    .line 1145
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1146
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V
    :try_end_1c2
    .catchall {:try_start_192 .. :try_end_1c2} :catchall_314

    goto :goto_1ea

    .line 1137
    :catchall_1c3
    move-exception v0

    :try_start_1c4
    monitor-exit v1
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c3

    :try_start_1c5
    throw v0

    .line 1149
    :cond_1c6
    iget v1, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1150
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1151
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 1152
    iget-object v4, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1df
    .catchall {:try_start_1c5 .. :try_end_1df} :catchall_314

    .line 1153
    :try_start_1df
    iget-object v5, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1154
    iget-object v5, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    monitor-exit v4
    :try_end_1ea
    .catchall {:try_start_1df .. :try_end_1ea} :catchall_30e

    .line 1160
    :cond_1ea
    :goto_1ea
    :try_start_1ea
    iget v1, v10, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_20b

    .line 1164
    iget v1, v10, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v10, v1}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1165
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v4, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v15, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1166
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_202
    .catchall {:try_start_1ea .. :try_end_202} :catchall_314

    .line 1167
    :try_start_202
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1168
    monitor-exit v1

    .line 1169
    move v8, v11

    goto :goto_229

    .line 1168
    :catchall_208
    move-exception v0

    monitor-exit v1
    :try_end_20a
    .catchall {:try_start_202 .. :try_end_20a} :catchall_208

    :try_start_20a
    throw v0

    .line 1170
    :cond_20b
    iget v1, v10, Lcom/android/server/am/UserState;->state:I

    if-ne v1, v7, :cond_229

    .line 1173
    invoke-virtual {v10, v3}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1174
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v4, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v15, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1175
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_220
    .catchall {:try_start_20a .. :try_end_220} :catchall_314

    .line 1176
    :try_start_220
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1177
    monitor-exit v1

    .line 1178
    move v8, v11

    goto :goto_229

    .line 1177
    :catchall_226
    move-exception v0

    monitor-exit v1
    :try_end_228
    .catchall {:try_start_220 .. :try_end_228} :catchall_226

    :try_start_228
    throw v0

    .line 1181
    :cond_229
    :goto_229
    iget v1, v10, Lcom/android/server/am/UserState;->state:I

    if-nez v1, :cond_243

    .line 1184
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 1189
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v15, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1192
    :cond_243
    if-eqz v13, :cond_278

    .line 1193
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5, v15, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1194
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1195
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1e

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1196
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4, v12, v15, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1198
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v12, v15, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1202
    :cond_278
    iget-boolean v1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_27f

    .line 1203
    move/from16 v20, v3

    goto :goto_281

    .line 1202
    :cond_27f
    move/from16 v20, v8

    .line 1206
    :goto_281
    if-eqz v20, :cond_2bf

    .line 1208
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    const/high16 v1, 0x50000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1211
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1212
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    sget v24, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v14, 0x3e8

    move-object/from16 v25, v10

    move-object/from16 v10, v16

    move/from16 v26, v11

    move/from16 v11, v17

    move/from16 v27, v12

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, p1

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_2c5

    .line 1206
    :cond_2bf
    move-object/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    .line 1217
    :goto_2c5
    if-eqz p2, :cond_2d1

    .line 1218
    move/from16 v1, p1

    move-object/from16 v5, v25

    move/from16 v2, v27

    invoke-direct {v0, v5, v2, v1}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V

    goto :goto_2d8

    .line 1220
    :cond_2d1
    move/from16 v1, p1

    move-object/from16 v5, v25

    invoke-direct {v0, v5}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 1223
    :goto_2d8
    if-eqz v20, :cond_309

    .line 1224
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_STARTING"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1226
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1227
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/am/UserController$6;

    invoke-direct {v7, v0}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_309
    .catchall {:try_start_228 .. :try_end_309} :catchall_314

    .line 1241
    :cond_309
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1242
    nop

    .line 1244
    return v26

    .line 1155
    :catchall_30e
    move-exception v0

    :try_start_30f
    monitor-exit v4
    :try_end_310
    .catchall {:try_start_30f .. :try_end_310} :catchall_30e

    :try_start_310
    throw v0
    :try_end_311
    .catchall {:try_start_310 .. :try_end_311} :catchall_314

    .line 1124
    :catchall_311
    move-exception v0

    :try_start_312
    monitor-exit v4
    :try_end_313
    .catchall {:try_start_312 .. :try_end_313} :catchall_311

    :try_start_313
    throw v0
    :try_end_314
    .catchall {:try_start_313 .. :try_end_314} :catchall_314

    .line 1241
    :catchall_314
    move-exception v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1041
    :cond_319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: switchUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startUserInForeground(I)V
    .registers 3

    .line 1255
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result p1

    .line 1256
    if-nez p1, :cond_11

    .line 1257
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1259
    :cond_11
    return-void
.end method

.method stopRunningUsersLU(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 323
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_29

    .line 325
    goto :goto_8

    .line 327
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v2

    if-nez v2, :cond_38

    .line 328
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 330
    :cond_38
    goto :goto_8

    .line 331
    :cond_39
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 7

    .line 629
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_37

    .line 638
    if-ltz p1, :cond_20

    if-eqz p1, :cond_20

    .line 641
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 642
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 644
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d

    throw p1

    .line 639
    :cond_20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t stop system user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 631
    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: switchUser() from pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 635
    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method switchUser(I)Z
    .registers 7

    .line 1355
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switching to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1358
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1359
    const/4 v2, 0x1

    if-ne p1, v0, :cond_45

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already the current user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return v2

    .line 1363
    :cond_45
    const/4 v3, 0x0

    if-nez v1, :cond_5f

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No user info for user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return v3

    .line 1367
    :cond_5f
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_81

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return v3

    .line 1371
    :cond_81
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": not a full user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return v3

    .line 1375
    :cond_a3
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1376
    :try_start_a6
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1377
    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_da

    .line 1378
    iget-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_c9

    .line 1379
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1380
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1381
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1382
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1384
    goto :goto_d9

    .line 1385
    :cond_c9
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1389
    :goto_d9
    return v2

    .line 1377
    :catchall_da
    move-exception p1

    :try_start_db
    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw p1
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 8

    .line 1262
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const-string v2, "ActivityManager"

    if-nez v0, :cond_32

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1274
    :try_start_25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 1276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    return p1

    .line 1276
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1264
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: unlockUser() from pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1268
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 3

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1733
    return-void
.end method

.method unsafeConvertIncomingUser(I)I
    .registers 3

    .line 1701
    const/4 v0, -0x2

    if-eq p1, v0, :cond_8

    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    goto :goto_8

    .line 1702
    :cond_7
    goto :goto_c

    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p1

    .line 1701
    :goto_c
    return p1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13

    .line 2081
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2082
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2083
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide v4, 0x10500000001L

    if-ge v2, v3, :cond_3e

    .line 2084
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 2085
    const-wide v6, 0x20b00000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2086
    iget-object v8, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2087
    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UserState;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2088
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2083
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2090
    :cond_3e
    move v2, v1

    :goto_3f
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v3, v3

    if-ge v2, v3, :cond_53

    .line 2091
    const-wide v6, 0x20500000002L

    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v3, v3, v2

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2090
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 2093
    :cond_53
    move v2, v1

    :goto_54
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    .line 2094
    const-wide v6, 0x20500000003L

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2093
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 2096
    :cond_73
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_aa

    .line 2097
    nop

    :goto_7c
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_aa

    .line 2098
    const-wide v2, 0x20b00000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2099
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2100
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2099
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2101
    const-wide v6, 0x10500000002L

    iget-object v8, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2102
    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 2101
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2103
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2097
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 2106
    :cond_aa
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2107
    monitor-exit v0

    .line 2108
    return-void

    .line 2107
    :catchall_af
    move-exception p1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_af

    throw p1
.end method
