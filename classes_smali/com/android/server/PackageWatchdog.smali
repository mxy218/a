.class public Lcom/android/server/PackageWatchdog;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageWatchdog$MonitoredPackage;,
        Lcom/android/server/PackageWatchdog$ObserverInternal;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserver;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserverImpact;,
        Lcom/android/server/PackageWatchdog$FailureReasons;
    }
.end annotation


# static fields
.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_EXPLICIT_HEALTH_CHECK_DURATION:Ljava/lang/String; = "health-check-duration"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PASSED_HEALTH_CHECK:Ljava/lang/String; = "passed-health-check"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_EXPLICIT_HEALTH_CHECK_ENABLED:Z = true

.field private static final DEFAULT_TRIGGER_FAILURE_COUNT:I = 0x5

.field private static final DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

.field public static final FAILURE_REASON_APP_CRASH:I = 0x3

.field public static final FAILURE_REASON_APP_NOT_RESPONDING:I = 0x4

.field public static final FAILURE_REASON_EXPLICIT_HEALTH_CHECK:I = 0x2

.field public static final FAILURE_REASON_NATIVE_CRASH:I = 0x1

.field public static final FAILURE_REASON_UNKNOWN:I = 0x0

.field static final PROPERTY_WATCHDOG_EXPLICIT_HEALTH_CHECK_ENABLED:Ljava/lang/String; = "watchdog_explicit_health_check_enabled"

.field static final PROPERTY_WATCHDOG_TRIGGER_DURATION_MILLIS:Ljava/lang/String; = "watchdog_trigger_failure_duration_millis"

.field static final PROPERTY_WATCHDOG_TRIGGER_FAILURE_COUNT:Ljava/lang/String; = "watchdog_trigger_failure_count"

.field private static final TAG:Ljava/lang/String; = "PackageWatchdog"

.field private static final TAG_OBSERVER:Ljava/lang/String; = "observer"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_WATCHDOG:Ljava/lang/String; = "package-watchdog"

.field private static sPackageWatchdog:Lcom/android/server/PackageWatchdog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PackageWatchdog.class"
        }
    .end annotation
.end field


# instance fields
.field private final mAllObservers:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

.field private mIsHealthCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsPackagesReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLongTaskHandler:Landroid/os/Handler;

.field private final mNetworkStackClient:Landroid/net/NetworkStackClient;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mShortTaskHandler:Landroid/os/Handler;

