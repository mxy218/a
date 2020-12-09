.class public Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$MyHandler;,
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x3

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_FEED:I = 0x5

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_OTHER:I = 0x0

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mGrantSyncAdaptersAccountAccess:Z

.field private final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field private volatile mIsClockValid:Z

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 137
    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 169
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 8

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 437
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 440
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 446
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 450
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 456
    const/16 v1, 0x1c

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 487
    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 488
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 500
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 501
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 502
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 503
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 505
    const-string p1, "GMT+0"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 507
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x11100e4

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 510
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "system"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "sync"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 514
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 516
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p3, Ljava/io/File;

    const-string v1, "accounts.xml"

    invoke-direct {p3, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "sync-accounts"

    invoke-direct {p1, p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 517
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p3, Ljava/io/File;

    const-string/jumbo v1, "status.bin"

    invoke-direct {p3, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "sync-status"

    invoke-direct {p1, p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 518
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p3, Ljava/io/File;

    const-string/jumbo v1, "stats.bin"

    invoke-direct {p3, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p2, "sync-stats"

    invoke-direct {p1, p3, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 520
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 521
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 522
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 524
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {p1}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result p1

    if-eqz p1, :cond_101

    .line 525
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 526
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "Loaded "

    aput-object v1, p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p3, v2

    const/4 v1, 0x2

    const-string v3, " items"

    aput-object v3, p3, v1

    invoke-virtual {p2, p3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 527
    move p2, v0

    :goto_ed
    if-ge p2, p1, :cond_101

    .line 528
    iget-object p3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p3, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 527
    add-int/lit8 p2, p2, 0x1

    goto :goto_ed

    .line 531
    :cond_101
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .registers 1

    .line 82
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncStorageEngine;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncStorageEngine;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 4

    .line 615
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 619
    const-wide/16 p0, 0x0

    return-wide p0

    .line 620
    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 621
    long-to-double p0, p0

    const-wide v0, 0x3fa47ae147ae147bL  # 0.04

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0

    .line 624
    :cond_19
    const-wide/16 p0, 0xd80

    return-wide p0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7

    .line 1522
    if-gez p2, :cond_9

    .line 1523
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1524
    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1525
    const/4 p3, 0x1

    .line 1527
    :cond_9
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_26
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1531
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1532
    if-eqz p3, :cond_35

    .line 1533
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1535
    :cond_35
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1451
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1452
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance p1, Landroid/content/SyncStatusInfo;

    invoke-direct {p1, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 8

    .line 1475
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1476
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1477
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "SyncManager"

    if-nez v1, :cond_37

    .line 1478
    if-eqz p2, :cond_36

    .line 1479
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unknown account "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_36
    return-object v3

    .line 1485
    :cond_37
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1486
    if-nez v0, :cond_65

    .line 1487
    if-eqz p2, :cond_64

    .line 1488
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unknown provider "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_64
    return-object v3

    .line 1494
    :cond_65
    return-object v0
.end method

.method private getCurrentDayLocked()I
    .registers 6

    .line 1456
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1457
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1458
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 1459
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1460
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1461
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1462
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1464
    :cond_3c
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1327
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1328
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1356
    if-nez v0, :cond_14

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1360
    :cond_14
    return-object v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7

    .line 1505
    nop

    .line 1506
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1507
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1508
    if-nez v1, :cond_1e

    .line 1509
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v1, v0}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1510
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    :cond_1e
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1513
    if-nez v0, :cond_35

    .line 1514
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1515
    iget-object p2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_35
    return-object v0
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4

    .line 1567
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1568
    if-nez v0, :cond_14

    .line 1569
    new-instance v0, Landroid/content/SyncStatusInfo;

    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1570
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1572
    :cond_14
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .line 546
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_7

    .line 549
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    .line 547
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 538
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_5

    .line 539
    return-void

    .line 541
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 542
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 543
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 4

    .line 1724
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1726
    return-void

    .line 1728
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1730
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 11

    .line 1737
    nop

    .line 1739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1741
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_f
    const/4 v5, 0x1

    if-ge v3, v1, :cond_52

    .line 1742
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1744
    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1745
    if-nez v7, :cond_29

    .line 1746
    goto :goto_4f

    .line 1751
    :cond_29
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    iget-boolean v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v8, :cond_31

    .line 1756
    goto :goto_4f

    .line 1760
    :cond_31
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v8, v9, v7, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1764
    const-string v6, "cleanup"

    invoke-direct {p0, v8, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    if-eqz v6, :cond_47

    .line 1765
    goto :goto_4f

    .line 1768
    :cond_47
    const/4 v4, -0x1

    .line 1769
    invoke-direct {p0, v8, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1770
    iput-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1771
    move v4, v5

    .line 1741
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1774
    :cond_52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1775
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1780
    nop

    .line 1781
    move v4, v5

    goto :goto_56

    .line 1783
    :cond_74
    return v4
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 4

    .line 534
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 22

    .line 1803
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "SyncManager"

    .line 1804
    nop

    .line 1806
    const/4 v5, -0x1

    const/4 v6, 0x0

    :try_start_b
    const-string v0, "id"

    invoke-interface {v2, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_15} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_15} :catch_16

    .line 1811
    goto :goto_26

    .line 1809
    :catch_16
    move-exception v0

    .line 1810
    const-string/jumbo v7, "the id of the authority is null"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1807
    :catch_1e
    move-exception v0

    .line 1808
    const-string v7, "error parsing the id of the authority"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1811
    nop

    .line 1812
    :goto_25
    move v0, v5

    :goto_26
    if-ltz v0, :cond_1a7

    .line 1813
    const-string v7, "authority"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1814
    const-string v8, "enabled"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1815
    const-string/jumbo v9, "syncable"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1816
    const-string v10, "account"

    invoke-interface {v2, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1817
    const-string/jumbo v11, "type"

    invoke-interface {v2, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1818
    const-string/jumbo v12, "user"

    invoke-interface {v2, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1819
    const-string/jumbo v13, "package"

    invoke-interface {v2, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1820
    const-string v14, "class"

    invoke-interface {v2, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1821
    if-nez v12, :cond_60

    const/4 v12, 0x0

    goto :goto_64

    :cond_60
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1822
    :goto_64
    if-nez v11, :cond_6f

    if-nez v13, :cond_6f

    .line 1823
    nop

    .line 1824
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.google"

    .line 1826
    :cond_6f
    iget-object v14, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1827
    const/4 v15, 0x2

    const-string v5, "SyncManagerFile"

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    const-string v6, " syncable="

    const-string v15, " enabled="

    if-eqz v16, :cond_d1

    .line 1828
    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    const-string v0, "Adding authority: account="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accountType="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " auth="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " user="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 1827
    :cond_d1
    move/from16 v17, v0

    move-object/from16 v16, v4

    .line 1838
    :goto_d5
    const/4 v2, 0x1

    if-nez v14, :cond_14f

    .line 1839
    const/4 v0, 0x2

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 1840
    const-string v0, "Creating authority entry"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_e4
    if-eqz v10, :cond_14d

    if-eqz v7, :cond_14d

    .line 1843
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v4, v7, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1846
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v12}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 1847
    invoke-virtual {v3, v7, v12}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 1848
    move/from16 v5, v17

    const/4 v3, 0x0

    invoke-direct {v1, v0, v5, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1855
    if-lez p2, :cond_10e

    .line 1856
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1865
    :cond_10e
    move-object v14, v0

    const/4 v5, 0x0

    goto :goto_150

    .line 1859
    :cond_111
    const v1, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "35028827"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "account:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " provider:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " user:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_150

    .line 1842
    :cond_14d
    const/4 v5, 0x0

    goto :goto_150

    .line 1838
    :cond_14f
    const/4 v5, 0x0

    .line 1865
    :goto_150
    if-eqz v14, :cond_184

    .line 1866
    if-eqz v8, :cond_15d

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    goto :goto_15d

    :cond_15b
    move v0, v5

    goto :goto_15e

    :cond_15d
    :goto_15d
    move v0, v2

    :goto_15e
    iput-boolean v0, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1868
    if-nez v9, :cond_164

    .line 1869
    const/4 v0, -0x1

    goto :goto_168

    :cond_164
    :try_start_164
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_168
    iput v0, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_16a
    .catch Ljava/lang/NumberFormatException; {:try_start_164 .. :try_end_16a} :catch_16b

    .line 1880
    :goto_16a
    goto :goto_1a8

    .line 1870
    :catch_16b
    move-exception v0

    .line 1873
    const-string/jumbo v0, "unknown"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 1874
    const/4 v1, -0x1

    iput v1, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_16a

    .line 1876
    :cond_179
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 1877
    goto :goto_181

    :cond_180
    move v2, v5

    :goto_181
    iput v2, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_16a

    .line 1882
    :cond_184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure adding authority: auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a8

    .line 1812
    :cond_1a7
    move-object v14, v6

    .line 1888
    :goto_1a8
    return-object v14
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 10

    .line 1932
    const-string v0, "error parsing bundle value"

    const-string v1, "SyncManager"

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1933
    const-string/jumbo v4, "type"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1934
    const-string/jumbo v5, "value1"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1935
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1938
    :try_start_21
    const-string v2, "long"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1939
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_98

    .line 1940
    :cond_31
    const-string v2, "integer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1941
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_98

    .line 1942
    :cond_41
    const-string v2, "double"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1943
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_98

    .line 1944
    :cond_51
    const-string v2, "float"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1945
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_98

    .line 1946
    :cond_61
    const-string v2, "boolean"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1947
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_98

    .line 1948
    :cond_71
    const-string/jumbo v2, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1949
    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 1950
    :cond_7e
    const-string v2, "account"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 1951
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v5, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_8e} :catch_94
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_8e} :catch_8f

    goto :goto_98

    .line 1955
    :catch_8f
    move-exception p1

    .line 1956
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 1953
    :catch_94
    move-exception p1

    .line 1954
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1957
    :cond_98
    :goto_98
    nop

    .line 1958
    :goto_99
    return-void
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1787
    const-string v0, "SyncManager"

    const/4 v1, 0x0

    const-string/jumbo v2, "user"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1788
    nop

    .line 1790
    const/4 v3, 0x0

    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_10} :catch_11

    .line 1795
    goto :goto_21

    .line 1793
    :catch_11
    move-exception v2

    .line 1794
    const-string/jumbo v4, "the user in listen-for-tickles is null"

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 1791
    :catch_19
    move-exception v2

    .line 1792
    const-string v4, "error parsing the user for listen-for-tickles"

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1795
    nop

    .line 1796
    :goto_20
    move v0, v3

    :goto_21
    const-string v2, "enabled"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1797
    if-eqz p1, :cond_2f

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_2f
    const/4 v3, 0x1

    .line 1798
    :cond_30
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1799
    return-void
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 12

    .line 1895
    const-string v0, "SyncManager"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1896
    const/4 v1, 0x0

    const-string/jumbo v2, "period"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1897
    const-string v3, "flex"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1901
    :try_start_15
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_19} :catch_79

    .line 1908
    nop

    .line 1910
    :try_start_1a
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1e} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1e} :catch_20

    .line 1920
    move-wide v7, v0

    goto :goto_65

    .line 1916
    :catch_20
    move-exception p1

    .line 1917
    invoke-static {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v1

    .line 1918
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " flex: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v1

    goto :goto_65

    .line 1911
    :catch_43
    move-exception v1

    .line 1912
    invoke-static {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v1

    .line 1913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", using default: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    move-wide v7, v1

    .line 1922
    :goto_65
    new-instance p1, Landroid/content/PeriodicSync;

    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1927
    iget-object p2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    return-object p1

    .line 1905
    :catch_79
    move-exception p1

    .line 1906
    const-string/jumbo p2, "the period of a periodic sync is null"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    return-object v1

    .line 1902
    :catch_81
    move-exception p1

    .line 1903
    const-string p2, "error parsing the period of a periodic sync"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1904
    return-object v1
.end method

.method private readAccountInfoLocked()V
    .registers 19

    .line 1611
    move-object/from16 v1, p0

    const-string v2, "No initial accounts"

    const-string v3, "Error reading accounts"

    const-string v0, "SyncManagerFile"

    const-string v4, "SyncManager"

    .line 1612
    nop

    .line 1614
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_d
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_13} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_1dd
    .catchall {:try_start_d .. :try_end_13} :catchall_1d5

    .line 1615
    const/4 v9, 0x2

    :try_start_14
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_18} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_1c7
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c0

    if-eqz v10, :cond_44

    .line 1616
    :try_start_1a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_34} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_34} :catch_3a
    .catchall {:try_start_1a .. :try_end_34} :catchall_35

    goto :goto_44

    .line 1706
    :catchall_35
    move-exception v0

    move-object v2, v0

    const/4 v15, -0x1

    goto/16 :goto_21d

    .line 1701
    :catch_3a
    move-exception v0

    move-object v6, v8

    const/4 v5, -0x1

    goto/16 :goto_1e3

    .line 1698
    :catch_3f
    move-exception v0

    move-object v6, v8

    const/4 v5, -0x1

    goto/16 :goto_204

    .line 1618
    :cond_44
    :goto_44
    :try_start_44
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1619
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1620
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_55} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_55} :catch_1c7
    .catchall {:try_start_44 .. :try_end_55} :catchall_1c0

    .line 1621
    :goto_55
    if-eq v0, v9, :cond_5e

    if-eq v0, v7, :cond_5e

    .line 1623
    :try_start_59
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_55

    .line 1625
    :cond_5e
    const/4 v11, 0x0

    if-ne v0, v7, :cond_74

    .line 1626
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_64} :catch_3f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_64} :catch_3a
    .catchall {:try_start_59 .. :try_end_64} :catchall_35

    .line 1706
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v8, :cond_73

    .line 1709
    :try_start_6e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    .line 1711
    goto :goto_73

    .line 1710
    :catch_72
    move-exception v0

    .line 1627
    :cond_73
    :goto_73
    return-void

    .line 1630
    :cond_74
    :try_start_74
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1631
    const-string v12, "accounts"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 1632
    const-string v0, "listen-for-tickles"

    invoke-interface {v10, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1633
    const-string/jumbo v0, "version"

    invoke-interface {v10, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_8d} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_8d} :catch_1c7
    .catchall {:try_start_74 .. :try_end_8d} :catchall_1c0

    .line 1636
    if-nez v0, :cond_91

    move v0, v11

    goto :goto_95

    :cond_91
    :try_start_91
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_95} :catch_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_95} :catch_3f
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_95} :catch_3a
    .catchall {:try_start_91 .. :try_end_95} :catchall_35

    .line 1639
    :goto_95
    move v13, v0

    goto :goto_99

    .line 1637
    :catch_97
    move-exception v0

    .line 1638
    move v13, v11

    .line 1641
    :goto_99
    const/4 v14, 0x3

    if-ge v13, v14, :cond_9e

    .line 1642
    :try_start_9c
    iput-boolean v7, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z
    :try_end_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_9e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9e} :catch_3a
    .catchall {:try_start_9c .. :try_end_9e} :catchall_35

    .line 1645
    :cond_9e
    :try_start_9e
    const-string/jumbo v0, "nextAuthorityId"

    invoke-interface {v10, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_a5} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a5} :catch_1c7
    .catchall {:try_start_9e .. :try_end_a5} :catchall_1c0

    .line 1647
    if-nez v0, :cond_a9

    move v0, v11

    goto :goto_ad

    :cond_a9
    :try_start_a9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1648
    :goto_ad
    iget v15, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b5} :catch_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_b5} :catch_3f
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b5} :catch_3a
    .catchall {:try_start_a9 .. :try_end_b5} :catchall_35

    .line 1651
    goto :goto_b7

    .line 1649
    :catch_b6
    move-exception v0

    .line 1652
    :goto_b7
    :try_start_b7
    const-string/jumbo v0, "offsetInSeconds"

    invoke-interface {v10, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_be} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_be} :catch_1c7
    .catchall {:try_start_b7 .. :try_end_be} :catchall_1c0

    .line 1654
    if-nez v0, :cond_c2

    move v0, v11

    goto :goto_c6

    :cond_c2
    :try_start_c2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_c6
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_c8} :catch_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c2 .. :try_end_c8} :catch_3f
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c8} :catch_3a
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_35

    .line 1657
    goto :goto_cc

    .line 1655
    :catch_c9
    move-exception v0

    .line 1656
    :try_start_ca
    iput v11, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1658
    :goto_cc
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ca .. :try_end_ce} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_ce} :catch_1c7
    .catchall {:try_start_ca .. :try_end_ce} :catchall_1c0

    if-nez v0, :cond_e2

    .line 1659
    :try_start_d0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 1660
    const v6, 0x15180

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_e2} :catch_3f
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_e2} :catch_3a
    .catchall {:try_start_d0 .. :try_end_e2} :catchall_35

    .line 1662
    :cond_e2
    :try_start_e2
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;
    :try_end_e4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_e4} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e4} :catch_1c7
    .catchall {:try_start_e2 .. :try_end_e4} :catchall_1c0

    if-eqz v12, :cond_ef

    :try_start_e6
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e6 .. :try_end_ea} :catch_3f
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ea} :catch_3a
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_35

    if-eqz v6, :cond_ed

    goto :goto_ef

    :cond_ed
    move v6, v11

    goto :goto_f0

    :cond_ef
    :goto_ef
    const/4 v6, 0x1

    :goto_f0
    :try_start_f0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1663
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1664
    nop

    .line 1665
    nop

    .line 1666
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V
    :try_end_104
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f0 .. :try_end_104} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_104} :catch_1c7
    .catchall {:try_start_f0 .. :try_end_104} :catchall_1c0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    .line 1668
    :goto_107
    if-ne v0, v9, :cond_18c

    .line 1669
    :try_start_109
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1670
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v9, :cond_15c

    .line 1671
    const-string v5, "authority"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 1672
    invoke-direct {v1, v10, v13, v6}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1673
    nop

    .line 1674
    if-eqz v0, :cond_131

    .line 1675
    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v5, v15, :cond_12e

    .line 1676
    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object v12, v0

    move v15, v5

    const/4 v7, 0x0

    const/16 v17, -0x1

    goto :goto_18e

    .line 1675
    :cond_12e
    const/16 v17, -0x1

    goto :goto_14b

    .line 1679
    :cond_131
    const v5, 0x534e4554

    new-array v7, v14, [Ljava/lang/Object;

    const-string v12, "26513719"

    aput-object v12, v7, v11

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v7, v16

    const-string v12, "Malformed authority"

    aput-object v12, v7, v9

    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1695
    :goto_14b
    move-object v12, v0

    const/4 v7, 0x0

    goto :goto_18e

    .line 1682
    :cond_14e
    const/16 v17, -0x1

    const-string v5, "listenForTickles"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 1683
    invoke-direct {v1, v10}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_18e

    .line 1685
    :cond_15c
    const/16 v17, -0x1

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v14, :cond_175

    .line 1686
    const-string/jumbo v5, "periodicSync"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    if-eqz v12, :cond_18e

    .line 1687
    invoke-direct {v1, v10, v12}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v0

    move-object v7, v0

    goto :goto_18e

    .line 1689
    :cond_175
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v9, 0x4

    if-ne v5, v9, :cond_18e

    if-eqz v7, :cond_18e

    .line 1690
    const-string v5, "extra"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 1691
    iget-object v0, v7, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    goto :goto_18e

    .line 1668
    :cond_18c
    const/16 v17, -0x1

    .line 1695
    :cond_18e
    :goto_18e
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_192
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_109 .. :try_end_192} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_192} :catch_19d
    .catchall {:try_start_109 .. :try_end_192} :catchall_199

    .line 1696
    const/4 v5, 0x1

    if-ne v0, v5, :cond_196

    goto :goto_1aa

    :cond_196
    const/4 v9, 0x2

    goto/16 :goto_107

    .line 1706
    :catchall_199
    move-exception v0

    move-object v2, v0

    goto/16 :goto_21d

    .line 1701
    :catch_19d
    move-exception v0

    move-object v6, v8

    move v5, v15

    goto :goto_1e3

    .line 1698
    :catch_1a1
    move-exception v0

    move-object v6, v8

    move v5, v15

    goto/16 :goto_204

    .line 1631
    :cond_1a6
    const/16 v17, -0x1

    move/from16 v15, v17

    .line 1706
    :goto_1aa
    const/4 v2, 0x1

    add-int/2addr v15, v2

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v8, :cond_1bc

    .line 1709
    :try_start_1b6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1b9} :catch_1ba

    .line 1711
    :goto_1b9
    goto :goto_1bc

    .line 1710
    :catch_1ba
    move-exception v0

    goto :goto_1b9

    .line 1715
    :cond_1bc
    :goto_1bc
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1716
    return-void

    .line 1706
    :catchall_1c0
    move-exception v0

    const/16 v17, -0x1

    move-object v2, v0

    move/from16 v15, v17

    goto :goto_21d

    .line 1701
    :catch_1c7
    move-exception v0

    const/16 v17, -0x1

    move-object v6, v8

    move/from16 v5, v17

    goto :goto_1e3

    .line 1698
    :catch_1ce
    move-exception v0

    const/16 v17, -0x1

    move-object v6, v8

    move/from16 v5, v17

    goto :goto_204

    .line 1706
    :catchall_1d5
    move-exception v0

    const/16 v17, -0x1

    move-object v2, v0

    move/from16 v15, v17

    const/4 v8, 0x0

    goto :goto_21d

    .line 1701
    :catch_1dd
    move-exception v0

    const/16 v17, -0x1

    move/from16 v5, v17

    const/4 v6, 0x0

    .line 1702
    :goto_1e3
    if-nez v6, :cond_1e9

    :try_start_1e5
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ec

    .line 1703
    :cond_1e9
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ec
    .catchall {:try_start_1e5 .. :try_end_1ec} :catchall_219

    .line 1706
    :goto_1ec
    const/4 v2, 0x1

    add-int/2addr v5, v2

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v6, :cond_1fd

    .line 1709
    :try_start_1f8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1fb} :catch_1fc

    .line 1711
    goto :goto_1fd

    .line 1710
    :catch_1fc
    move-exception v0

    .line 1704
    :cond_1fd
    :goto_1fd
    return-void

    .line 1698
    :catch_1fe
    move-exception v0

    const/16 v17, -0x1

    move/from16 v5, v17

    const/4 v6, 0x0

    .line 1699
    :goto_204
    :try_start_204
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_207
    .catchall {:try_start_204 .. :try_end_207} :catchall_219

    .line 1706
    const/4 v2, 0x1

    add-int/2addr v5, v2

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v6, :cond_218

    .line 1709
    :try_start_213
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_217

    .line 1711
    goto :goto_218

    .line 1710
    :catch_217
    move-exception v0

    .line 1700
    :cond_218
    :goto_218
    return-void

    .line 1706
    :catchall_219
    move-exception v0

    move-object v2, v0

    move v15, v5

    move-object v8, v6

    :goto_21d
    const/4 v3, 0x1

    add-int/2addr v15, v3

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v8, :cond_22e

    .line 1709
    :try_start_229
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_22c} :catch_22d

    .line 1711
    goto :goto_22e

    .line 1710
    :catch_22d
    move-exception v0

    .line 1711
    :cond_22e
    :goto_22e
    throw v2
