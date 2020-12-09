.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;,
        Lcom/android/server/content/SyncManager$OnReadyCallback;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    }
.end annotation


# static fields
.field private static final DEBUG_ACCOUNT_ACCESS:Z = false

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final ENABLE_SUSPICIOUS_CHECK:Z

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field private static final MIN_SYNC_JOB_ID:I = 0x186a0

.field private static final SYNC_ADAPTER_CONNECTION_FLAGS:I = 0x15

.field private static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field private static final SYNC_DELAY_ON_LOW_STORAGE:J = 0x36ee80L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_OP_STATE_INVALID:I = 0x1

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS:I = 0x2

.field private static final SYNC_OP_STATE_VALID:I = 0x0

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"

.field private static sInstance:Lcom/android/server/content/SyncManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "SyncManager.class"
        }
    .end annotation
.end field

.field private static final sOpDumpComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpRuntimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mDeviceIsIdle:Z

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mProvisioned:Z

.field private final mRand:Ljava/util/Random;

.field private volatile mReportedSyncActive:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUnlockedUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUnlockedUsers"
        }
    .end annotation
.end field

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 162
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    .line 168
    nop

    .line 169
    const-string/jumbo v0, "sync.local_sync_delay"

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 228
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 1995
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    .line 2025
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 13

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 235
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    .line 246
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 297
    new-instance v1, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    new-instance v1, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v1, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    new-instance v1, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    new-instance v1, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v1, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 458
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 570
    const-class v1, Lcom/android/server/content/SyncManager;

    monitor-enter v1

    .line 571
    :try_start_4a
    sget-object v2, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v2, :cond_51

    .line 572
    sput-object p0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_58

    .line 574
    :cond_51
    const-string v2, "SyncManager"

    const-string v3, "SyncManager instantiated multiple times"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_205

    .line 580
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 582
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 584
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;Landroid/os/Looper;)V

    .line 585
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 586
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 595
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 604
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 611
    new-instance v1, Landroid/content/SyncAdaptersCache;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 613
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    const-string v3, "SyncManager"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    .line 614
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 615
    new-instance v1, Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 617
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v2, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v2, v3}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 630
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    .line 631
    new-instance v1, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 633
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 634
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 636
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 637
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 641
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 642
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 644
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 645
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 651
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 654
    const/4 v1, 0x0

    if-nez p2, :cond_13d

    .line 655
    nop

    .line 656
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_13f

    .line 658
    :cond_13d
    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 660
    :goto_13f
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 661
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 662
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 663
    const-class v2, Landroid/accounts/AccountManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManagerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 664
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 666
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    new-instance v3, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;

    invoke-direct {v3, p0}, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 677
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 685
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "SyncLoopWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 687
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 689
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 690
    iget-boolean v2, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v2, :cond_1d1

    .line 691
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 692
    new-instance v2, Lcom/android/server/content/SyncManager$12;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 702
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    monitor-enter v1

    .line 703
    :try_start_1b3
    const-string v4, "device_provisioned"

    .line 704
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 703
    invoke-virtual {p1, v4, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 710
    iget-boolean v4, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 711
    iget-boolean v4, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v4, :cond_1cc

    .line 712
    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 714
    :cond_1cc
    monitor-exit v1

    goto :goto_1d1

    :catchall_1ce
    move-exception p1

    monitor-exit v1
    :try_end_1d0
    .catchall {:try_start_1b3 .. :try_end_1d0} :catchall_1ce

    throw p1

    .line 717
    :cond_1d1
    :goto_1d1
    if-nez p2, :cond_1e5

    .line 719
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string p1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v7, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 731
    :cond_1e5
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->whiteListExistingSyncAdaptersIfNeeded()V

    .line 733
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array p2, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync manager initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 734
    return-void

    .line 576
    :catchall_205
    move-exception p1

    :try_start_206
    monitor-exit v1
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_205

    throw p1
.end method

.method static synthetic access$000(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2

    .line 156
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return p0
.end method

.method static synthetic access$1576(Lcom/android/server/content/SyncManager;I)Z
    .registers 3

    .line 156
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2

    .line 156
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/content/SyncManager;)V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->removeStaleAccounts()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 4

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/content/SyncManager;)V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/server/content/SyncManager;I)J
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$4200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 4

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/content/SyncManager;)Ljava/lang/String;
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method private canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 6

    .line 1156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1157
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1156
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 1158
    return v0

    .line 1164
    :cond_e
    :try_start_e
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x100000

    .line 1165
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 1164
    invoke-virtual {p1, p2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 1166
    return v0

    .line 1167
    :catch_1e
    move-exception p1

    .line 1168
    const/4 p1, 0x0

    return p1
.end method

.method private cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 7

    .line 4055
    if-nez p1, :cond_a

    .line 4056
    const-string p1, "SyncManager"

    const-string p2, "Null sync operation detected."

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    return-void

    .line 4059
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_26

    .line 4060
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Removing periodic sync "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, " for "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4062
    :cond_26
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p2

    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 4063
    return-void
.end method

.method private cleanupJobs()V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method private clearAllBackoffs(Ljava/lang/String;)V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 399
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 11

    .line 1349
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    .line 1350
    if-eqz v0, :cond_23

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1351
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_23

    .line 1352
    return-void

    .line 1354
    :cond_23
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing backoffs for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_40
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1361
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 7

    .line 345
    nop

    .line 346
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    .line 347
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_19

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 348
    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 349
    nop

    .line 350
    const/4 v0, 0x1

    goto :goto_1c

    .line 346
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 353
    :cond_1c
    :goto_1c
    return v0
.end method

.method private static countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 2033
    nop

    .line 2034
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2035
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 2036
    :cond_18
    goto :goto_6

    .line 2037
    :cond_19
    return v0
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .registers 10

    .line 2384
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2385
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const-string v1, " avg="

    const-string v2, " for "

    if-lez v0, :cond_26

    .line 2386
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2387
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2389
    :cond_26
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2390
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_48

    .line 2391
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2392
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget p2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, p2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2394
    :cond_48
    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2395
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .registers 13

    .line 2640
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v0

    .line 2641
    if-eqz v0, :cond_9d

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_9d

    .line 2642
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2643
    const-string v2, "Sync Statistics"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    const-string v2, "  Today:  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2645
    aget-object v1, v0, v1

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 2650
    const/4 v2, 0x1

    :goto_24
    const/4 v3, 0x6

    if-gt v2, v3, :cond_49

    array-length v4, v0

    if-ge v2, v4, :cond_49

    .line 2651
    aget-object v4, v0, v2

    .line 2652
    if-nez v4, :cond_2f

    goto :goto_49

    .line 2653
    :cond_2f
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v5, v1, v5

    .line 2654
    if-le v5, v3, :cond_36

    goto :goto_49

    .line 2656
    :cond_36
    const-string v3, "  Day-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2657
    invoke-direct {p0, p1, v4}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2650
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2661
    :cond_49
    :goto_49
    move v4, v1

    .line 2662
    :goto_4a
    array-length v5, v0

    if-ge v2, v5, :cond_9d

    .line 2663
    const/4 v5, 0x0

    .line 2664
    add-int/lit8 v4, v4, -0x7

    .line 2665
    :goto_50
    array-length v6, v0

    if-ge v2, v6, :cond_86

    .line 2666
    aget-object v6, v0, v2

    .line 2667
    if-nez v6, :cond_59

    .line 2668
    array-length v2, v0

    .line 2669
    goto :goto_86

    .line 2671
    :cond_59
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v4, v7

    .line 2672
    if-le v7, v3, :cond_60

    goto :goto_86

    .line 2673
    :cond_60
    add-int/lit8 v2, v2, 0x1

    .line 2675
    if-nez v5, :cond_69

    .line 2676
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v5, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2678
    :cond_69
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2679
    iget-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2680
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2681
    iget-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2682
    goto :goto_50

    .line 2683
    :cond_86
    :goto_86
    if-eqz v5, :cond_9c

    .line 2684
    const-string v6, "  Week-"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x7

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2685
    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2687
    :cond_9c
    goto :goto_4a

    .line 2689
    :cond_9d
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .registers 39

    .line 2403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2404
    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v2

    .line 2405
    if-eqz v2, :cond_4de

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4de

    .line 2406
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 2407
    nop

    .line 2408
    nop

    .line 2409
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2411
    nop

    .line 2412
    nop

    .line 2413
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v8, " u"

    const-string v6, "/"

    const-string v7, "Unknown"

    move-object/from16 v19, v7

    if-eqz v15, :cond_d9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2414
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v21, v5

    iget v5, v15, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2415
    invoke-virtual {v7, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v5

    .line 2418
    if-eqz v5, :cond_7b

    .line 2419
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2420
    move-object/from16 v19, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    iget-object v2, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, v19

    goto :goto_80

    .line 2424
    :cond_7b
    move-object/from16 v22, v2

    .line 2425
    move-object/from16 v2, v19

    move-object v7, v2

    .line 2428
    :goto_80
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 2429
    if-le v5, v13, :cond_87

    .line 2430
    move v13, v5

    .line 2432
    :cond_87
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 2433
    if-le v5, v14, :cond_8e

    .line 2434
    move v14, v5

    .line 2437
    :cond_8e
    iget-wide v5, v15, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2438
    add-long/2addr v9, v5

    .line 2439
    const-wide/16 v23, 0x1

    add-long v11, v11, v23

    .line 2440
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2441
    if-nez v8, :cond_a6

    .line 2442
    new-instance v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    const/4 v15, 0x0

    invoke-direct {v8, v2, v15}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    .line 2443
    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    :cond_a6
    move-wide/from16 v23, v9

    iget-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    add-long/2addr v9, v5

    iput-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2446
    iget v2, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iput v2, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2447
    iget-object v2, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2448
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2449
    if-nez v8, :cond_c6

    .line 2450
    new-instance v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    .line 2451
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    :cond_c6
    iget-wide v9, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long/2addr v9, v5

    iput-wide v9, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2454
    iget v2, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2456
    move-object/from16 v5, v21

    move-object/from16 v2, v22

    move-wide/from16 v9, v23

    goto/16 :goto_28

    .line 2458
    :cond_d9
    move-object/from16 v22, v2

    const-wide/16 v17, 0x0

    cmp-long v2, v9, v17

    const-wide/16 v23, 0x3e8

    const/4 v7, 0x2

    if-lez v2, :cond_249

    .line 2459
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2460
    new-array v2, v7, [Ljava/lang/Object;

    .line 2462
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v2, v16

    div-long v25, v9, v23

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v20, 0x1

    aput-object v15, v2, v20

    .line 2460
    const-string v15, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    invoke-virtual {v1, v15, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2464
    new-instance v2, Ljava/util/ArrayList;

    .line 2465
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2466
    new-instance v3, Lcom/android/server/content/SyncManager$14;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2478
    add-int/lit8 v3, v14, 0x3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2479
    add-int/lit8 v15, v3, 0x4

    add-int/2addr v15, v7

    add-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0xb

    .line 2480
    new-array v15, v15, [C

    .line 2481
    const/16 v5, 0x2d

    invoke-static {v15, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2482
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v15}, Ljava/lang/String;-><init>([C)V

    .line 2484
    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/Object;

    add-int/lit8 v20, v3, 0x2

    .line 2485
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x0

    aput-object v20, v7, v16

    const-string v15, "  %%-%ds: %%-9s  %%-11s\n"

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2486
    move-object/from16 v26, v8

    const/4 v15, 0x1

    new-array v8, v15, [Ljava/lang/Object;

    .line 2487
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v16

    const-string v3, "    %%-%ds:   %%-9s  %%-11s\n"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2489
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2490
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_155
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_240

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2491
    iget-object v15, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 2497
    move/from16 v27, v13

    move/from16 v28, v14

    iget-wide v13, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2498
    move-object/from16 v29, v2

    iget v2, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2499
    move/from16 v31, v4

    move-object/from16 v30, v6

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    div-long v32, v13, v23

    .line 2500
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v4, v16

    const-wide/16 v32, 0x64

    mul-long v13, v13, v32

    div-long/2addr v13, v9

    .line 2501
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v13, 0x1

    aput-object v6, v4, v13

    .line 2499
    const-string v6, "%ds/%d%%"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2502
    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    .line 2503
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v14, v16

    mul-int/lit8 v2, v2, 0x64

    move-object v13, v3

    int-to-long v2, v2

    div-long/2addr v2, v11

    .line 2504
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v14, v3

    .line 2502
    const-string v2, "%d/%d%%"

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2505
    move-object/from16 v34, v5

    const/4 v14, 0x3

    new-array v5, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v5, v14

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v4, v5, v2

    invoke-virtual {v1, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2507
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2509
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2510
    new-instance v3, Lcom/android/server/content/SyncManager$15;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$15;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2521
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2522
    iget-wide v4, v3, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2523
    iget v8, v3, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2524
    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    div-long v35, v4, v23

    .line 2525
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v15, v16

    mul-long v4, v4, v32

    div-long/2addr v4, v9

    .line 2526
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v15, v5

    .line 2524
    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2527
    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/Object;

    .line 2528
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v15, 0x0

    aput-object v5, v14, v15

    mul-int/lit8 v8, v8, 0x64

    move-object v15, v6

    int-to-long v5, v8

    div-long/2addr v5, v11

    .line 2529
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v14, v6

    .line 2527
    const-string v5, "%d/%d%%"

    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2530
    const/4 v8, 0x3

    new-array v14, v8, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v14, v8

    aput-object v5, v14, v6

    const/4 v3, 0x2

    aput-object v4, v14, v3

    invoke-virtual {v1, v13, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2531
    move-object v6, v15

    goto :goto_1d4

    .line 2532
    :cond_22d
    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    move-object v5, v2

    move-object v3, v13

    move/from16 v13, v27

    move/from16 v14, v28

    move-object/from16 v2, v29

    move-object/from16 v6, v30

    move/from16 v4, v31

    goto/16 :goto_155

    .line 2490
    :cond_240
    move/from16 v31, v4

    move-object/from16 v30, v6

    move/from16 v27, v13

    move/from16 v28, v14

    goto :goto_253

    .line 2458
    :cond_249
    move/from16 v31, v4

    move-object/from16 v30, v6

    move-object/from16 v26, v8

    move/from16 v27, v13

    move/from16 v28, v14

    .line 2536
    :goto_253
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2537
    const-string v2, "Recent Sync History"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    const-string v2, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v28

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v27

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s %s\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2540
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 2541
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2542
    const/4 v6, 0x0

    :goto_28f
    move/from16 v7, v31

    if-ge v6, v7, :cond_418

    .line 2543
    move-object/from16 v8, v22

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2544
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v11, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2545
    invoke-virtual {v10, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 2548
    if-eqz v10, :cond_2d6

    .line 2549
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2550
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v26

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2dd

    .line 2554
    :cond_2d6
    move-object/from16 v14, v26

    move-object/from16 v13, v30

    .line 2555
    move-object/from16 v10, v19

    move-object v11, v10

    .line 2557
    :goto_2dd
    move-object/from16 v26, v14

    iget-wide v14, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2558
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 2559
    move/from16 v31, v7

    move-object/from16 v22, v8

    iget-wide v7, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2560
    invoke-virtual {v12, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 2562
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2563
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 2565
    if-nez v27, :cond_30e

    .line 2566
    const-string v27, ""

    move-object/from16 v34, v13

    goto :goto_374

    .line 2568
    :cond_30e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    sub-long v27, v27, v7

    div-long v27, v27, v23

    .line 2569
    const-wide/16 v29, 0x3c

    cmp-long v32, v27, v29

    if-gez v32, :cond_323

    .line 2570
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v34, v13

    goto :goto_374

    .line 2571
    :cond_323
    const-wide/16 v32, 0xe10

    cmp-long v34, v27, v32

    if-gez v34, :cond_349

    .line 2572
    move-object/from16 v34, v13

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/Object;

    div-long v32, v27, v29

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v0, v16

    rem-long v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v20, 0x1

    aput-object v13, v0, v20

    const-string v13, "%02d:%02d"

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_374

    .line 2574
    :cond_349
    move-object/from16 v34, v13

    rem-long v35, v27, v32

    .line 2575
    const/4 v0, 0x3

    new-array v13, v0, [Ljava/lang/Object;

    div-long v27, v27, v32

    .line 2576
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v13, v16

    div-long v27, v35, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v20, 0x1

    aput-object v0, v13, v20

    rem-long v35, v35, v29

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v25, 0x2

    aput-object v0, v13, v25

    .line 2575
    const-string v0, "%02d:%02d:%02d"

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 2579
    :goto_374
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2581
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    .line 2582
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v0, v13

    .line 2583
    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v8, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aput-object v7, v0, v8

    long-to-float v7, v14

    const/high16 v8, 0x447a0000  # 1000.0f

    div-float/2addr v7, v8

    .line 2585
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v0, v8

    const/4 v7, 0x4

    aput-object v27, v0, v7

    .line 2581
    const-string v7, "  #%-3d: %s %8s  %5.1fs  %8s"

    invoke-virtual {v1, v7, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2587
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v0, v7

    const/4 v7, 0x1

    aput-object v11, v0, v7

    iget v8, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 2588
    invoke-static {v5, v8}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v0, v10

    .line 2587
    invoke-virtual {v1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2590
    iget v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    if-ne v0, v7, :cond_3d1

    iget-wide v7, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    const-wide/16 v10, 0x0

    cmp-long v0, v7, v10

    if-nez v0, :cond_3d3

    iget-wide v7, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v0, v7, v10

    if-eqz v0, :cond_3f6

    goto :goto_3d3

    :cond_3d1
    const-wide/16 v10, 0x0

    .line 2593
    :cond_3d3
    :goto_3d3
    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    iget v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 2594
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v7, v8

    iget-wide v12, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2595
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v7, v8

    iget-wide v12, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 2596
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v8, 0x2

    aput-object v0, v7, v8

    .line 2593
    const-string v0, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    invoke-virtual {v1, v0, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2598
    :cond_3f6
    iget-object v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v0, :cond_412

    iget-object v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 2599
    const-string/jumbo v7, "success"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_412

    .line 2600
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v0, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const-string v0, "    mesg=%s\n"

    invoke-virtual {v1, v0, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2542
    :cond_412
    move-object/from16 v0, p0

    move-object/from16 v30, v34

    goto/16 :goto_28f

    .line 2603
    :cond_418
    move/from16 v31, v7

    move-object/from16 v34, v30

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2604
    const-string v0, "Recent Sync History Extras"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    const/4 v0, 0x0

    :goto_428
    move/from16 v2, v31

    if-ge v0, v2, :cond_4de

    .line 2607
    move-object/from16 v4, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2608
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 2609
    if-eqz v6, :cond_4c8

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v7

    if-nez v7, :cond_44a

    .line 2610
    move-object/from16 v7, p0

    move-object/from16 v12, v26

    move-object/from16 v11, v34

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto/16 :goto_4d2

    .line 2612
    :cond_44a
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v9, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2613
    invoke-virtual {v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 2616
    if-eqz v8, :cond_487

    .line 2617
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2618
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v34

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v26

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_48e

    .line 2622
    :cond_487
    move-object/from16 v12, v26

    move-object/from16 v11, v34

    .line 2623
    move-object/from16 v8, v19

    move-object v9, v8

    .line 2625
    :goto_48e
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2626
    iget-wide v13, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2627
    invoke-virtual {v10, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 2629
    const/4 v10, 0x3

    new-array v15, v10, [Ljava/lang/Object;

    add-int/lit8 v10, v0, 0x1

    .line 2630
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    .line 2631
    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v15, v13

    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v5, v10, v5

    const/4 v10, 0x2

    aput-object v5, v15, v10

    .line 2629
    const-string v5, "  #%-3d: %s %8s "

    invoke-virtual {v1, v5, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2634
    const/4 v5, 0x3

    new-array v14, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    aput-object v9, v14, v13

    aput-object v6, v14, v10

    invoke-virtual {v1, v3, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_4d2

    .line 2609
    :cond_4c8
    move-object/from16 v7, p0

    move-object/from16 v12, v26

    move-object/from16 v11, v34

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v15, 0x0

    .line 2606
    :goto_4d2
    add-int/lit8 v0, v0, 0x1

    move/from16 v31, v2

    move-object/from16 v22, v4

    move-object/from16 v34, v11

    move-object/from16 v26, v12

    goto/16 :goto_428

    .line 2637
    :cond_4de
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 2692
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2693
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 2694
    if-eqz v0, :cond_58

    .line 2695
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync adapters for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2699
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2700
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2701
    goto :goto_41

    .line 2702
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2703
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2704
    goto :goto_d

    .line 2706
    :cond_58
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .registers 6

    .line 2379
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long/2addr p2, v0

    const-wide/16 v0, 0xa

    rem-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 2380
    const/16 p2, 0x73

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 2381
    return-void
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .registers 13

    .line 2079
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 2080
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    .line 2081
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2082
    neg-long p1, p1

    .line 2084
    :cond_f
    const-wide/16 v2, 0x3c

    rem-long v4, p1, v2

    .line 2085
    div-long/2addr p1, v2

    .line 2087
    rem-long v6, p1, v2

    .line 2088
    div-long/2addr p1, v2

    .line 2090
    const-wide/16 v2, 0x18

    rem-long v8, p1, v2

    .line 2091
    div-long/2addr p1, v2

    .line 2093
    nop

    .line 2095
    const/4 v2, 0x0

    .line 2096
    cmp-long v0, p1, v0

    if-lez v0, :cond_2b

    .line 2097
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2098
    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2099
    const/4 v2, 0x1

    .line 2101
    :cond_2b
    const/16 p1, 0x68

    invoke-static {p0, v8, v9, p1, v2}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    .line 2102
    const/16 p2, 0x6d

    invoke-static {p0, v6, v7, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    .line 2103
    const/16 p2, 0x73

    invoke-static {p0, v4, v5, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    .line 2104
    if-nez p1, :cond_44

    .line 2105
    const-string p1, "0s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    :cond_44
    return-object p0
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4

    .line 1987
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 1988
    const-string p0, "N/A"

    return-object p0

    .line 1990
    :cond_9
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1991
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1992
    const-string p0, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, p0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .registers 11

    .line 1814
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1815
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1817
    const-string p1, "android.intent.extra.client_label"

    const v1, 0x10406e3

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1819
    new-instance v4, Landroid/content/Intent;

    const-string p1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1820
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 1819
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "android.intent.extra.client_intent"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1822
    return-object v0
.end method

.method private getAllPendingSyncs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 286
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 289
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_2f

    .line 291
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_2f
    goto :goto_16

    .line 294
    :cond_30
    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 462
    monitor-enter p0

    .line 463
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 464
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 467
    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 468
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 4047
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    .line 4048
    :catch_e
    move-exception p1

    .line 4050
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method private static getInstance()Lcom/android/server/content/SyncManager;
    .registers 3

    .line 2860
    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    .line 2861
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_f

    .line 2862
    const-string v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_f
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 2865
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 7

    .line 818
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 819
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 822
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4e

    .line 825
    :cond_19
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 827
    invoke-static {p3, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p3

    .line 826
    invoke-virtual {v1, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p3

    .line 828
    const/4 v1, 0x0

    if-nez p3, :cond_29

    return v1

    .line 830
    :cond_29
    nop

    .line 832
    :try_start_2a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object p3, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 833
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 832
    invoke-interface {v2, p3, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_38} :catch_4c

    .line 834
    if-nez p2, :cond_3b

    return v1

    .line 838
    :cond_3b
    nop

    .line 839
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p3, :cond_4b

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 840
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 841
    return v0

    .line 843
    :cond_4b
    return v1

    .line 835
    :catch_4c
    move-exception p1

    .line 837
    return v1

    .line 822
    :cond_4e
    :goto_4e
    return v0
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .registers 2

    .line 565
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 566
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method private getJobStats()Ljava/lang/String;
    .registers 4

    .line 408
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    if-nez v0, :cond_17

    const-string v0, "(JobSchedulerInternal==null)"

    goto :goto_1f

    .line 411
    :cond_17
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    return-object v0
.end method

.method private getTotalBytesTransferredByUid(I)J
    .registers 6

    .line 1305
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getUnusedJobIdH()I
    .registers 4

    .line 278
    :goto_0
    const v0, 0x186a0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 279
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 280
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-direct {p0, v1, v0}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 281
    return v1

    .line 279
    :cond_19
    goto :goto_0
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 17

    .line 1365
    move-object v0, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1367
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1368
    invoke-virtual {v3, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v3

    .line 1369
    nop

    .line 1370
    const/4 v4, 0x2

    const-wide/16 v5, 0x3e8

    const-string v8, "SyncManager"

    if-eqz v3, :cond_5d

    .line 1373
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-gez v9, :cond_4b

    .line 1374
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1376
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v1

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1375
    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_4a
    return-void

    .line 1381
    :cond_4b
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1382
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-float v3, v9

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v9}, Lcom/android/server/content/SyncManagerConstants;->getRetryTimeIncreaseFactor()F

    move-result v9

    mul-float/2addr v3, v9

    float-to-long v9, v3

    goto :goto_5f

    .line 1370
    :cond_5d
    const-wide/16 v9, -0x1

    .line 1384
    :goto_5f
    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-gtz v3, :cond_7a

    .line 1386
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v3}, Lcom/android/server/content/SyncManagerConstants;->getInitialSyncRetryTimeInSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v9, v3

    .line 1387
    long-to-double v11, v9

    const-wide v13, 0x3ff199999999999aL  # 1.1

    mul-double/2addr v11, v13

    double-to-long v11, v11

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v9

    .line 1391
    :cond_7a
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v3}, Lcom/android/server/content/SyncManagerConstants;->getMaxSyncRetryTimeInSeconds()I

    move-result v3

    int-to-long v11, v3

    .line 1393
    mul-long/2addr v11, v5

    cmp-long v3, v9, v11

    if-lez v3, :cond_88

    .line 1394
    move-wide v5, v11

    goto :goto_89

    .line 1393
    :cond_88
    move-wide v5, v9

    .line 1397
    :goto_89
    add-long v9, v1, v5

    .line 1398
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff until: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", delayTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_ad
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v2, p1

    move-wide v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1402
    const-string v1, "increaseBackoffSetting"

    invoke-direct {p0, v7, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1403
    return-void
.end method

.method private isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 10

    .line 1443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1444
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 1445
    const/4 v3, 0x1

    if-eqz v2, :cond_28

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_28

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1446
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-lez v2, :cond_28

    .line 1447
    return v3

    .line 1449
    :cond_28
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    cmp-long p1, v4, v0

    if-lez p1, :cond_33

    .line 1450
    return v3

    .line 1452
    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .line 796
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 797
    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private isJobIdInUseLockedH(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    .line 262
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 263
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p1, :cond_18

    .line 264
    return v1

    .line 266
    :cond_18
    goto :goto_4

    .line 267
    :cond_19
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 268
    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v0, p1, :cond_32

    .line 269
    return v1

    .line 271
    :cond_32
    goto :goto_1f

    .line 272
    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .registers 3

    .line 3932
    const-string v0, "expedited"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 3933
    return v1

    .line 3935
    :cond_a
    const-string v0, "ignore_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3936
    return v1

    .line 3938
    :cond_13
    const-string v0, "ignore_backoff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3939
    return v1

    .line 3941
    :cond_1c
    const-string v0, "do_not_retry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3942
    return v1

    .line 3944
    :cond_25
    const-string v0, "force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3945
    return v1

    .line 3947
    :cond_2e
    const-string/jumbo v0, "upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3948
    return v1

    .line 3950
    :cond_38
    const-string v0, "deletions_override"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 3951
    return v1

    .line 3953
    :cond_41
    const-string v0, "discard_deletions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3954
    return v1

    .line 3956
    :cond_4a
    const-string v0, "expected_upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3957
    return v1

    .line 3959
    :cond_53
    const-string v0, "expected_download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 3960
    return v1

    .line 3962
    :cond_5c
    const-string/jumbo v0, "sync_priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3963
    return v1

    .line 3965
    :cond_66
    const-string v0, "allow_metered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3966
    return v1

    .line 3968
    :cond_6f
    const-string v0, "initialize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_78

    .line 3969
    return v1

    .line 3975
    :cond_78
    const/4 p0, 0x0

    return p0
.end method

.method private isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 4

    .line 3890
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3891
    if-ne v1, p1, :cond_16

    .line 3892
    const/4 p1, 0x1

    return p1

    .line 3894
    :cond_16
    goto :goto_6

    .line 3895
    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private isUserUnlocked(I)Z
    .registers 4

    .line 758
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 760
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private jitterize(JJ)J
    .registers 8

    .line 804
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 805
    sub-long/2addr p3, p1

    .line 806
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p3, v1

    if-gtz v1, :cond_19

    .line 810
    long-to-int p3, p3

    invoke-virtual {v0, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    return-wide p1

    .line 807
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$EMXCZP9LDjgUTYbLsEoVu9Ccntw(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->zeroToEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z
    .registers 1

    .line 2044
    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z
    .registers 1

    .line 2061
    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    return p0
.end method

.method static synthetic lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .registers 9

    .line 2282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2283
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2285
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2286
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2287
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, v1, v0

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2288
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2289
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2290
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x6

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x7

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2292
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/16 v2, 0x8

    aput-object p2, v1, v2

    iget p2, p3, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2293
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/16 p4, 0x9

    aput-object p2, v1, p4

    iget-wide p2, p3, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2294
    invoke-static {p0, p2, p3}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p2, 0xa

    aput-object p0, v1, p2

    .line 2283
    invoke-virtual {p1, p5, v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2295
    return-void
.end method

.method static synthetic lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 1

    .line 2296
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 2

    .line 2746
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 6

    .line 1996
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1997
    if-eqz v0, :cond_f

    return v0

    .line 1999
    :cond_f
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 2001
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 2002
    if-eqz v1, :cond_24

    return v1

    .line 2004
    :cond_24
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 2005
    if-eqz v1, :cond_37

    return v1

    .line 2007
    :cond_37
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2008
    if-eqz v0, :cond_46

    return v0

    .line 2010
    :cond_46
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v1, p1, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2011
    if-eqz v0, :cond_51

    return v0

    .line 2013
    :cond_51
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2014
    if-eqz v0, :cond_5c

    return v0

    .line 2016
    :cond_5c
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2017
    if-eqz v0, :cond_67

    return v0

    .line 2019
    :cond_67
    iget p0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v0, p0

    iget p0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    .line 2020
    if-eqz p0, :cond_74

    return p0

    .line 2022
    :cond_74
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 6

    .line 2026
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2027
    if-eqz v0, :cond_b

    return v0

    .line 2029
    :cond_b
    sget-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private likelyHasPeriodicSyncs()Z
    .registers 4

    .line 557
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityCount()I

    move-result v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    const/4 v2, 0x6

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 558
    :catchall_c
    move-exception v1

    .line 561
    return v0
.end method

.method private maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 8

    .line 1693
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 1694
    if-eqz v1, :cond_25

    .line 1695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_25
    iget-object v2, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "ignore_backoff"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1702
    iget-object v2, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1705
    :cond_35
    iget-object v2, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "do_not_retry"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_5c

    .line 1710
    if-eqz v1, :cond_115

    .line 1711
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_115

    .line 1714
    :cond_5c
    iget-object v2, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "upload"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_8c

    .line 1717
    iget-object p1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1718
    if-eqz v1, :cond_87

    .line 1719
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_87
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_115

    .line 1723
    :cond_8c
    iget-boolean v2, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v2, :cond_a8

    .line 1726
    if-eqz v1, :cond_115

    .line 1727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not retrying sync operation because it retried too many times: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 1730
    :cond_a8
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 1732
    if-eqz v1, :cond_b6

    .line 1733
    const-string/jumbo p1, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_b6
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_115

    .line 1737
    :cond_ba
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v2, :cond_db

    .line 1738
    if-eqz v1, :cond_d5

    .line 1739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_d5
    const-wide/16 v0, 0x2710

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_115

    .line 1743
    :cond_db
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 1745
    if-eqz v1, :cond_f8

    .line 1746
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_f8
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_115

    .line 1752
    :cond_fc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-static {p2}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1752
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_115
    :goto_115
    return-void
.end method

.method private onUserRemoved(I)V
    .registers 6

    .line 1790
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUserRemoved: u"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1791
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1794
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 1795
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1796
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1797
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v2, p1, :cond_4d

    .line 1798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user removed u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1800
    :cond_4d
    goto :goto_26

    .line 1801
    :cond_4e
    return-void
.end method

.method private onUserStopped(I)V
    .registers 4

    .line 1777
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1779
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo p1, "onUserStopped"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1787
    return-void
.end method

.method private onUserUnlocked(I)V
    .registers 16

    .line 1759
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1761
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1763
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1764
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1767
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1768
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1767
    invoke-virtual {v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1769
    array-length v1, v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_3c

    aget-object v4, v0, v2

    .line 1770
    const/4 v6, -0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1772
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    const/4 v12, -0x3

    const/4 v13, 0x0

    .line 1770
    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 1769
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1774
    :cond_3c
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 5

    .line 1280
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1281
    const-string/jumbo v1, "posting MESSAGE_SYNC_MONITOR in 60s"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_f
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1286
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1288
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x8

    .line 1289
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1292
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1293
    return-void
.end method

.method private postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .registers 5

    .line 1296
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1298
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1299
    return-void
.end method

.method private static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .registers 7

    .line 2113
    if-nez p4, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 2114
    const/4 p0, 0x0

    return p0

    .line 2116
    :cond_a
    if-eqz p4, :cond_17

    const-wide/16 v0, 0xa

    cmp-long p4, p1, v0

    if-gez p4, :cond_17

    .line 2117
    const/16 p4, 0x30

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2119
    :cond_17
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2120
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2121
    const/4 p0, 0x1

    return p0
.end method

.method private readDataConnectionState()Z
    .registers 2

    .line 403
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static readyToSync(I)Z
    .registers 3

    .line 2872
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 2873
    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/server/content/SyncJobService;->isReady()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v1, :cond_18

    .line 2874
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager;->isUserUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 2873
    :goto_19
    return p0
.end method

.method private removeStaleAccounts()V
    .registers 6

    .line 366
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 368
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1c

    goto :goto_b

    .line 369
    :cond_1c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 372
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 373
    goto :goto_b

    .line 374
    :cond_34
    return-void
.end method

.method private removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 11

    .line 1173
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "removeSyncsForAuthority: "

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v4, 0x2

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1174
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1175
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1177
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1178
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "canceling: "

    aput-object v7, v6, v2

    aput-object v1, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1179
    invoke-direct {p0, v1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1181
    :cond_43
    goto :goto_1f

    .line 1182
    :cond_44
    return-void
.end method

.method private rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 9

    .line 1410
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "rescheduleSyncs() ep="

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v3, 0x2

    const-string v4, " why="

    aput-object v4, v1, v3

    const/4 v4, 0x3

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1412
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1413
    nop

    .line 1414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1415
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_44

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1416
    add-int/lit8 v2, v2, 0x1

    .line 1417
    invoke-direct {p0, v1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1418
    const-wide/16 v4, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1420
    :cond_44
    goto :goto_22

    .line 1421
    :cond_45
    const-string p2, "SyncManager"

    invoke-static {p2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rescheduled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " syncs for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_69
    return-void
.end method

.method private scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V
    .registers 57

    .line 915
    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move/from16 v15, p2

    move-object/from16 v13, p4

    move/from16 v12, p6

    move-wide/from16 v10, p7

    if-nez p5, :cond_15

    .line 916
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v8, v1

    goto :goto_17

    .line 915
    :cond_15
    move-object/from16 v8, p5

    .line 918
    :goto_17
    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    .line 919
    const/4 v9, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b0

    .line 920
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v16, "scheduleSync: account="

    aput-object v16, v2, v4

    aput-object v0, v2, v3

    const-string v16, " u"

    aput-object v16, v2, v9

    .line 921
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v5

    const-string v16, " authority="

    aput-object v16, v2, v6

    aput-object v13, v2, v7

    const/16 v16, 0x6

    const-string v17, " reason="

    aput-object v17, v2, v16

    const/16 v16, 0x7

    .line 923
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v2, v16

    const/16 v16, 0x8

    const-string v17, " extras="

    aput-object v17, v2, v16

    const/16 v16, 0x9

    aput-object v8, v2, v16

    const/16 v16, 0xa

    const-string v17, " cuid="

    aput-object v17, v2, v16

    const/16 v16, 0xb

    .line 925
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v2, v16

    const/16 v16, 0xc

    const-string v17, " cpid="

    aput-object v17, v2, v16

    const/16 v16, 0xd

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v2, v16

    const/16 v16, 0xe

    const-string v17, " cpkg="

    aput-object v17, v2, v16

    const/16 v16, 0xf

    aput-object p13, v2, v16

    const/16 v16, 0x10

    const-string v17, " mdm="

    aput-object v17, v2, v16

    const/16 v16, 0x11

    .line 926
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v2, v16

    const/16 v16, 0x12

    const-string v17, " ciar="

    aput-object v17, v2, v16

    const/16 v16, 0x13

    .line 927
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v2, v16

    const/16 v16, 0x14

    const-string v17, " sef="

    aput-object v17, v2, v16

    const/16 v16, 0x15

    .line 928
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v2, v16

    .line 920
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 931
    :cond_b0
    nop

    .line 932
    const/4 v2, -0x1

    if-eqz v0, :cond_e2

    .line 933
    if-eq v15, v2, :cond_c1

    .line 934
    new-array v1, v3, [Landroid/accounts/AccountAndUser;

    new-instance v2, Landroid/accounts/AccountAndUser;

    invoke-direct {v2, v0, v15}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v2, v1, v4

    move-object v9, v1

    goto :goto_e5

    .line 936
    :cond_c1
    iget-object v2, v14, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v1, v2

    move v6, v4

    const/4 v7, 0x0

    :goto_c6
    if-ge v6, v1, :cond_e0

    aget-object v9, v2, v6

    .line 937
    iget-object v5, v9, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 938
    const-class v5, Landroid/accounts/AccountAndUser;

    invoke-static {v5, v7, v9}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/AccountAndUser;

    move-object v7, v5

    .line 936
    :cond_db
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x3

    const/4 v9, 0x2

    goto :goto_c6

    :cond_e0
    move-object v9, v7

    goto :goto_e5

    .line 944
    :cond_e2
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    move-object v9, v1

    .line 947
    :goto_e5
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 948
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "scheduleSync: no accounts configured, dropping"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 949
    return-void

    .line 952
    :cond_f8
    const-string/jumbo v0, "upload"

    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 953
    const-string v0, "force"

    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 954
    const-string v1, "ignore_settings"

    if-eqz v0, :cond_111

    .line 955
    const-string v2, "ignore_backoff"

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    invoke-virtual {v8, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 958
    :cond_111
    nop

    .line 959
    invoke-virtual {v8, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 962
    if-eqz v20, :cond_11b

    .line 963
    move/from16 v33, v3

    goto :goto_132

    .line 964
    :cond_11b
    if-eqz v0, :cond_120

    .line 965
    const/16 v33, 0x3

    goto :goto_132

    .line 966
    :cond_120
    if-nez v13, :cond_125

    .line 967
    const/16 v33, 0x2

    goto :goto_132

    .line 969
    :cond_125
    const-string v0, "feed"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 970
    const/16 v33, 0x5

    goto :goto_132

    .line 974
    :cond_130
    move/from16 v33, v4

    .line 978
    :goto_132
    array-length v7, v9

    move v6, v4

    :goto_134
    if-ge v6, v7, :cond_46e

    aget-object v5, v9, v6

    .line 980
    if-ltz v15, :cond_159

    iget v0, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v0, :cond_159

    iget v0, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v15, v0, :cond_159

    .line 982
    move/from16 v39, v4

    move/from16 v17, v6

    move/from16 v16, v7

    move-object/from16 v35, v8

    move-object/from16 v18, v9

    move-wide v3, v10

    move-object v2, v14

    const/4 v15, 0x4

    const/16 v19, 0x2

    const/16 v36, -0x1

    const/16 v37, 0x5

    const/16 v41, 0x3

    goto/16 :goto_459

    .line 986
    :cond_159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 988
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v2, v5, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v1, v2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_180

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 989
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 990
    goto :goto_16a

    .line 995
    :cond_180
    if-eqz v13, :cond_18e

    .line 996
    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 997
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 998
    if-eqz v1, :cond_18e

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_18e
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_192
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_444

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1002
    iget-object v0, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v1, v5, Landroid/accounts/AccountAndUser;->userId:I

    xor-int/lit8 v4, p9, 0x1

    invoke-virtual {v14, v0, v1, v2, v4}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v0

    .line 1005
    if-nez v0, :cond_1ad

    .line 1006
    const/4 v4, 0x0

    goto :goto_192

    .line 1009
    :cond_1ad
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v4, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1010
    invoke-static {v2, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    iget v3, v5, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v1, v4, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    .line 1012
    if-nez v4, :cond_1c2

    .line 1013
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_192

    .line 1016
    :cond_1c2
    iget v1, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1018
    const/4 v3, 0x3

    if-ne v0, v3, :cond_252

    .line 1019
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v23, "scheduleSync: Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    const/16 v22, 0x0

    aput-object v23, v3, v22

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1021
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1022
    iget-object v0, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1024
    invoke-direct {v14, v4, v15}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1eb

    .line 1025
    move v3, v1

    move/from16 v4, v22

    goto :goto_192

    .line 1027
    :cond_1eb
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    iget-object v14, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v23, v14

    new-instance v14, Landroid/os/RemoteCallback;

    new-instance v15, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;

    move-object/from16 v35, v0

    move-object v0, v15

    move/from16 v24, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v5

    move-object/from16 v19, v3

    const/16 v24, 0x3

    move/from16 v3, p2

    move-object/from16 v38, v4

    move/from16 v39, v22

    move/from16 v4, p3

    move-object/from16 v40, v5

    move/from16 v41, v24

    move-object/from16 v5, p1

    move/from16 v17, v6

    move-object/from16 v6, v19

    move/from16 v16, v7

    move/from16 v7, p6

    move-object/from16 v42, v8

    move-object/from16 v18, v9

    const/16 v19, 0x2

    move-wide/from16 v8, p7

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    invoke-direct {v14, v15}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move/from16 v13, p2

    move-object/from16 v2, v23

    move-object/from16 v1, v35

    move-object/from16 v0, v38

    invoke-virtual {v1, v2, v0, v13, v14}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 1040
    move-object/from16 v14, p0

    move/from16 v12, p6

    move-wide/from16 v10, p7

    move v15, v13

    move/from16 v7, v16

    move/from16 v6, v17

    move-object/from16 v9, v18

    move/from16 v4, v39

    move-object/from16 v5, v40

    move-object/from16 v8, v42

    const/4 v3, 0x1

    move-object/from16 v13, p4

    goto/16 :goto_192

    .line 1043
    :cond_252
    move-object/from16 p1, v2

    move/from16 v41, v3

    move-object/from16 v40, v5

    move/from16 v17, v6

    move/from16 v16, v7

    move-object/from16 v42, v8

    move-object/from16 v18, v9

    move v13, v15

    const/16 v19, 0x2

    const/16 v39, 0x0

    iget-object v2, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v31

    .line 1044
    iget-object v2, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v2

    .line 1045
    if-nez p9, :cond_298

    if-gez v0, :cond_298

    if-eqz v2, :cond_298

    .line 1046
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v15, v40

    iget-object v2, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v15, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v26, 0x1

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v25, p1

    move/from16 v27, p11

    move/from16 v28, p12

    invoke-virtual/range {v22 .. v28}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V

    .line 1049
    const/4 v0, 0x1

    goto :goto_29c

    .line 1045
    :cond_298
    move-object/from16 v14, p0

    move-object/from16 v15, v40

    .line 1052
    :goto_29c
    const/4 v2, -0x2

    move/from16 v12, p6

    if-eq v12, v2, :cond_2b6

    if-eq v12, v0, :cond_2b6

    .line 1053
    move-wide/from16 v10, p7

    move-object v5, v15

    move/from16 v7, v16

    move/from16 v6, v17

    move-object/from16 v9, v18

    move/from16 v4, v39

    move-object/from16 v8, v42

    const/4 v3, 0x1

    move v15, v13

    move-object/from16 v13, p4

    goto/16 :goto_192

    .line 1056
    :cond_2b6
    iget-object v3, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v3

    if-nez v3, :cond_2d5

    if-eqz v20, :cond_2d5

    .line 1057
    move-wide/from16 v10, p7

    move-object v5, v15

    move/from16 v7, v16

    move/from16 v6, v17

    move-object/from16 v9, v18

    move/from16 v4, v39

    move-object/from16 v8, v42

    const/4 v3, 0x1

    move v15, v13

    move-object/from16 v13, p4

    goto/16 :goto_192

    .line 1060
    :cond_2d5
    if-ltz v0, :cond_2f7

    if-nez v21, :cond_2f7

    iget-object v3, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v5, v15, Landroid/accounts/AccountAndUser;->userId:I

    .line 1063
    invoke-virtual {v3, v5}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3

    if-eqz v3, :cond_2f2

    iget-object v3, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v6, v15, Landroid/accounts/AccountAndUser;->userId:I

    .line 1064
    move-object/from16 v9, p1

    invoke-virtual {v3, v5, v6, v9}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f4

    goto :goto_2f9

    .line 1063
    :cond_2f2
    move-object/from16 v9, p1

    .line 1064
    :cond_2f4
    move/from16 v3, v39

    goto :goto_2fa

    .line 1060
    :cond_2f7
    move-object/from16 v9, p1

    .line 1064
    :goto_2f9
    const/4 v3, 0x1

    .line 1066
    :goto_2fa
    const-string v5, " "

    if-nez v3, :cond_32a

    .line 1067
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v11, 0x5

    new-array v1, v11, [Ljava/lang/Object;

    const-string/jumbo v2, "scheduleSync: sync of "

    aput-object v2, v1, v39

    const/4 v10, 0x1

    aput-object v15, v1, v10

    aput-object v5, v1, v19

    aput-object v9, v1, v41

    const-string v2, " is not allowed, dropping request"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1069
    move v3, v10

    move-object v5, v15

    move/from16 v7, v16

    move/from16 v6, v17

    move-object/from16 v9, v18

    move/from16 v4, v39

    move-object/from16 v8, v42

    move-wide/from16 v10, p7

    move v15, v13

    move-object/from16 v13, p4

    goto/16 :goto_192

    .line 1071
    :cond_32a
    const/4 v7, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x5

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v8, v15, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v3, v6, v9, v8}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1074
    iget-object v6, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1075
    invoke-virtual {v6, v3}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    .line 1077
    iget-object v3, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .line 1079
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3d5

    .line 1080
    if-eqz p9, :cond_386

    .line 1081
    new-instance v5, Landroid/os/Bundle;

    move-object/from16 v6, v42

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1083
    iget-object v3, v14, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v2, v15, Landroid/accounts/AccountAndUser;->userId:I

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    move v14, v2

    move-object v2, v15

    move-object/from16 v40, v15

    move-object v15, v3

    move/from16 v3, p3

    move-object/from16 v22, v13

    move-object v13, v4

    move-object v4, v9

    move-object/from16 v35, v6

    move/from16 v6, p6

    move v9, v7

    move/from16 v36, v8

    move-wide/from16 v7, p7

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v37, v11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v15, v13, v14, v0}, Lcom/android/server/content/SyncManager;->sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 1088
    const/4 v15, 0x4

    move-object/from16 v2, p0

    move-wide/from16 v3, p7

    move-object/from16 v1, v40

    goto/16 :goto_42e

    .line 1090
    :cond_386
    move/from16 v36, v8

    move/from16 v37, v11

    move-object/from16 v40, v15

    move-object/from16 v35, v42

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1091
    const-string v2, "initialize"

    const/4 v13, 0x1

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1093
    move-object/from16 v14, p0

    iget-object v2, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v15, 0x4

    new-array v3, v15, [Ljava/lang/Object;

    const-string/jumbo v4, "scheduleSync: schedule initialisation sync "

    aput-object v4, v3, v39

    aput-object v40, v3, v13

    aput-object v5, v3, v19

    aput-object v9, v3, v41

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1096
    new-instance v2, Lcom/android/server/content/SyncOperation;

    move-object/from16 v12, v40

    iget-object v3, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v12, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v1

    move/from16 v27, p3

    move/from16 v28, v33

    move-object/from16 v29, v9

    move-object/from16 v30, v0

    move/from16 v32, p10

    invoke-direct/range {v22 .. v32}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v10, p7

    invoke-direct {v14, v2, v10, v11}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1103
    move-wide v3, v10

    move-object v1, v12

    move-object v2, v14

    goto/16 :goto_42e

    .line 1104
    :cond_3d5
    move/from16 v36, v8

    move v13, v10

    move/from16 v37, v11

    move-object v12, v15

    move-object/from16 v35, v42

    move-wide/from16 v10, p7

    move v15, v7

    move/from16 v8, p6

    if-eq v8, v2, :cond_3fd

    if-ne v8, v0, :cond_3e7

    goto :goto_3fd

    .line 1115
    :cond_3e7
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v1, v15, [Ljava/lang/Object;

    const-string/jumbo v2, "scheduleSync: not handling "

    aput-object v2, v1, v39

    aput-object v12, v1, v13

    aput-object v5, v1, v19

    aput-object v9, v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    move-wide v3, v10

    move-object v1, v12

    move-object v2, v14

    goto :goto_42e

    .line 1106
    :cond_3fd
    :goto_3fd
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v2, v15, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: scheduling sync "

    aput-object v3, v2, v39

    aput-object v12, v2, v13

    aput-object v5, v2, v19

    aput-object v9, v2, v41

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1108
    new-instance v0, Lcom/android/server/content/SyncOperation;

    iget-object v3, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v12, Landroid/accounts/AccountAndUser;->userId:I

    move-object v2, v0

    move v5, v1

    move-object/from16 v6, v26

    move/from16 v7, p3

    move/from16 v8, v33

    move-wide v13, v10

    move-object/from16 v10, v35

    move/from16 v11, v31

    move-object v1, v12

    move/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-object/from16 v2, p0

    move-wide v3, v13

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1118
    :goto_42e
    move/from16 v15, p2

    move-object/from16 v13, p4

    move/from16 v12, p6

    move-object v5, v1

    move-object v14, v2

    move-wide v10, v3

    move/from16 v7, v16

    move/from16 v6, v17

    move-object/from16 v9, v18

    move-object/from16 v8, v35

    move/from16 v4, v39

    const/4 v3, 0x1

    goto/16 :goto_192

    .line 1001
    :cond_444
    move/from16 v39, v4

    move/from16 v17, v6

    move/from16 v16, v7

    move-object/from16 v35, v8

    move-object/from16 v18, v9

    move-wide v3, v10

    move-object v2, v14

    const/4 v15, 0x4

    const/16 v19, 0x2

    const/16 v36, -0x1

    const/16 v37, 0x5

    const/16 v41, 0x3

    .line 978
    :goto_459
    add-int/lit8 v6, v17, 0x1

    move/from16 v15, p2

    move-object/from16 v13, p4

    move/from16 v12, p6

    move-object v14, v2

    move-wide v10, v3

    move/from16 v7, v16

    move-object/from16 v9, v18

    move-object/from16 v8, v35

    move/from16 v4, v39

    const/4 v3, 0x1

    goto/16 :goto_134

    .line 1120
    :cond_46e
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .registers 4

    .line 1469
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 1470
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .registers 20

    .line 1473
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const-string v3, "SyncManager"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 1474
    if-nez v1, :cond_13

    .line 1475
    const-string v0, "Can\'t schedule null sync operation."

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void

    .line 1478
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_a2

    .line 1479
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v8}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    .line 1480
    const-wide/16 v8, -0x1

    if-nez v5, :cond_4e

    .line 1481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find backoff values for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1482
    invoke-static {v10}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1481
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    new-instance v5, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1484
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1486
    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1487
    iget-object v12, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v12, v8

    if-nez v8, :cond_60

    move-wide v8, v6

    goto :goto_69

    .line 1488
    :cond_60
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 1489
    :goto_69
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v12}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v12

    .line 1490
    cmp-long v5, v12, v10

    if-lez v5, :cond_78

    sub-long v10, v12, v10

    goto :goto_79

    :cond_78
    move-wide v10, v6

    .line 1491
    :goto_79
    if-eqz v4, :cond_97

    .line 1492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "backoff delay:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " delayUntil delay:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_97
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide/from16 v10, p2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_a5

    .line 1478
    :cond_a2
    move-wide/from16 v10, p2

    move-wide v8, v10

    .line 1498
    :goto_a5
    cmp-long v5, v8, v6

    if-gez v5, :cond_aa

    .line 1499
    move-wide v8, v6

    .line 1505
    :cond_aa
    iget-boolean v5, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_19f

    .line 1506
    nop

    .line 1509
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1510
    iget-object v12, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v12, v12, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e4

    .line 1511
    if-eqz v4, :cond_e3

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate sync is already running. Not scheduling "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_e3
    return-void

    .line 1517
    :cond_e4
    goto :goto_b5

    .line 1519
    :cond_e5
    nop

    .line 1520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1521
    add-long/2addr v12, v8

    iput-wide v12, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1522
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v5

    .line 1523
    nop

    .line 1524
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v14, v1

    const/4 v13, 0x0

    :goto_f8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_127

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncOperation;

    .line 1525
    iget-boolean v2, v15, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_10a

    .line 1526
    const/4 v2, 0x2

    goto :goto_f8

    .line 1528
    :cond_10a
    iget-object v2, v15, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 1529
    iget-wide v6, v14, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move-object v2, v12

    iget-wide v11, v15, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_11e

    .line 1530
    move-object v14, v15

    .line 1532
    :cond_11e
    add-int/lit8 v13, v13, 0x1

    goto :goto_122

    .line 1528
    :cond_121
    move-object v2, v12

    .line 1534
    :goto_122
    move-object v12, v2

    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    goto :goto_f8

    .line 1535
    :cond_127
    const/4 v2, 0x1

    if-le v13, v2, :cond_12f

    .line 1536
    const-string v2, "FATAL ERROR! File a bug if you see this."

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_12f
    if-eq v1, v14, :cond_149

    .line 1547
    const-wide/16 v6, 0x0

    cmp-long v2, v8, v6

    if-nez v2, :cond_147

    iget v2, v14, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v6, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v2, v6, :cond_147

    .line 1549
    nop

    .line 1550
    iget v2, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1551
    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object v14, v1

    goto :goto_14b

    .line 1547
    :cond_147
    const/4 v6, 0x0

    goto :goto_14a

    .line 1539
    :cond_149
    const/4 v6, 0x0

    .line 1556
    :goto_14a
    move v10, v6

    :goto_14b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_190

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 1557
    iget-boolean v7, v5, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v7, :cond_160

    .line 1558
    goto :goto_14f

    .line 1560
    :cond_160
    iget-object v7, v5, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 1561
    if-eq v5, v14, :cond_18f

    .line 1562
    if-eqz v4, :cond_182

    .line 1563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cancelling duplicate sync "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_182
    iget v7, v5, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1566
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1567
    const-string/jumbo v10, "scheduleSyncOperationH-duplicate"

    invoke-direct {v0, v5, v10}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    move v10, v7

    .line 1570
    :cond_18f
    goto :goto_14f

    .line 1571
    :cond_190
    if-eq v14, v1, :cond_19a

    .line 1573
    if-eqz v4, :cond_199

    .line 1574
    const-string v0, "Not scheduling because a duplicate exists."

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_199
    return-void

    .line 1584
    :cond_19a
    if-lez v10, :cond_1a0

    .line 1585
    iput v10, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    goto :goto_1a0

    .line 1505
    :cond_19f
    const/4 v6, 0x0

    .line 1590
    :cond_1a0
    :goto_1a0
    iget v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1ab

    .line 1591
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v2

    iput v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1594
    :cond_1ab
    if-eqz v4, :cond_1c6

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduling sync operation "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_1c6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v2

    .line 1600
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 1601
    const/4 v3, 0x2

    goto :goto_1d3

    :cond_1d2
    const/4 v3, 0x1

    .line 1605
    :goto_1d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 1606
    const/16 v10, 0x8

    move v6, v10

    goto :goto_1de

    :cond_1dd
    nop

    .line 1608
    :goto_1de
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    iget v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v7, Landroid/content/ComponentName;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/server/content/SyncJobService;

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v5, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1610
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 1611
    invoke-virtual {v4, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 1612
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 1613
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 1614
    invoke-virtual {v2, v6}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 1616
    iget-boolean v3, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_214

    .line 1617
    iget-wide v3, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v5, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    const/4 v5, 0x1

    goto :goto_227

    .line 1619
    :cond_214
    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-lez v3, :cond_21d

    .line 1620
    invoke-virtual {v2, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1622
    :cond_21d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1625
    :goto_227
    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "require_charging"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_235

    .line 1626
    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1629
    :cond_235
    iget v3, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25f

    .line 1631
    const-class v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1632
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1633
    if-eqz v4, :cond_25f

    .line 1634
    const/16 v5, 0x3e8

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1636
    invoke-virtual {v3}, Lcom/android/server/content/SyncManagerConstants;->getKeyExemptionTempWhitelistDurationInSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v7, v3

    iget v3, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1637
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v10, 0x0

    .line 1634
    const-string/jumbo v11, "sync by top app"

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1642
    :cond_25f
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1643
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1644
    if-eqz v3, :cond_278

    .line 1645
    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1646
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1647
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v6

    .line 1645
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->reportSyncScheduled(Ljava/lang/String;IZ)V

    .line 1650
    :cond_278
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1651
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v1

    .line 1650
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 1652
    return-void
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9

    .line 1264
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_f
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendCancelSyncsMessage() ep="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " why="

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1268
    iget-object p3, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p3}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    .line 1269
    const/4 v0, 0x6

    iput v0, p3, Landroid/os/Message;->what:I

    .line 1270
    invoke-virtual {p3, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1271
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1272
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p1, p3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1273
    return-void
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 2878
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 2879
    if-eqz v0, :cond_b

    .line 2880
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2882
    :cond_b
    return-void
.end method

.method static sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;I",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2736
    new-instance v0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v0, p1, p3}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 2739
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2740
    invoke-static {p0, p1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    .line 2741
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2739
    const/16 p3, 0x15

    invoke-virtual {p0, p1, v0, p3, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    .line 2743
    if-eqz p1, :cond_2b

    .line 2745
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;

    invoke-direct {p2, p0, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    .line 2753
    :cond_2b
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->access$2400(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    .line 2755
    :goto_2e
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 5

    .line 1255
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1257
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1258
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1259
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1260
    return-void
.end method

.method private setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 5

    .line 848
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 849
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 850
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_29

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 851
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 852
    return-void

    .line 854
    :cond_29
    goto :goto_8

    .line 855
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 856
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 8

    .line 1427
    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1430
    cmp-long v2, p2, v0

    if-lez v2, :cond_12

    .line 1431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr p2, v0

    add-long/2addr v2, p2

    goto :goto_14

    .line 1433
    :cond_12
    const-wide/16 v2, 0x0

    .line 1435
    :goto_14
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 1436
    const/4 p2, 0x2

    const-string p3, "SyncManager"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 1437
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delay Until time set to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_3e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delayUntil newDelayUntilTime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .registers 8

    .line 3905
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3906
    return v0

    .line 3909
    :cond_4
    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 3910
    return v1

    .line 3912
    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-le v2, v3, :cond_1e

    move-object v2, p0

    goto :goto_1f

    :cond_1e
    move-object v2, p1

    .line 3913
    :goto_1f
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-le v3, v4, :cond_2a

    move-object p0, p1

    .line 3914
    :cond_2a
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3915
    if-nez p2, :cond_47

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3916
    goto :goto_32

    .line 3918
    :cond_47
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 3919
    return v1

    .line 3921
    :cond_4e
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 3922
    return v1

    .line 3924
    :cond_5d
    goto :goto_32

    .line 3925
    :cond_5e
    return v0
.end method

.method private updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 4

    .line 358
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 361
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 363
    return-void
.end method

.method private declared-synchronized verifyJobScheduler()V
    .registers 11

    monitor-enter p0

    .line 501
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d7

    if-eqz v0, :cond_7

    .line 502
    monitor-exit p0

    return-void

    .line 504
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d7

    .line 506
    :try_start_b
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 507
    const-string v2, "SyncManager"

    const-string v3, "initializing JobScheduler object."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1b
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 511
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 513
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 515
    nop

    .line 516
    nop

    .line 517
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobInfo;

    .line 518
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v7

    .line 519
    if-eqz v7, :cond_67

    .line 520
    iget-boolean v9, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_5e

    .line 521
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 523
    :cond_5e
    add-int/lit8 v6, v6, 0x1

    .line 526
    iget-object v9, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 529
    :cond_67
    :goto_67
    goto :goto_40

    .line 530
    :cond_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded persisted syncs: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " periodic syncs, "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oneshot syncs, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total system server jobs, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    const-string v3, "SyncManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-virtual {v3, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 538
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V

    .line 540
    sget-boolean v3, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    if-eqz v3, :cond_cc

    if-nez v5, :cond_cc

    .line 541
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->likelyHasPeriodicSyncs()Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 542
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_b .. :try_end_cc} :catchall_d2

    .line 545
    :cond_cc
    :try_start_cc
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d7

    .line 546
    nop

    .line 547
    monitor-exit p0

    return-void

    .line 545
    :catchall_d2
    move-exception v2

    :try_start_d3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_d7
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_d7

    .line 500
    :catchall_d7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 4

    .line 4071
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 4072
    :catch_7
    move-exception p1

    .line 4073
    const/4 p1, 0x0

    return p1
.end method

.method private whiteListExistingSyncAdaptersIfNeeded()V
    .registers 17

    .line 773
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v1

    if-nez v1, :cond_b

    .line 774
    return-void

    .line 776
    :cond_b
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 777
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 778
    const/4 v5, 0x0

    :goto_17
    if-ge v5, v3, :cond_71

    .line 779
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 780
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 782
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v8, v7}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 783
    iget-object v10, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 784
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v12, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v12, Landroid/content/SyncAdapterType;

    iget-object v12, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_51
    if-ge v13, v12, :cond_69

    aget-object v14, v11, v13

    .line 786
    invoke-direct {v0, v14, v10, v7}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_64

    .line 787
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget v4, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const-string v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {v15, v14, v0, v4, v2}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 784
    :cond_64
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_51

    .line 791
    :cond_69
    move-object/from16 v0, p0

    goto :goto_31

    .line 778
    :cond_6c
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_17

    .line 793
    :cond_71
    return-void
.end method

.method private zeroToEmpty(I)Ljava/lang/String;
    .registers 2

    .line 2375
    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_7
    const-string p1, ""

    :goto_9
    return-object p1
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 1462
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .registers 9

    .line 1677
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1678
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1679
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_2e

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v3, 0x0

    .line 1680
    invoke-static {p2, v2, v3}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1681
    const-string v2, "cancelScheduledSyncOperation"

    invoke-direct {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1683
    :cond_2e
    goto :goto_8

    .line 1684
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1686
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p2, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p2

    if-nez p2, :cond_44

    .line 1687
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1690
    :cond_44
    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 12

    .line 1660
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1661
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1662
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1663
    const-string v2, "clearScheduledSyncOperations"

    invoke-direct {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1666
    :cond_2f
    goto :goto_8

    .line 1667
    :cond_30
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1669
    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I
    .registers 11

    .line 1124
    const-string v0, "SyncManager"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v1

    .line 1125
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1126
    return v2

    .line 1128
    :cond_a
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p3

    .line 1129
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1130
    invoke-virtual {v3, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p2

    .line 1131
    if-nez p2, :cond_19

    .line 1132
    return v2

    .line 1134
    :cond_19
    iget p3, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1135
    iget-object v3, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1137
    :try_start_21
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p3, v3}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not scheduling job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_50} :catch_52

    .line 1141
    return v2

    .line 1145
    :cond_51
    goto :goto_53

    .line 1143
    :catch_52
    move-exception v2

    .line 1146
    :goto_53
    if-eqz p4, :cond_87

    invoke-direct {p0, p1, v3, p3}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_87

    .line 1147
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Access to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " denied for package "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in UID "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 p1, 0x3

    return p1

    .line 1152
    :cond_87
    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 6

    .line 1972
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1974
    new-instance v0, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v0}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 1976
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 1977
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lcom/android/server/content/SyncManagerConstants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1978
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1980
    if-eqz p3, :cond_25

    .line 1981
    const-string p3, "Detailed Sync History"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    .line 1984
    :cond_25
    return-void
.end method

.method protected dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 7

    .line 2041
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2043
    const-string v1, "Pending Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2044
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2046
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2047
    nop

    .line 2048
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 2049
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_35

    .line 2050
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2, v3}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    :cond_35
    goto :goto_1c

    .line 2054
    :cond_36
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2055
    return-void
.end method

.method protected dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 7

    .line 2058
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2060
    const-string v1, "Periodic Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2061
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2063
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2064
    nop

    .line 2065
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 2066
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_35

    .line 2067
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2, v3}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    :cond_35
    goto :goto_1c

    .line 2071
    :cond_36
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2072
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .registers 2

    .line 2398
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 2399
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 2400
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 30

    .line 2125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2127
    const-string v3, "Data connected: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2128
    const-string v3, "Battery saver: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2129
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v4

    goto :goto_27

    :cond_26
    move v3, v5

    :goto_27
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2131
    const-string v3, "Background network restriction: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2133
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 2134
    if-nez v3, :cond_37

    const/4 v3, -0x1

    goto :goto_3b

    :cond_37
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v3

    .line 2135
    :goto_3b
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v3, v4, :cond_5d

    if-eq v3, v7, :cond_57

    if-eq v3, v6, :cond_51

    .line 2146
    const-string v8, "Unknown("

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2148
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 2143
    :cond_51
    const-string v3, " enabled"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    goto :goto_63

    .line 2140
    :cond_57
    const-string v3, " whitelisted"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    goto :goto_63

    .line 2137
    :cond_5d
    const-string v3, " disabled"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    nop

    .line 2153
    :goto_63
    const-string v3, "Auto sync: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v3

    .line 2155
    if-eqz v3, :cond_ae

    .line 2156
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 2157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "u"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 2158
    invoke-virtual {v10, v8}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2157
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2159
    goto :goto_72

    .line 2160
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2162
    :cond_ae
    const-string v3, "Memory low: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2163
    const-string v3, "Device idle: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2164
    const-string v3, "Reported active: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2165
    const-string v3, "Clock valid: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2167
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v3

    .line 2169
    const-string v8, "Accounts: "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    sget-object v8, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v3, v8, :cond_f0

    .line 2171
    array-length v8, v3

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_f6

    .line 2173
    :cond_f0
    const-string/jumbo v8, "not known yet"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2175
    :goto_f6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2176
    const-string v10, "Now: "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 2177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2180
    const-string v10, "Uptime: "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v8, v9}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2181
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2182
    const-string v10, "Time spent syncing: "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2185
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2186
    invoke-virtual {v10}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v10

    .line 2185
    invoke-static {v2, v10, v11}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2187
    const-string v10, ", sync "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v10, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v10, :cond_15c

    const-string v10, ""

    goto :goto_15f

    :cond_15c
    const-string/jumbo v10, "not "

    :goto_15f
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    const-string v10, "in progress"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2192
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active Syncs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2194
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_190
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2195
    iget-wide v13, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v13, v8, v13

    .line 2196
    const-string v15, "  "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2198
    invoke-static {v2, v13, v14}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2199
    const-string v13, " - "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    iget-object v12, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v13, p2

    invoke-virtual {v12, v10, v5, v13, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2202
    goto :goto_190

    .line 2203
    :cond_1c3
    move-object/from16 v13, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2205
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2206
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2209
    const-string v10, "Sync Status"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2213
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v11, v5}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 2215
    array-length v11, v3

    move v12, v5

    :goto_1df
    if-ge v12, v11, :cond_470

    aget-object v13, v3, v12

    .line 2217
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v14

    .line 2218
    :try_start_1e6
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2219
    monitor-exit v14
    :try_end_1ef
    .catchall {:try_start_1e6 .. :try_end_1ef} :catchall_46d

    .line 2220
    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Object;

    iget-object v14, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v14, v15, v5

    iget v14, v13, Landroid/accounts/AccountAndUser;->userId:I

    .line 2221
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v4

    iget-object v14, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v14, v15, v7

    .line 2222
    if-eqz v6, :cond_20b

    const-string v6, ""

    goto :goto_20d

    :cond_20b
    const-string v6, " (locked)"

    :goto_20d
    const/4 v14, 0x3

    aput-object v6, v15, v14

    .line 2220
    const-string v6, "Account %s u%d %s%s\n"

    invoke-virtual {v1, v6, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2224
    const-string v6, "======================================================================="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2225
    new-instance v6, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v14, 0x10

    invoke-direct {v6, v14}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 2226
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "Authority"

    aput-object v15, v14, v5

    const-string v15, "Syncable"

    aput-object v15, v14, v4

    const-string v15, "Enabled"

    aput-object v15, v14, v7

    const-string v15, "Stats"

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const-string v15, "Loc"

    const/16 v17, 0x4

    aput-object v15, v14, v17

    const/4 v15, 0x5

    const-string v17, "Poll"

    aput-object v17, v14, v15

    const/4 v15, 0x6

    const-string v17, "Per"

    aput-object v17, v14, v15

    const/4 v15, 0x7

    const-string v17, "Feed"

    aput-object v17, v14, v15

    const/16 v15, 0x8

    const-string v17, "User"

    aput-object v17, v14, v15

    const/16 v15, 0x9

    const-string v17, "Othr"

    aput-object v17, v14, v15

    const/16 v15, 0xa

    const-string v17, "Tot"

    aput-object v17, v14, v15

    const/16 v15, 0xb

    const-string v17, "Fail"

    aput-object v17, v14, v15

    const/16 v15, 0xc

    const-string v17, "Can"

    aput-object v17, v14, v15

    const/16 v15, 0xd

    const-string v17, "Time"

    aput-object v17, v14, v15

    const/16 v15, 0xe

    const-string v17, "Last Sync"

    aput-object v17, v14, v15

    const/16 v15, 0xf

    const-string v17, "Backoff"

    aput-object v17, v14, v15

    invoke-virtual {v6, v5, v5, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2250
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 2251
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v7, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v15, v7}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2252
    new-instance v7, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v7, v0}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v14, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2260
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_298
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_455

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2261
    iget-object v15, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v15, Landroid/content/SyncAdapterType;

    iget-object v15, v15, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v4, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b6

    .line 2262
    const/4 v4, 0x1

    goto :goto_298

    .line 2264
    :cond_2b6
    invoke-virtual {v6}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v4

    .line 2265
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v20, v3

    iget-object v3, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v14, Landroid/content/SyncAdapterType;

    iget-object v14, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v21, v7

    iget v7, v13, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v5, v3, v14, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2266
    invoke-virtual {v15, v5}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v3

    .line 2271
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2272
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2273
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v7, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2274
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2275
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x32

    if-le v14, v15, :cond_2f9

    .line 2276
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v15

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2278
    :cond_2f9
    const/4 v15, 0x3

    new-array v14, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v19, 0x1

    aput-object v7, v14, v19

    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v18, 0x2

    aput-object v7, v14, v18

    invoke-virtual {v6, v4, v15, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2280
    new-instance v7, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;

    invoke-direct {v7, v2, v6}, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    .line 2296
    iget-object v14, v3, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    sget-object v15, Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;

    move-object/from16 v22, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v23, v11

    const-string v11, "Total"

    invoke-interface {v7, v11, v14, v15, v2}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2297
    iget-object v2, v3, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v11, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v11, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v4, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v24, v13

    const-string v13, "Today"

    invoke-interface {v7, v13, v2, v11, v15}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2298
    iget-object v2, v3, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v11, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v11, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v13, v4, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "Yestr"

    invoke-interface {v7, v15, v2, v11, v13}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2303
    nop

    .line 2304
    move-object v2, v10

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v7, v10, v8

    if-lez v7, :cond_3bf

    .line 2305
    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "D: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    iget-wide v11, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    sub-long/2addr v11, v8

    const-wide/16 v25, 0x3e8

    div-long v11, v11, v25

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/16 v7, 0xf

    invoke-virtual {v6, v4, v7, v10}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2306
    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v7, v10, v8

    if-lez v7, :cond_3bb

    .line 2307
    add-int/lit8 v7, v14, 0x1

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "B: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v13

    iget-wide v12, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long/2addr v12, v8

    div-long v12, v12, v25

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/16 v10, 0xf

    invoke-virtual {v6, v14, v10, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2308
    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v10, v10, v25

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v13, v12

    const/16 v5, 0xf

    invoke-virtual {v6, v7, v5, v13}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_3c2

    .line 2306
    :cond_3bb
    move v15, v13

    const/16 v5, 0xf

    goto :goto_3c2

    .line 2304
    :cond_3bf
    move v15, v12

    const/16 v5, 0xf

    .line 2312
    :goto_3c2
    nop

    .line 2313
    iget-wide v10, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_3fd

    .line 2314
    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, v3, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v5, v11, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SUCCESS"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v10, v7

    const/16 v5, 0xe

    invoke-virtual {v6, v4, v5, v10}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2316
    add-int/lit8 v4, v14, 0x1

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    iget-wide v12, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v12, v13}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v7

    invoke-virtual {v6, v14, v5, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2318
    :cond_3fd
    iget-wide v10, v3, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_443

    .line 2319
    add-int/lit8 v5, v4, 0x1

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v12, v3, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v11, v11, v12

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " FAILURE"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/16 v7, 0xe

    invoke-virtual {v6, v4, v7, v10}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2321
    add-int/lit8 v4, v5, 0x1

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    iget-wide v13, v3, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v6, v5, v7, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2323
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v3, v3, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    aput-object v3, v5, v11

    invoke-virtual {v6, v4, v7, v5}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_445

    .line 2318
    :cond_443
    const/16 v7, 0xe

    .line 2325
    :goto_445
    move-object v10, v2

    move v12, v15

    move-object/from16 v3, v20

    move-object/from16 v7, v21

    move-object/from16 v2, v22

    move/from16 v11, v23

    move-object/from16 v13, v24

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_298

    .line 2326
    :cond_455
    move-object/from16 v22, v2

    move-object/from16 v20, v3

    move-object v2, v10

    move/from16 v23, v11

    move v15, v12

    const/16 v18, 0x2

    invoke-virtual {v6, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    .line 2215
    add-int/lit8 v12, v15, 0x1

    move/from16 v7, v18

    move-object/from16 v2, v22

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    goto/16 :goto_1df

    .line 2219
    :catchall_46d
    move-exception v0

    :try_start_46e
    monitor-exit v14
    :try_end_46f
    .catchall {:try_start_46e .. :try_end_46f} :catchall_46d

    throw v0

    .line 2329
    :cond_470
    move-object v2, v10

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 2331
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2332
    const-string v0, "Per Adapter History"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    const/4 v0, 0x0

    :goto_482
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_56f

    .line 2336
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2338
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2339
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2341
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2342
    const-string v4, " u"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2343
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2344
    const-string v4, " ["

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2345
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2346
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2349
    const-string v4, "    Per source last syncs:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    const/4 v4, 0x0

    :goto_4d8
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_520

    .line 2351
    const-string v5, "      "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2352
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    aget-object v7, v7, v4

    const/4 v15, 0x0

    aput-object v7, v6, v15

    const-string v7, "%8s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2353
    const-string v6, "  Success: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2354
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v6, v6, v4

    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2356
    const-string v6, "  Failure: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v6, v6, v4

    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d8

    .line 2360
    :cond_520
    const/4 v5, 0x1

    const/4 v15, 0x0

    const-string v4, "    Last syncs:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    move v4, v15

    :goto_528
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v6

    if-ge v4, v6, :cond_55c

    .line 2362
    const-string v6, "      "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2363
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v4}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 2365
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v4}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2366
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2361
    add-int/lit8 v4, v4, 0x1

    goto :goto_528

    .line 2368
    :cond_55c
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncStatusInfo;

    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v3

    if-nez v3, :cond_56b

    .line 2369
    const-string v3, "      N/A"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    :cond_56b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_482

    .line 2372
    :cond_56f
    return-void
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 1210
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1214
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_41

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1215
    new-instance v3, Landroid/content/PeriodicSync;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-wide v8, v2, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget-wide v12, v2, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long v10, v12, v10

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_41
    goto :goto_d

    .line 1220
    :cond_42
    return-object v1
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 1250
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .registers 5

    .line 1239
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p1

    .line 1240
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/SyncAdapterType;

    .line 1241
    nop

    .line 1242
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1243
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    aput-object v2, v0, v1

    .line 1244
    add-int/lit8 v1, v1, 0x1

    .line 1245
    goto :goto_12

    .line 1246
    :cond_27
    return-object v0
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public synthetic lambda$new$0$SyncManager(Landroid/accounts/Account;I)V
    .registers 15

    .line 668
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 669
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 673
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 669
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 675
    :cond_1c
    return-void
.end method

.method public synthetic lambda$onStartUser$1$SyncManager(I)V
    .registers 6

    .line 738
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStartUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onStopUser$3$SyncManager(I)V
    .registers 6

    .line 754
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStopUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onUnlockUser$2$SyncManager(I)V
    .registers 6

    .line 746
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUnlockUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$scheduleSync$4$SyncManager(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V
    .registers 28

    .line 1030
    move-object/from16 v0, p13

    if-eqz v0, :cond_28

    .line 1031
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1032
    move-object v0, p1

    iget-object v1, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 1038
    :cond_28
    return-void
.end method

.method public synthetic lambda$scheduleSync$5$SyncManager(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .registers 26

    .line 1084
    move-object v0, p1

    iget-object v1, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 765
    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_a

    .line 767
    :cond_5
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {p1}, Lcom/android/server/content/SyncManagerConstants;->start()V

    .line 770
    :goto_a
    return-void
.end method

.method public onStartUser(I)V
    .registers 4

    .line 738
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 739
    return-void
.end method

.method public onStopUser(I)V
    .registers 5

    .line 750
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 751
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 752
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 754
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 755
    return-void

    .line 752
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public onUnlockUser(I)V
    .registers 5

    .line 742
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 743
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 744
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 746
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void

    .line 744
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5

    .line 1188
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 1189
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1188
    const/16 p3, 0xe

    invoke-virtual {v0, p3, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1190
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1191
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1192
    return-void
.end method

.method public resetTodayStats()V
    .registers 3

    .line 4066
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 4067
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V
    .registers 23

    .line 1230
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1231
    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1232
    sget-wide v7, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v6, -0x2

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 1235
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    .registers 25

    .line 902
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 905
    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 16

    .line 1200
    new-instance v8, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1202
    iget-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v8}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1203
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1204
    return-void
.end method