.field private mTriggerFailureCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mTriggerFailureDurationMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUptimeAtLastStateSync:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 102
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    .line 101
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 153
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 154
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-watchdog.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v3, Landroid/os/Handler;

    .line 156
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/ExplicitHealthCheckController;

    invoke-direct {v5, p1}, Lcom/android/server/ExplicitHealthCheckController;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v6

    .line 153
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/NetworkStackClient;)V

    .line 159
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/NetworkStackClient;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 142
    sget v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 144
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 168
    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 170
    iput-object p3, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 171
    iput-object p4, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 172
    iput-object p5, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 173
    iput-object p6, p0, Lcom/android/server/PackageWatchdog;->mNetworkStackClient:Landroid/net/NetworkStackClient;

    .line 174
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->loadFromFile()V

    .line 175
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/PackageWatchdog;)I
    .registers 1

    .line 74
    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/PackageWatchdog;)I
    .registers 1

    .line 74
    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;
    .registers 3

    .line 179
    const-class v0, Lcom/android/server/PackageWatchdog;

    monitor-enter v0

    .line 180
    :try_start_3
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    if-nez v1, :cond_e

    .line 181
    new-instance v1, Lcom/android/server/PackageWatchdog;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 183
    :cond_e
    sget-object p0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    monitor-exit v0

    return-object p0

    .line 184
    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private getNextStateSyncMillisLocked()J
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 608
    nop

    .line 609
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-wide v2, v1

    move v1, v0

    :goto_9
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_39

    .line 610
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v4, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 611
    move-wide v5, v2

    move v2, v0

    :goto_1d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 612
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 613
    invoke-virtual {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getShortestScheduleDurationMsLocked()J

    move-result-wide v7

    .line 614
    cmp-long v3, v7, v5

    if-gez v3, :cond_32

    .line 615
    move-wide v5, v7

    .line 611
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 609
    :cond_35
    add-int/lit8 v1, v1, 0x1

    move-wide v2, v5

    goto :goto_9

    .line 619
    :cond_39
    return-wide v2
.end method

.method private getPackagesPendingHealthChecksLocked()Ljava/util/Set;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    const-string v0, "PackageWatchdog"

    const-string v1, "Getting all observed packages pending health checks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 548
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 549
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 550
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 551
    iget-object v2, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 552
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 553
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 554
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 555
    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v4

    .line 556
    invoke-virtual {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 557
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_45
    goto :goto_2c

    .line 560
    :cond_46
    goto :goto_16

    .line 561
    :cond_47
    return-object v0
.end method

.method private getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .registers 6

    .line 679
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 680
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 681
    return-object v1

    .line 684
    :cond_a
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 686
    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-direct {v0, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_18} :catch_19

    return-object v0

    .line 687
    :catch_19
    move-exception p1

    .line 688
    return-object v1
.end method

.method public static synthetic lambda$CQuOnXthwwBaxcS5WoAlJJAz8Tk(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequests()V

    return-void
.end method

.method public static synthetic lambda$Q0WI2EJpRFO1jF_7_YDaj1eGHas(Lcom/android/server/PackageWatchdog;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ZYXCPv-g8AolCxNNTIoK4ITZJpQ(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFileAsync()V

    return-void
.end method

.method public static synthetic lambda$vRKcIrucEj03dz6ypRVINZtns1s(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncStateWithScheduledReason()V

    return-void
.end method

.method private loadFromFile()V
    .registers 7

    .line 699
    nop

    .line 700
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 702
    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 703
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 704
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 705
    const-string/jumbo v2, "package-watchdog"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 706
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 707
    :goto_24
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 708
    invoke-static {v1, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;

    move-result-object v3

    .line 709
    if-eqz v3, :cond_37

    .line 710
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_37} :catch_4c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_37} :catch_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_37} :catch_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_37} :catch_3a
    .catchall {:try_start_7 .. :try_end_37} :catchall_38

    .line 712
    :cond_37
    goto :goto_24

    .line 719
    :catchall_38
    move-exception v1

    goto :goto_48

    .line 715
    :catch_3a
    move-exception v1

    .line 716
    :try_start_3b
    const-string v2, "PackageWatchdog"

    const-string v3, "Unable to read monitored packages, deleting file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_38

    goto :goto_4d

    .line 719
    :goto_48
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 713
    :catch_4c
    move-exception v1

    .line 719
    :cond_4d
    :goto_4d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 720
    nop

    .line 721
    return-void
.end method

.method private onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$w1N3OdeSgqjfs1N8CxlxIZyRKkE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$PackageWatchdog$w1N3OdeSgqjfs1N8CxlxIZyRKkE;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method

.method private onHealthCheckPassed(Ljava/lang/String;)V
    .registers 8

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health check passed for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    nop

    .line 487
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1d
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_48

    .line 489
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 490
    iget-object v4, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 492
    if-eqz v4, :cond_45

    .line 493
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v5

    .line 494
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v4

    .line 495
    if-eq v5, v4, :cond_43

    const/4 v4, 0x1

    goto :goto_44

    :cond_43
    move v4, v1

    :goto_44
    or-int/2addr v3, v4

    .line 488
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 498
    :cond_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_60

    .line 500
    if-eqz v3, :cond_5f

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "health check passed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 503
    :cond_5f
    return-void

    .line 498
    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method private onSupportedPackages(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;)V"
        }
    .end annotation

    .line 506
    nop

    .line 508
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 509
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 510
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 512
    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getHealthCheckTimeoutMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    goto :goto_a

    .line 515
    :cond_26
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_29
    const-string v2, "PackageWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received supported packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 518
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 519
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v5, v5, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 520
    :goto_61
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 521
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 522
    invoke-static {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v7

    .line 523
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v8

    .line 526
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 528
    nop

    .line 529
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 528
    invoke-virtual {v6, v9, v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->setHealthCheckActiveLocked(J)I

    move-result v6

    goto :goto_8f

    .line 532
    :cond_8b
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v6

    .line 534
    :goto_8f
    if-eq v8, v6, :cond_93

    const/4 v6, 0x1

    goto :goto_94

    :cond_93
    move v6, v3

    :goto_94
    or-int/2addr v4, v6

    .line 535
    goto :goto_61

    .line 536
    :cond_96
    goto :goto_4b

    .line 537
    :cond_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_29 .. :try_end_98} :catchall_b0

    .line 539
    if-eqz v4, :cond_af

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updated health check supported packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 542
    :cond_af
    return-void

    .line 537
    :catchall_b0
    move-exception p1

    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p1
.end method

.method private pruneObserversLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 628
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 629
    move-wide v0, v2

    goto :goto_11

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    sub-long/2addr v0, v4

    .line 630
    :goto_11
    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-gtz v2, :cond_32

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not pruning observers, elapsed time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void

    .line 635
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms from all packages on all observers"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 637
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 638
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 639
    nop

    .line 640
    invoke-static {v4, v0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->access$100(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;

    move-result-object v5

    .line 641
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_70

    .line 642
    invoke-direct {p0, v4, v5}, Lcom/android/server/PackageWatchdog;->onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    .line 644
    :cond_70
    iget-object v5, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding observer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". All packages expired"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 648
    :cond_96
    goto :goto_56

    .line 649
    :cond_97
    return-void
.end method

.method private registerNetworkStackHealthListener()V
    .registers 3

    .line 769
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mNetworkStackClient:Landroid/net/NetworkStackClient;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$1l0m3y2c5ApJy3DK1aj1zLt-Y2A;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$1l0m3y2c5ApJy3DK1aj1zLt-Y2A;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkStackClient;->registerHealthListener(Landroid/net/NetworkStackClient$NetworkStackHealthListener;)V

    .line 784
    return-void
.end method

.method private saveToFile()Z
    .registers 9

    .line 790
    const-string v0, "PackageWatchdog"

    const-string v1, "Saving observer state to file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_7f
    .catchall {:try_start_b .. :try_end_11} :catchall_7d

    .line 798
    nop

    .line 801
    :try_start_12
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 802
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 803
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 804
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    const-string/jumbo v5, "version"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    move v5, v1

    :goto_3a
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_50

    .line 807
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-virtual {v7, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->writeLocked(Lorg/xmlpull/v1/XmlSerializer;)Z

    .line 806
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 809
    :cond_50
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 811
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_5e} :catch_66
    .catchall {:try_start_12 .. :try_end_5e} :catchall_64

    .line 812
    nop

    .line 818
    :try_start_5f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_7d

    .line 812
    return v4

    .line 818
    :catchall_64
    move-exception v1

    goto :goto_79

    .line 813
    :catch_66
    move-exception v3

    .line 814
    :try_start_67
    const-string v4, "PackageWatchdog"

    const-string v5, "Failed to save monitored packages, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_64

    .line 816
    nop

    .line 818
    :try_start_74
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 816
    return v1

    .line 818
    :goto_79
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 820
    :catchall_7d
    move-exception v1

    goto :goto_89

    .line 795
    :catch_7f
    move-exception v2

    .line 796
    const-string v3, "PackageWatchdog"

    const-string v4, "Cannot update monitored packages"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    monitor-exit v0

    return v1

    .line 820
    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_74 .. :try_end_8a} :catchall_7d

    throw v1
.end method

.method private saveToFileAsync()V
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 825
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    :cond_17
    return-void
.end method

.method private scheduleNextSyncStateLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getNextStateSyncMillisLocked()J

    move-result-wide v0

    .line 590
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-nez v2, :cond_23

    .line 592
    const-string v0, "Cancelling state sync, nothing to sync"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    goto :goto_4d

    .line 595
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling next state sync in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 597
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    :goto_4d
    return-void
.end method

.method private setExplicitHealthCheckEnabled(Z)V
    .registers 5

    .line 385
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 387
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v1, p1}, Lcom/android/server/ExplicitHealthCheckController;->setEnabled(Z)V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "health check state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    const-string p1, "enabled"

    goto :goto_1b

    :cond_19
    const-string p1, "disabled"

    :goto_1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private setPropertyChangedListenerLocked()V
    .registers 4

    .line 725
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 727
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$Jw3j5MJV779MFM4_82knw6ZMoQk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$Jw3j5MJV779MFM4_82knw6ZMoQk;-><init>(Lcom/android/server/PackageWatchdog;)V

    .line 725
    const-string/jumbo v2, "rollback"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 734
    return-void
.end method

.method private syncRequests()V
    .registers 4

    .line 456
    nop

    .line 457
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    if-eqz v1, :cond_d

    .line 459
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getPackagesPendingHealthChecksLocked()Ljava/util/Set;

    move-result-object v1

    goto :goto_e

    .line 458
    :cond_d
    const/4 v1, 0x0

    .line 461
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_2d

    .line 464
    if-eqz v1, :cond_2c

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syncing health check requests for packages: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageWatchdog"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v0, v1}, Lcom/android/server/ExplicitHealthCheckController;->syncRequests(Ljava/util/Set;)V

    .line 468
    :cond_2c
    return-void

    .line 461
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private syncRequestsAsync()V
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    return-void
.end method

.method private syncState(Ljava/lang/String;)V
    .registers 6

    .line 571
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    const-string v1, "PackageWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing state, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 575
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFileAsync()V

    .line 576
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 579
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->scheduleNextSyncStateLocked()V

    .line 580
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private syncStateWithScheduledReason()V
    .registers 2

    .line 584
    const-string/jumbo v0, "scheduled"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private updateConfigs()V
    .registers 6

    .line 741
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_3
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_count"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 746
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    if-gtz v1, :cond_16

    .line 747
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 750
    :cond_16
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_duration_millis"

    sget v4, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 754
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    if-gtz v1, :cond_2a

    .line 755
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 758
    :cond_2a
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_explicit_health_check_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->setExplicitHealthCheckEnabled(Z)V

    .line 762
    monitor-exit v0

    .line 763
    return-void

    .line 762
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method public getPackages(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$PackageHealthObserver;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 303
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 304
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v2, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 305
    iget-object p1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object p1, p1, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 307
    :cond_3c
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 302
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 310
    :cond_45
    monitor-exit v0

    .line 311
    const/4 p1, 0x0

    return-object p1

    .line 310
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method getTriggerFailureCount()J
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_3
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    .line 438
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$onHealthCheckFailed$4$PackageWatchdog(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 8

    .line 654
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object p1, p1, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 656
    if-eqz p1, :cond_59

    .line 657
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 658
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 659
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v1

    .line 660
    const-string v2, "PackageWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Explicit health check failed for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    .line 662
    if-nez v2, :cond_54

    .line 663
    const-string v2, "PackageWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Explicit health check failed but could not find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v2, Landroid/content/pm/VersionedPackage;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 669
    :cond_54
    const/4 v1, 0x2

    invoke-interface {p1, v2, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;I)Z

    .line 671
    goto :goto_b

    .line 673
    :cond_59
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public synthetic lambda$onPackageFailure$3$PackageWatchdog(Ljava/util/List;I)V
    .registers 13

    .line 325
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 327
    monitor-exit v0

    return-void

    .line 330
    :cond_d
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/VersionedPackage;

    .line 333
    const/4 v4, 0x0

    .line 334
    const v5, 0x7fffffff

    .line 337
    move v6, v5

    move-object v5, v4

    move v4, v1

    :goto_22
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_4e

    .line 338
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 339
    iget-object v8, v7, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 340
    if-eqz v8, :cond_4b

    .line 342
    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 341
    invoke-virtual {v7, v9}, Lcom/android/server/PackageWatchdog$ObserverInternal;->onPackageFailureLocked(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 343
    invoke-interface {v8, v3}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;)I

    move-result v7

    .line 344
    if-eqz v7, :cond_4b

    if-ge v7, v6, :cond_4b

    .line 346
    nop

    .line 347
    move v6, v7

    move-object v5, v8

    .line 337
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 353
    :cond_4e
    if-eqz v5, :cond_53

    .line 354
    invoke-interface {v5, v3, p2}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;I)Z

    .line 330
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 357
    :cond_56
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public synthetic lambda$onPackagesReady$0$PackageWatchdog(Ljava/lang/String;)V
    .registers 2

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onHealthCheckPassed(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onPackagesReady$1$PackageWatchdog(Ljava/util/List;)V
    .registers 2

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onSupportedPackages(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onPackagesReady$2$PackageWatchdog()V
    .registers 1

    .line 196
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    return-void
.end method

.method public synthetic lambda$registerNetworkStackHealthListener$6$PackageWatchdog(Ljava/lang/String;)V
    .registers 7

    .line 771
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object p1

    .line 772
    if-nez p1, :cond_e

    .line 773
    const-string p1, "PackageWatchdog"

    const-string v0, "NetworkStack failed but could not find its package"

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 778
    :cond_e
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 779
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->getTriggerFailureCount()J

    move-result-wide v0

    .line 780
    const/4 v2, 0x0

    :goto_17
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_23

    .line 781
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 783
    :cond_23
    return-void
.end method

.method public synthetic lambda$setPropertyChangedListenerLocked$5$PackageWatchdog(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 729
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "rollback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 730
    return-void

    .line 732
    :cond_e
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 733
    return-void
.end method

.method public onPackageFailure(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$v_AYugez2Xug3cY8cBV5oVrBVRQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$PackageWatchdog$v_AYugez2Xug3cY8cBV5oVrBVRQ;-><init>(Lcom/android/server/PackageWatchdog;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method public onPackagesReady()V
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    .line 194
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    new-instance v2, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v3, Lcom/android/server/-$$Lambda$PackageWatchdog$uFI2R7Ip9Bh1wQPJqJ5H5A0soVU;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$uFI2R7Ip9Bh1wQPJqJ5H5A0soVU;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v4, Lcom/android/server/-$$Lambda$PackageWatchdog$07YAng9lcuyRJuBYy9Jk3p2pWVY;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$07YAng9lcuyRJuBYy9Jk3p2pWVY;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ExplicitHealthCheckController;->setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 197
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->setPropertyChangedListenerLocked()V

    .line 198
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->registerNetworkStackHealthListener()V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 212
    if-eqz v1, :cond_13

    .line 213
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 215
    :cond_13
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$PackageHealthObserver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 236
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No packages to observe, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageWatchdog"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 240
    :cond_21
    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_be

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    const/4 v1, 0x0

    :goto_2d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 249
    new-instance v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-wide v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 256
    :cond_49
    const-string/jumbo p3, "observing new packages"

    invoke-direct {p0, p3}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_52
    iget-object p3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 260
    if-nez p3, :cond_90

    .line 261
    const-string p3, "PackageWatchdog"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " started monitoring health of packages "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 264
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p4, v2, v0}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 263
    invoke-virtual {p2, p3, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 266
    :cond_90
    const-string p4, "PackageWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " added the following packages to monitor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p3, v0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 270
    :goto_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_52 .. :try_end_b1} :catchall_bb

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 277
    const-string/jumbo p1, "updated observers"

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 278
    return-void

    .line 270
    :catchall_bb
    move-exception p1

    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p1

    .line 242
    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "ms for observer "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Not observing packages "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_27

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregistering observer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 290
    return-void

    .line 288
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public writeNow()V
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 370
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$PackageWatchdog$ZYXCPv-g8AolCxNNTIoK4ITZJpQ;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$ZYXCPv-g8AolCxNNTIoK4ITZJpQ;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 372
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    .line 373
    const-string v1, "PackageWatchdog"

    const-string v2, "Last write to update package durations"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_22
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method