.end method

.method private readStatisticsLocked()V
    .registers 8

    .line 2130
    const-string v0, "SyncManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v1

    .line 2131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2132
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2133
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2135
    nop

    .line 2136
    :goto_15
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6c

    .line 2137
    const/16 v3, 0x65

    const/16 v5, 0x64

    if-eq v1, v3, :cond_39

    if-ne v1, v5, :cond_24

    goto :goto_39

    .line 2154
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown stats token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    goto :goto_6c

    .line 2139
    :cond_39
    :goto_39
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2140
    if-ne v1, v5, :cond_43

    .line 2141
    add-int/lit16 v3, v3, -0x7d9

    add-int/lit16 v3, v3, 0x37a5

    .line 2143
    :cond_43
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v1, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2144
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2145
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2146
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2147
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2148
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v3

    if-ge v4, v3, :cond_6b

    .line 2149
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v1, v3, v4
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_69} :catch_6d

    .line 2150
    add-int/lit8 v4, v4, 0x1

    .line 2152
    :cond_6b
    goto :goto_15

    .line 2160
    :cond_6c
    :goto_6c
    goto :goto_73

    .line 2158
    :catch_6d
    move-exception v1

    .line 2159
    const-string v1, "No initial statistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :goto_73
    return-void
.end method

