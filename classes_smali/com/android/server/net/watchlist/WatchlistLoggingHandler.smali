.class Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
.super Landroid/os/Handler;
.source "WatchlistLoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistLoggingHandler$WatchlistEventKeys;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DROPBOX_TAG:Ljava/lang/String; = "network_watchlist_report"

.field static final FORCE_REPORT_RECORDS_NOW_FOR_TEST_MSG:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LOG_WATCHLIST_EVENT_MSG:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ONE_DAY_MS:J

.field static final REPORT_RECORDS_IF_NECESSARY_MSG:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

.field private final mDropBoxManager:Landroid/os/DropBoxManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mPrimaryUserId:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    const-class v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 82
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 95
    iget-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 96
    iget-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 97
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 98
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 99
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 100
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/DropBoxManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DropBoxManager;

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 102
    return-void
.end method

.method private addEncodedReportToDropBox([B)V
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v1, "network_watchlist_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 322
    return-void
.end method

.method static getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 413
    if-nez p0, :cond_4

    .line 414
    const/4 p0, 0x0

    return-object p0

    .line 416
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 419
    :goto_12
    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    .line 420
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 422
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_24
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_12

    .line 426
    :cond_29
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getDigestFromUid(I)[B
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;-><init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method static getLastMidnightTime()J
    .registers 2

    .line 430
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getMidnightTimestamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMidnightTimestamp(I)J
    .registers 4

    .line 434
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 436
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 437
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 438
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 439
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 440
    neg-int p0, p0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 441
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPrimaryUserId()I
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 141
    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_14

    .line 143
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0

    .line 145
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method private handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V
    .registers 8

    .line 201
    iget v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 202
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 206
    :cond_b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    if-eq v0, v1, :cond_14

    .line 210
    return-void

    .line 212
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    if-eqz p1, :cond_1e

    .line 214
    invoke-direct {p0, p3, p1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)Z

    goto :goto_27

    .line 216
    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    if-eqz p1, :cond_27

    .line 218
    invoke-direct {p0, p3, p1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)Z

    .line 221
    :cond_27
    :goto_27
    return-void
.end method

.method private insertRecord(ILjava/lang/String;J)Z
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isPackageTestOnly(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 232
    const/4 p1, 0x1

    return p1

    .line 234
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v0

    .line 235
    if-nez v0, :cond_2e

    .line 236
    sget-object p2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot get digest from uid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 p1, 0x0

    return p1

    .line 239
    :cond_2e
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->insertNewRecord([BLjava/lang/String;J)Z

    move-result p1

    .line 240
    return p1
.end method

.method private isHostInWatchlist(Ljava/lang/String;)Z
    .registers 3

    .line 383
    if-nez p1, :cond_4

    .line 384
    const/4 p1, 0x0

    return p1

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsDomain(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isIpInWatchlist(Ljava/lang/String;)Z
    .registers 3

    .line 375
    if-nez p1, :cond_4

    .line 376
    const/4 p1, 0x0

    return p1

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsIp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isPackageTestOnly(I)Z
    .registers 6

    .line 154
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 155
    if-eqz p1, :cond_1e

    array-length v1, p1

    if-nez v1, :cond_d

    goto :goto_1e

    .line 159
    :cond_d
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_35

    .line 163
    nop

    .line 164
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 156
    :cond_1e
    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_34} :catch_35

    .line 157
    return v0

    .line 160
    :catch_35
    move-exception p1

    .line 162
    return v0
.end method

.method private searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 397
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 398
    return-object v0

    .line 400
    :cond_4
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 401
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, p1, v2

    .line 402
    invoke-direct {p0, v3}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isHostInWatchlist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 403
    return-object v3

    .line 401
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 406
    :cond_18
    return-object v0
.end method

.method private searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 365
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 366
    invoke-direct {p0, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isIpInWatchlist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 367
    return-object v2

    .line 365
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 370
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method private shouldReportNetworkWatchlist(J)Z
    .registers 9

    .line 244
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_watchlist_last_report_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 246
    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_1d

    .line 247
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p2, "Last report time is larger than current time, reset report"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z

    .line 249
    return v3

    .line 251
    :cond_1d
    sget-wide v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    add-long/2addr v0, v4

    cmp-long p1, p1, v0

    if-ltz p1, :cond_25

    const/4 v3, 0x1

    :cond_25
    return v3
.end method

.method private tryAggregateRecords(J)V
    .registers 10

    .line 255
    const-string v0, "Milliseconds spent on tryAggregateRecords(): "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 258
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->shouldReportNetworkWatchlist(J)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 259
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p2, "No need to aggregate record yet."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_b1

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 288
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 262
    :cond_2d
    :try_start_2d
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Start aggregating watchlist records."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v4, "network_watchlist_report"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 264
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "network_watchlist_last_report_time"

    invoke-static {v3, v4, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 267
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 268
    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    move-result-object v3

    .line 269
    if-nez v3, :cond_74

    .line 270
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p2, "Cannot get result from database"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_2d .. :try_end_5a} :catchall_b1

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 288
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 275
    :cond_74
    :try_start_74
    invoke-virtual {p0, v3}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;

    move-result-object v4

    .line 276
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-virtual {v5}, Lcom/android/server/net/watchlist/WatchlistSettings;->getPrivacySecretKey()[B

    move-result-object v5

    .line 277
    iget-object v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-static {v6, v5, v4, v3}, Lcom/android/server/net/watchlist/ReportEncoder;->encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B

    move-result-object v3

    .line 279
    if-eqz v3, :cond_89

    .line 280
    invoke-direct {p0, v3}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->addEncodedReportToDropBox([B)V

    .line 282
    :cond_89
    goto :goto_91

    .line 283
    :cond_8a
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Network Watchlist dropbox tag is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_91
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z
    :try_end_96
    .catchall {:try_start_74 .. :try_end_96} :catchall_b1

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 288
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    nop

    .line 290
    return-void

    .line 287
    :catchall_b1
    move-exception p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 288
    sget-object p2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    throw p1
.end method


# virtual methods
.method public asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 7

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string p1, "ipAddresses"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 189
    const-string/jumbo p1, "uid"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string/jumbo p3, "timestamp"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method

.method public forceReportWatchlistForTest(J)V
    .registers 4

    .line 176
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 305
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 306
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_6a

    .line 307
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v4

    .line 308
    if-eqz v4, :cond_39

    .line 309
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 311
    :cond_39
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get digest from uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 316
    :cond_6a
    iget-object p1, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 317
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    .line 129
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v0, "WatchlistLoggingHandler received an unknown of message."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 121
    :cond_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 122
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 124
    goto :goto_59

    .line 125
    :cond_25
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v0, "Msg.obj needs to be a Long object."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_59

    .line 118
    :cond_2d
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getLastMidnightTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 119
    goto :goto_59

    .line 108
    :cond_35
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 109
    nop

    .line 110
    const-string v0, "host"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v0, "ipAddresses"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 113
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 109
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V

    .line 115
    nop

    .line 133
    :goto_59
    return-void
.end method

.method public synthetic lambda$getDigestFromUid$0$WatchlistLoggingHandler(ILjava/lang/Integer;)[B
    .registers 10

    .line 331
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 332
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 333
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5a

    .line 334
    array-length v0, p2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_5a

    aget-object v3, p2, v2

    .line 336
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0xc0000

    invoke-virtual {v4, v3, v5, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 340
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 341
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find apkPath for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    nop

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 344
    :cond_47
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object p1
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_50} :catch_51
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_50} :catch_51

    return-object p1

    .line 345
    :catch_51
    move-exception p1

    .line 346
    sget-object p2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v0, "Should not happen"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    return-object v1

    .line 353
    :cond_5a
    return-object v1
.end method

.method public reportWatchlistIfNecessary()V
    .registers 2

    .line 171
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method