.method private readStatusLocked()V
    .registers 9

    .line 2024
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    const-string v2, "SyncManagerFile"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_25
    :try_start_25
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v3

    .line 2029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2030
    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2031
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2033
    :goto_37
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8a

    .line 2034
    const/16 v5, 0x64

    if-ne v3, v5, :cond_76

    .line 2035
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v4}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2036
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_75

    .line 2037
    iput-boolean v6, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2038
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 2039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding status for id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_6e
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2043
    :cond_75
    goto :goto_37

    .line 2045
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_8a} :catch_8b

    .line 2051
    :cond_8a
    goto :goto_91

    .line 2049
    :catch_8b
    move-exception v1

    .line 2050
    const-string v1, "No initial status"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :goto_91
    return-void
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 7

    .line 1551
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1552
    if-eqz p1, :cond_2e

    .line 1553
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1554
    if-eqz p1, :cond_2e

    .line 1555
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz p2, :cond_22

    .line 1556
    iget-object p3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1558
    :cond_22
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1559
    if-eqz p4, :cond_2e

    .line 1560
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1564
    :cond_2e
    return-void
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V
    .registers 16

    .line 2111
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v2, :cond_1c

    .line 2113
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v0, v2

    move-object v1, v3

    move v2, p3

    move-object v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-interface/range {v0 .. v6}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    goto :goto_1f

    .line 2117
    :cond_1c
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2119
    :goto_1f
    return-void
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V
    .registers 16

    .line 2091
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v2, :cond_17

    .line 2093
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    goto :goto_36

    .line 2096
    :cond_17
    new-instance p2, Landroid/content/SyncRequest$Builder;

    invoke-direct {p2}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 2098
    invoke-virtual {p2}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object p2

    .line 2099
    invoke-virtual {p2, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object p2

    .line 2100
    iget-object p3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p3, p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2101
    invoke-virtual {p2}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 2103
    :goto_36
    return-void
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .registers 14

    .line 856
    nop

    .line 857
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 858
    if-eqz p1, :cond_2b

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v3, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v3, v3, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v3, :cond_2b

    .line 860
    goto :goto_c

    .line 862
    :cond_2b
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 863
    if-eqz p3, :cond_4e

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 864
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 865
    goto :goto_35

    .line 867
    :cond_4e
    iget-wide v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v4, v4, p4

    if-nez v4, :cond_5a

    iget-wide v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v4, v4, p6

    if-eqz v4, :cond_5f

    .line 869
    :cond_5a
    iput-wide p4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 870
    iput-wide p6, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 871
    const/4 v1, 0x1

    .line 873
    :cond_5f
    goto :goto_35

    .line 874
    :cond_60
    goto :goto_c

    .line 875
    :cond_61
    return v1
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V
    .registers 14

    .line 771
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Set syncable "

    aput-object v4, v2, v3

    const/4 v8, 0x1

    aput-object p1, v2, v8

    const/4 v4, 0x2

    const-string v5, " value="

    aput-object v5, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const/4 v5, 0x4

    const-string v6, " cuid="

    aput-object v6, v2, v5

    .line 772
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v2, v6

    const/4 v5, 0x6

    const-string v6, " cpid="

    aput-object v6, v2, v5

    .line 773
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v2, v6

    .line 771
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 774
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 775
    const/4 v2, -0x1

    :try_start_39
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 776
    if-ge p2, v2, :cond_40

    .line 777
    goto :goto_41

    .line 776
    :cond_40
    move v2, p2

    .line 779
    :goto_41
    const-string v5, "SyncManager"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 780
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setIsSyncable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_6c
    iget v5, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v5, v2, :cond_96

    .line 783
    const-string v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 784
    const-string v0, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", doing nothing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_94
    monitor-exit v1

    return-void

    .line 788
    :cond_96
    iput v2, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 789
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 790
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_39 .. :try_end_9c} :catchall_b5

    .line 791
    if-ne v2, v8, :cond_af

    .line 792
    const/4 v4, -0x5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V

    .line 795
    :cond_af
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 796
    return-void

    .line 790
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method private writeAccountInfoLocked()V
    .registers 14

    .line 1964
    const-string v0, "listenForTickles"

    const-string v1, "accounts"

    const-string v2, "authority"

    const-string v3, "SyncManagerFile"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_29
    nop

    .line 1970
    const/4 v3, 0x0

    :try_start_2b
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_115

    .line 1971
    :try_start_31
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1972
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1973
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1974
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1976
    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1977
    const-string/jumbo v6, "version"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1978
    const-string/jumbo v6, "nextAuthorityId"

    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1979
    const-string/jumbo v6, "offsetInSeconds"

    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1982
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_78} :catch_113

    .line 1983
    const/4 v7, 0x0

    move v8, v7

    :goto_7a
    const-string v9, "enabled"

    const-string/jumbo v10, "user"

    if-ge v8, v6, :cond_aa

    .line 1984
    :try_start_81
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 1985
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 1986
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1987
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1988
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v3, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1989
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1983
    add-int/lit8 v8, v8, 0x1

    goto :goto_7a

    .line 1992
    :cond_aa
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1993
    nop

    :goto_b1
    if-ge v7, v0, :cond_107

    .line 1994
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1995
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1996
    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1997
    const-string v11, "id"

    iget v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1998
    iget v11, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    iget-boolean v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v3, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2000
    const-string v11, "account"

    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2001
    const-string/jumbo v11, "type"

    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v5, v3, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2003
    const-string/jumbo v8, "syncable"

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2004
    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1993
    add-int/lit8 v7, v7, 0x1

    goto :goto_b1

    .line 2006
    :cond_107
    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2007
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2008
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_112} :catch_113

    .line 2014
    goto :goto_125

    .line 2009
    :catch_113
    move-exception v0

    goto :goto_117

    :catch_115
    move-exception v0

    move-object v4, v3

    .line 2010
    :goto_117
    const-string v1, "SyncManager"

    const-string v2, "Error writing accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2011
    if-eqz v4, :cond_125

    .line 2012
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2015
    :cond_125
    :goto_125
    return-void
.end method

.method private writeStatisticsLocked()V
    .registers 10

    .line 2167
    const/4 v0, 0x2

    const-string v1, "SyncManagerFile"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "SyncManager"

    if-eqz v1, :cond_25

    .line 2168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_25
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2175
    const/4 v0, 0x0

    .line 2177
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 2178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2179
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v3

    .line 2180
    const/4 v4, 0x0

    move v5, v4

    :goto_3a
    if-ge v5, v3, :cond_64

    .line 2181
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v6, v6, v5

    .line 2182
    if-nez v6, :cond_43

    .line 2183
    goto :goto_64

    .line 2185
    :cond_43
    const/16 v7, 0x65

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    iget-wide v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 2189
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2190
    iget-wide v6, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2180
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 2192
    :cond_64
    :goto_64
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2196
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_76} :catch_77

    .line 2202
    goto :goto_84

    .line 2197
    :catch_77
    move-exception v1

    .line 2198
    const-string v3, "Error writing stats"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2199
    if-eqz v0, :cond_84

    .line 2200
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2203
    :cond_84
    :goto_84
    return-void
.end method

.method private writeStatusLocked()V
    .registers 8

    .line 2058
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_23
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2066
    const/4 v0, 0x0

    .line 2068
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 2069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2070
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2071
    const/4 v3, 0x0

    move v4, v3

    :goto_3c
    if-ge v4, v2, :cond_51

    .line 2072
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2073
    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    invoke-virtual {v5, v1, v3}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2071
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 2076
    :cond_51
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2080
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_63} :catch_64

    .line 2086
    goto :goto_73

    .line 2081
    :catch_64
    move-exception v1

    .line 2082
    const-string v2, "SyncManager"

    const-string v3, "Error writing status"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2083
    if-eqz v0, :cond_73

    .line 2084
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2087
    :cond_73
    :goto_73
    return-void
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 11

    .line 1094
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1095
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1096
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3f
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1102
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1106
    new-instance v8, Landroid/content/SyncInfo;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1111
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_71

    .line 1113
    iget-object p1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(I)V

    .line 1114
    return-object v8

    .line 1112
    :catchall_71
    move-exception p1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p1
.end method

.method public addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    .registers 6

    .line 594
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 595
    :try_start_3
    invoke-static {p2, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p1

    .line 596
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 597
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public clearAllBackoffsLocked()V
    .registers 13

    .line 879
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 880
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 882
    :try_start_8
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 883
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 884
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_42

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a0

    .line 886
    :cond_42
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 887
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " account:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v10, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v10, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " backoffTime was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " backoffDelay was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_91
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 895
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 896
    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_a0
    goto :goto_28

    .line 899
    :cond_a1
    goto/16 :goto_12

    .line 900
    :cond_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_8 .. :try_end_a4} :catchall_bd

    .line 902
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_aa
    if-lez v1, :cond_bc

    .line 903
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 902
    add-int/lit8 v1, v1, -0x1

    goto :goto_aa

    .line 905
    :cond_bc
    return-void

    .line 900
    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v0
.end method

.method public clearAndReadState()V
    .registers 3

    .line 1591
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1592
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1593
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1594
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1595
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1596
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1598
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1599
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1600
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1601
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1602
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1603
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1604
    monitor-exit v0

    .line 1605
    return-void

    .line 1604
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 4

    .line 991
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 992
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object p1

    .line 993
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getAuthorityCount()I
    .registers 3

    .line 985
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 986
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 987
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 800
    :try_start_3
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p1

    .line 801
    if-eqz p1, :cond_1d

    .line 802
    iget-wide v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 804
    :cond_1d
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 805
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1368
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p1

    .line 1371
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1372
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1338
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object p1

    .line 1339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1342
    if-nez p2, :cond_29

    .line 1343
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    iget-object v4, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v5, v2, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v3, v4, v5, v6}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v2

    goto :goto_2f

    .line 1346
    :cond_29
    new-instance v3, Landroid/content/SyncInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    move-object v2, v3

    .line 1348
    :goto_2f
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    goto :goto_10

    .line 1350
    :cond_33
    monitor-exit v0

    return-object v1

    .line 1351
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 6

    .line 1442
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1443
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1444
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1445
    monitor-exit v0

    return-object v1

    .line 1446
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .registers 5

    .line 908
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 909
    :try_start_3
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p1

    .line 910
    if-nez p1, :cond_f

    .line 911
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    .line 913
    :cond_f
    iget-wide v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide v1

    .line 914
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 7

    .line 732
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 733
    const/4 v1, -0x1

    if-eqz p1, :cond_19

    .line 734
    :try_start_6
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string p1, "get authority syncable"

    invoke-direct {p0, v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p1

    .line 737
    if-nez p1, :cond_15

    .line 738
    monitor-exit v0

    return v1

    .line 740
    :cond_15
    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return p1

    .line 743
    :cond_19
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 744
    :goto_1f
    if-lez p1, :cond_3e

    .line 745
    add-int/lit8 p1, p1, -0x1

    .line 746
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 747
    iget-object v2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v2, :cond_3d

    iget-object v2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 748
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 749
    iget p1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return p1

    .line 751
    :cond_3d
    goto :goto_1f

    .line 752
    :cond_3e
    monitor-exit v0

    return v1

    .line 753
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 4

    .line 978
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 979
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 980
    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_14
    monitor-exit v0

    return p1

    .line 981
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .registers 9

    .line 1382
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_3c

    .line 1385
    :cond_a
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1386
    :try_start_d
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1387
    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_37

    .line 1388
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1389
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1390
    if-eqz v5, :cond_34

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1391
    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1392
    monitor-exit v0

    return-object v4

    .line 1387
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1395
    :cond_37
    monitor-exit v0

    return-object v1

    .line 1396
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw p1

    .line 1383
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 11

    .line 666
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 667
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1c

    .line 668
    :try_start_7
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string p1, "getSyncAutomatically"

    invoke-direct {p0, v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p1

    .line 671
    if-eqz p1, :cond_19

    iget-boolean p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    monitor-exit v0

    return v1

    .line 674
    :cond_1c
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 675
    :goto_22
    if-lez v3, :cond_42

    .line 676
    add-int/lit8 v3, v3, -0x1

    .line 677
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 678
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget-boolean v4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v4, :cond_41

    .line 680
    monitor-exit v0

    return v1

    .line 682
    :cond_41
    goto :goto_22

    .line 683
    :cond_42
    monitor-exit v0

    return v2

    .line 684
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1429
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1f

    .line 1430
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1432
    :cond_1f
    monitor-exit v0

    return-object v2

    .line 1433
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getSyncRandomOffset()I
    .registers 2

    .line 590
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .registers 9

    .line 1145
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1146
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1147
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_22
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string v3, "insertStartSyncEvent"

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1150
    if-nez v1, :cond_30

    .line 1151
    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    .line 1153
    :cond_30
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1154
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1155
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1156
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1157
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    const/4 v4, 0x0

    if-gez v1, :cond_4e

    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1158
    :cond_4e
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1159
    iget p2, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1160
    iget p2, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1161
    iget-object p2, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1162
    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1163
    iget p2, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1164
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1165
    :goto_67
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0x64

    if-le p2, p3, :cond_7f

    .line 1166
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_67

    .line 1168
    :cond_7f
    iget p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long p2, p2

    .line 1169
    const-string v1, "SyncManager"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning historyId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_ac

    .line 1172
    const/16 v0, 0x8

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1173
    return-wide p2

    .line 1170
    :catchall_ac
    move-exception p1

    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p1
.end method

.method public isClockValid()Z
    .registers 2

    .line 2221
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return v0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 5

    .line 1001
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1002
    :try_start_3
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1003
    iget v2, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1004
    if-eqz v2, :cond_2c

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1005
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1007
    :cond_2c
    goto :goto_d

    .line 1008
    :cond_2d
    monitor-exit v0

    .line 1009
    const/4 p1, 0x0

    return p1

    .line 1008
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 9

    .line 1401
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1403
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_35

    .line 1404
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1405
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1406
    if-nez v5, :cond_22

    .line 1407
    goto :goto_32

    .line 1409
    :cond_22
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1410
    goto :goto_32

    .line 1412
    :cond_2b
    iget-boolean v4, v4, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_32

    .line 1413
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 1403
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1416
    :cond_35
    monitor-exit v0

    return v2

    .line 1417
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .registers 6

    .line 1013
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1014
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1017
    if-nez v1, :cond_d

    .line 1018
    monitor-exit v0

    return-void

    .line 1020
    :cond_d
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v1

    .line 1021
    iput-boolean p2, v1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1022
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1d

    .line 1023
    const/4 p2, 0x2

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1024
    return-void

    .line 1022
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public queueBackup()V
    .registers 2

    .line 2210
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2211
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 7

    .line 1121
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1122
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1123
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_37
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1128
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_43

    .line 1130
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(I)V

    .line 1131
    return-void

    .line 1128
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 6

    .line 1539
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1540
    :try_start_3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1541
    monitor-exit v0

    .line 1542
    return-void

    .line 1541
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public removeStaleAccounts([Landroid/accounts/Account;I)V
    .registers 11

    .line 1031
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1032
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1033
    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1036
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1037
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1038
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1039
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v5, p2, :cond_35

    .line 1040
    goto :goto_22

    .line 1042
    :cond_35
    if-eqz p1, :cond_41

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 1043
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 1045
    :cond_41
    const-string v5, "SyncManager"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1046
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_61
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1049
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1050
    goto :goto_6b

    .line 1051
    :cond_7d
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1053
    :cond_80
    goto :goto_22

    .line 1056
    :cond_81
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1057
    if-lez p1, :cond_e9

    .line 1058
    :goto_87
    if-lez p1, :cond_e0

    .line 1059
    add-int/lit8 p1, p1, -0x1

    .line 1060
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 1061
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1062
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v3, :cond_a0

    .line 1063
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v3, v2}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1065
    :cond_a0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1066
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1067
    :cond_ab
    :goto_ab
    if-lez v2, :cond_c3

    .line 1068
    add-int/lit8 v2, v2, -0x1

    .line 1069
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v3, p2, :cond_ab

    .line 1070
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_ab

    .line 1073
    :cond_c3
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1074
    :cond_c9
    :goto_c9
    if-lez v2, :cond_df

    .line 1075
    add-int/lit8 v2, v2, -0x1

    .line 1076
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v3, p2, :cond_c9

    .line 1077
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c9

    .line 1080
    :cond_df
    goto :goto_87

    .line 1081
    :cond_e0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1082
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1083
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1085
    :cond_e9
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_eb
    move-exception p1

    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_3 .. :try_end_ed} :catchall_eb

    throw p1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 602
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 603
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public reportActiveChange(I)V
    .registers 3

    .line 1137
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1138
    return-void
.end method

.method reportChange(II)V
    .registers 9

    .line 629
    nop

    .line 630
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 631
    :try_start_4
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    .line 632
    :cond_b
    :goto_b
    if-lez v1, :cond_3c

    .line 633
    add-int/lit8 v1, v1, -0x1

    .line 634
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 635
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v5

    .line 636
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v3

    .line 637
    and-int/2addr v3, p1

    if-eqz v3, :cond_b

    if-eq p2, v5, :cond_29

    .line 638
    goto :goto_b

    .line 640
    :cond_29
    if-nez v2, :cond_30

    .line 641
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    :cond_30
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    goto :goto_b

    .line 645
    :cond_3c
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 646
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_81

    .line 648
    const/4 p2, 0x2

    const-string v0, "SyncManager"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 649
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportChange "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SyncManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_6a
    if-eqz v2, :cond_80

    .line 653
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 654
    :goto_70
    if-lez p2, :cond_80

    .line 655
    add-int/lit8 p2, p2, -0x1

    .line 657
    :try_start_74
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ISyncStatusObserver;

    invoke-interface {v0, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7d} :catch_7e

    goto :goto_7f

    .line 658
    :catch_7e
    move-exception v0

    .line 660
    :goto_7f
    goto :goto_70

    .line 663
    :cond_80
    return-void

    .line 646
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public resetTodayStats(Z)V
    .registers 7

    .line 2225
    if-eqz p1, :cond_9

    .line 2226
    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_9
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2229
    :try_start_c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2230
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    .line 2231
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2232
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 2230
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2234
    :cond_27
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2235
    monitor-exit v0

    .line 2236
    return-void

    .line 2235
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method restoreAllPeriodicSyncs()Z
    .registers 13

    .line 937
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 938
    return v1

    .line 940
    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 941
    nop

    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 942
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 943
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/PeriodicSync;

    .line 944
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v4, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v8, v4, Landroid/content/PeriodicSync;->period:J

    iget-wide v10, v4, Landroid/content/PeriodicSync;->flexTime:J

    invoke-interface/range {v5 .. v11}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    .line 946
    goto :goto_20

    .line 947
    :cond_3a
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 949
    :cond_42
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 950
    monitor-exit v0

    .line 951
    const/4 v0, 0x1

    return v0

    .line 950
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .registers 18

    .line 813
    move-object v0, p0

    move-object v9, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> nextSyncTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_35
    iget-object v10, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v10

    .line 819
    :try_start_38
    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v11, 0x1

    if-eqz v1, :cond_5b

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_42

    goto :goto_5b

    .line 828
    :cond_42
    const/4 v1, -0x1

    .line 829
    invoke-direct {p0, p1, v1, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 830
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_55

    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_55

    .line 832
    const/4 v1, 0x0

    goto :goto_69

    .line 834
    :cond_55
    iput-wide v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 835
    iput-wide v7, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 836
    move v1, v11

    goto :goto_69

    .line 822
    :cond_5b
    :goto_5b
    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result v1

    .line 839
    :goto_69
    monitor-exit v10
    :try_end_6a
    .catchall {:try_start_38 .. :try_end_6a} :catchall_72

    .line 840
    if-eqz v1, :cond_71

    .line 841
    iget v1, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v11, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 843
    :cond_71
    return-void

    .line 839
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v10
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0
.end method

.method public setClockValid()V
    .registers 3

    .line 2214
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_e

    .line 2215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 2216
    const-string v0, "SyncManager"

    const-string v1, "Clock is valid now."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_e
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 9

    .line 918
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDelayUntil: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> delayUntil "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_28
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 923
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_2d
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 924
    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_39

    .line 925
    monitor-exit v0

    return-void

    .line 927
    :cond_39
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 928
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_42

    .line 929
    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 930
    return-void

    .line 928
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    .registers 8

    .line 758
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4, p5, p6}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V

    .line 760
    return-void
.end method

.method public setMasterSyncAutomatically(ZIIII)V
    .registers 18

    .line 956
    move-object v0, p0

    move v10, p2

    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Set master enabled="

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v2, v11

    const/4 v3, 0x2

    const-string v4, " user="

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    const-string v4, " cuid="

    aput-object v4, v2, v3

    .line 957
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    const-string v4, " cpid="

    aput-object v4, v2, v3

    .line 958
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 956
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 959
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 960
    :try_start_3e
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 961
    if-eqz v2, :cond_54

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 962
    monitor-exit v1

    return-void

    .line 964
    :cond_54
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 966
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_83

    .line 967
    if-eqz p1, :cond_75

    .line 968
    const/4 v2, 0x0

    const/4 v4, -0x7

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move v3, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    .line 972
    :cond_75
    invoke-virtual {p0, v11, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 973
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 974
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 975
    return-void

    .line 966
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v0
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .registers 3

    .line 559
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_6

    .line 560
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 562
    :cond_6
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    .line 554
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 556
    :cond_6
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .registers 3

    .line 565
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_6

    .line 566
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 568
    :cond_6
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    .registers 20

    .line 689
    move-object v0, p0

    move-object v2, p1

    move v10, p2

    move-object v5, p3

    move/from16 v1, p4

    const/4 v3, 0x2

    const-string v4, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncAutomatically:  provider "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SyncManager"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_36
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Set sync auto account="

    aput-object v8, v6, v7

    const/4 v11, 0x1

    aput-object v2, v6, v11

    const-string v8, " user="

    aput-object v8, v6, v3

    const/4 v8, 0x3

    .line 694
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const-string v9, " authority="

    aput-object v9, v6, v8

    const/4 v8, 0x5

    aput-object v5, v6, v8

    const/4 v8, 0x6

    const-string v9, " value="

    aput-object v9, v6, v8

    const/4 v8, 0x7

    .line 696
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/16 v8, 0x8

    const-string v9, " cuid="

    aput-object v9, v6, v8

    const/16 v8, 0x9

    .line 697
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/16 v8, 0xa

    const-string v9, " cpid="

    aput-object v9, v6, v8

    const/16 v8, 0xb

    .line 698
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    .line 693
    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 700
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 701
    :try_start_85
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 702
    const/4 v8, -0x1

    invoke-direct {p0, v6, v8, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 706
    iget-boolean v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v7, v1, :cond_b9

    .line 707
    const-string v0, "SyncManager"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 708
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", doing nothing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_b7
    monitor-exit v4

    return-void

    .line 715
    :cond_b9
    if-eqz v1, :cond_c1

    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v7, v3, :cond_c1

    .line 716
    iput v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 718
    :cond_c1
    iput-boolean v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 719
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 720
    monitor-exit v4
    :try_end_c7
    .catchall {:try_start_85 .. :try_end_c7} :catchall_e3

    .line 722
    if-eqz v1, :cond_dc

    .line 723
    const/4 v4, -0x6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    .line 727
    :cond_dc
    invoke-virtual {p0, v11, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 728
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 729
    return-void

    .line 720
    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .registers 2

    .line 1584
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJI)V
    .registers 29

    .line 1178
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1179
    :try_start_b
    const-string v7, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1180
    const-string v7, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_2b
    nop

    .line 1183
    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1184
    :goto_32
    if-lez v7, :cond_47

    .line 1185
    add-int/lit8 v7, v7, -0x1

    .line 1186
    iget-object v10, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1187
    iget v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v11, v11

    cmp-long v11, v11, v1

    if-nez v11, :cond_46

    .line 1188
    goto :goto_48

    .line 1190
    :cond_46
    goto :goto_32

    .line 1184
    :cond_47
    const/4 v10, 0x0

    .line 1193
    :goto_48
    if-nez v10, :cond_63

    .line 1194
    const-string v0, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopSyncEvent: no history for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    monitor-exit v6

    return-void

    .line 1198
    :cond_63
    iput-wide v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1199
    const/4 v1, 0x1

    iput v1, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1200
    iput-object v5, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1201
    move-wide/from16 v11, p6

    iput-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1202
    move-wide/from16 v11, p8

    iput-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1204
    iget v2, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-direct {v0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v7

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1208
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1209
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1210
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v12, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v12, v3

    iput-wide v12, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1211
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v12, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v12, v3

    iput-wide v12, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1212
    iget v7, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    if-eqz v7, :cond_f9

    if-eq v7, v1, :cond_ea

    if-eq v7, v8, :cond_db

    const/4 v12, 0x3

    if-eq v7, v12, :cond_cc

    const/4 v12, 0x4

    if-eq v7, v12, :cond_bd

    const/4 v12, 0x5

    if-eq v7, v12, :cond_ae

    goto :goto_108

    .line 1234
    :cond_ae
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1235
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_108

    .line 1230
    :cond_bd
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1231
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1232
    goto :goto_108

    .line 1222
    :cond_cc
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1223
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1224
    goto :goto_108

    .line 1218
    :cond_db
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1219
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1220
    goto :goto_108

    .line 1214
    :cond_ea
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1215
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1216
    goto :goto_108

    .line 1226
    :cond_f9
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1227
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1228
    nop

    .line 1239
    :goto_108
    nop

    .line 1240
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v7

    .line 1241
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v12, v12, v11

    if-nez v12, :cond_11d

    .line 1242
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v7}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v13, v12, v11

    goto :goto_13f

    .line 1243
    :cond_11d
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v12, v12, v11

    iget v12, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v7, v12, :cond_13b

    .line 1244
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v14, v14

    sub-int/2addr v14, v1

    invoke-static {v12, v11, v13, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1245
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v7}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v13, v12, v11

    .line 1246
    move v7, v1

    goto :goto_140

    .line 1247
    :cond_13b
    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v7, v7, v11

    .line 1249
    :goto_13f
    move v7, v11

    :goto_140
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v12, v12, v11

    .line 1251
    iget-wide v13, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v13, v3

    .line 1252
    nop

    .line 1253
    const-string/jumbo v15, "success"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-wide/16 v16, 0x0

    if-eqz v15, :cond_170

    .line 1255
    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_15f

    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_160

    .line 1256
    :cond_15f
    move v11, v1

    .line 1258
    :cond_160
    iget v8, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v2, v8, v13, v14}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1259
    iget v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v8, v1

    iput v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1260
    iget-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v3

    iput-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_1ac

    .line 1261
    :cond_170
    const-string v8, "canceled"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19d

    .line 1262
    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v8, v16

    if-nez v8, :cond_17f

    .line 1263
    move v11, v1

    .line 1265
    :cond_17f
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1266
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1268
    iget v8, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v2, v8, v13, v14, v5}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1270
    iget v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v8, v1

    iput v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1271
    iget-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v3

    iput-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_1ac

    .line 1274
    :cond_19d
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1275
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1276
    move v11, v1

    .line 1278
    :goto_1ac
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1279
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Source="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v12, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v5, v5, v12

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Elapsed="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-static {v8, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 1282
    const-string v3, " Reason="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v3, :cond_20c

    .line 1285
    const-string v3, " Exemption="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eq v3, v1, :cond_207

    const/4 v4, 0x2

    if-eq v3, v4, :cond_200

    .line 1294
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_20c

    .line 1291
    :cond_200
    const-string/jumbo v3, "top"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    goto :goto_20c

    .line 1288
    :cond_207
    const-string v3, "fg"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    :cond_20c
    :goto_20c
    const-string v3, " Extras="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    iget-object v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v3, v8}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1301
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    .line 1303
    if-eqz v11, :cond_223

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    goto :goto_239

    .line 1305
    :cond_223
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_239

    .line 1306
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1309
    :cond_239
    :goto_239
    if-eqz v7, :cond_23f

    .line 1310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_257

    .line 1311
    :cond_23f
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_257

    .line 1312
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1b7740

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1315
    :cond_257
    :goto_257
    monitor-exit v6
    :try_end_258
    .catchall {:try_start_b .. :try_end_258} :catchall_260

    .line 1317
    const/16 v1, 0x8

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1318
    return-void

    .line 1315
    :catchall_260
    move-exception v0

    :try_start_261
    monitor-exit v6
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_260

    throw v0
.end method

.method public writeAllState()V
    .registers 3

    .line 1576
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1578
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1579
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1580
    monitor-exit v0

    .line 1581
    return-void

    .line 1580
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
