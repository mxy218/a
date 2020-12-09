.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;,
        Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;,
        Lcom/android/server/DropBoxManagerService$ShellCmd;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

.field private mLowPriorityRateLimitPeriod:J

.field private mLowPriorityTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFiles:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 305
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 100
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 103
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 107
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 108
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 109
    iput p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 110
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 112
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 117
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 120
    new-instance p1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance p1, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 318
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 319
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 320
    new-instance p1, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 321
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3

    .line 76
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/DropBoxManagerService;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method private declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 524
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 525
    monitor-exit p0

    return-void

    .line 523
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkPermission(ILjava/lang/String;)Z
    .registers 6

    .line 468
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DropBoxManagerService"

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 473
    const/16 v2, 0x2b

    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    .line 481
    const/4 p1, 0x0

    return p1

    .line 477
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return p2

    .line 475
    :cond_2f
    return p2
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 952
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 958
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 959
    const/4 v4, 0x0

    .line 960
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 961
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 962
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 965
    :cond_2d
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const-wide/16 v5, 0x1

    if-nez v0, :cond_4a

    .line 966
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 969
    :cond_4a
    if-eqz v4, :cond_ab

    .line 970
    array-length v0, v4

    const/4 v7, 0x0

    move-wide v12, v2

    :goto_4f
    if-ge v7, v0, :cond_ac

    aget-object v2, v4, v7

    .line 971
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 972
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v8, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 973
    if-eqz v3, :cond_77

    iget-object v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v8, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 974
    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 976
    :cond_77
    iget v3, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_99

    .line 977
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v11, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v16, v12, v5

    iget v14, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v15, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v12, v16

    goto :goto_a8

    .line 980
    :cond_99
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v9, v12, v5

    invoke-direct {v3, v8, v2, v12, v13}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v12, v9

    .line 970
    :goto_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 969
    :cond_ab
    move-wide v12, v2

    .line 985
    :cond_ac
    if-nez p1, :cond_bb

    .line 986
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3, v12, v13}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_d6

    .line 988
    :cond_bb
    move-object/from16 v3, p2

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v4, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object v14, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move-object/from16 v17, p2

    move-wide/from16 v18, v12

    move/from16 v20, p3

    move/from16 v21, v4

    invoke-direct/range {v14 .. v21}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_d6
    .catchall {:try_start_3 .. :try_end_d6} :catchall_d8

    .line 990
    :goto_d6
    monitor-exit p0

    return-wide v12

    .line 951
    :catchall_d8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5

    monitor-enter p0

    .line 933
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 934
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 939
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_44

    .line 940
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 941
    if-nez v0, :cond_38

    .line 942
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 943
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    :cond_38
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 946
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget p1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 948
    :cond_44
    monitor-exit p0

    return-void

    .line 932
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLowPriorityResourceConfigs()V
    .registers 6

    .line 1095
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1098
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1100
    array-length v1, v0

    .line 1101
    if-nez v1, :cond_20

    .line 1102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1103
    return-void

    .line 1105
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1106
    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_34

    .line 1107
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1106
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1109
    :cond_34
    return-void
.end method

.method private declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 893
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5f

    .line 894
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 895
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_d4

    .line 898
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 899
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_44} :catch_45
    .catchall {:try_start_2f .. :try_end_44} :catchall_d4

    .line 902
    goto :goto_5f

    .line 900
    :catch_45
    move-exception v0

    .line 901
    :try_start_46
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t statfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d2

    .line 906
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_b9

    .line 909
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 910
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 913
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_d2

    aget-object v3, v0, v2

    .line 914
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 915
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 917
    goto :goto_b6

    .line 920
    :cond_a6
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 922
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 925
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 913
    :cond_b6
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 907
    :cond_b9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t list files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d2
    .catchall {:try_start_46 .. :try_end_d2} :catchall_d4

    .line 929
    :cond_d2
    monitor-exit p0

    return-void

    .line 892
    :catchall_d4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 528
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 529
    monitor-exit p0

    return-void

    .line 527
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized restoreDefaults()V
    .registers 2

    monitor-enter p0

    .line 532
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 533
    monitor-exit p0

    return-void

    .line 531
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLowPriorityRateLimit(J)V
    .registers 3

    monitor-enter p0

    .line 520
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 521
    monitor-exit p0

    return-void

    .line 519
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized trimToFit()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1000
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "dropbox_age_seconds"

    const v2, 0x3f480

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1002
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_max_files"

    .line 1004
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_1b

    .line 1005
    const/16 v3, 0x12c

    goto :goto_1c

    :cond_1b
    move v3, v4

    .line 1002
    :goto_1c
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/2addr v0, v4

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 1007
    :goto_29
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    .line 1008
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1009
    iget-wide v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_50

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    iget v4, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v3, v4, :cond_50

    .line 1010
    goto :goto_84

    .line 1013
    :cond_50
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1014
    if-eqz v3, :cond_6b

    iget-object v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1015
    :cond_6b
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1016
    :cond_7e
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1017
    goto :goto_29

    .line 1024
    :cond_84
    :goto_84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1025
    iget-wide v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_f9

    .line 1026
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dropbox_quota_percent"

    const/16 v5, 0xa

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1028
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "dropbox_reserve_percent"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1030
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "dropbox_quota_kb"

    const/16 v7, 0x1400

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1033
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6
    :try_end_b4
    .catchall {:try_start_1 .. :try_end_b4} :catchall_1aa

    .line 1035
    :try_start_b4
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7, v6}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b4 .. :try_end_b9} :catch_df
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_1aa

    .line 1038
    nop

    .line 1039
    :try_start_ba
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    .line 1040
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    mul-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    .line 1041
    mul-int/lit16 v5, v5, 0x400

    iget v4, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v5, v4

    .line 1042
    mul-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x64

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1043
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_f9

    .line 1036
    :catch_df
    move-exception v0

    .line 1037
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t restat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_f9
    :goto_f9
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v1, :cond_1a2

    .line 1062
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1063
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1064
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_114
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_131

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1065
    if-lez v3, :cond_12b

    iget v5, v4, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v6, v0

    div-int/2addr v6, v3

    if-gt v5, v6, :cond_12b

    .line 1066
    goto :goto_131

    .line 1068
    :cond_12b
    iget v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v0, v4

    .line 1069
    add-int/lit8 v3, v3, 0x1

    .line 1070
    goto :goto_114

    .line 1071
    :cond_131
    :goto_131
    iget v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v3

    .line 1074
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_139
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1075
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v3, v4, :cond_14e

    goto :goto_1a2

    .line 1076
    :cond_14e
    :goto_14e
    iget v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v3, v2, :cond_1a1

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a1

    .line 1077
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1078
    iget-object v4, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_171

    iget v4, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1079
    :cond_171
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_184

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v5, v4, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_184
    .catchall {:try_start_ba .. :try_end_184} :catchall_1aa

    .line 1082
    :cond_184
    :try_start_184
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1083
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_197} :catch_198
    .catchall {:try_start_184 .. :try_end_197} :catchall_1aa

    .line 1086
    goto :goto_1a0

    .line 1084
    :catch_198
    move-exception v3

    .line 1085
    :try_start_199
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t write tombstone file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    :goto_1a0
    goto :goto_14e

    .line 1088
    :cond_1a1
    goto :goto_139

    .line 1091
    :cond_1a2
    :goto_1a2
    iget v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1a6
    .catchall {:try_start_199 .. :try_end_1a6} :catchall_1aa

    mul-int/2addr v0, v1

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 999
    :catchall_1aa
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 23

    .line 363
    move-object/from16 v0, p0

    const-string v1, "DropBoxManagerService"

    .line 364
    nop

    .line 365
    nop

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 368
    const/4 v3, 0x0

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v4

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isTagEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " flags=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_175

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 374
    invoke-virtual {v0, v2}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_46} :catch_181
    .catchall {:try_start_b .. :try_end_46} :catchall_17b

    if-nez v5, :cond_53

    .line 449
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 450
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 452
    nop

    .line 374
    return-void

    .line 375
    :cond_53
    :try_start_53
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v5

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 378
    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v9, v9, [B

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_181
    .catchall {:try_start_53 .. :try_end_63} :catchall_17b

    .line 384
    const/4 v12, 0x0

    .line 385
    :goto_64
    :try_start_64
    array-length v13, v9
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_65} :catch_172
    .catchall {:try_start_64 .. :try_end_65} :catchall_170

    if-ge v12, v13, :cond_7d

    .line 386
    :try_start_67
    array-length v13, v9

    sub-int/2addr v13, v12

    invoke-virtual {v10, v9, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6d} :catch_78
    .catchall {:try_start_67 .. :try_end_6d} :catchall_72

    .line 387
    if-gtz v13, :cond_70

    goto :goto_7d

    .line 388
    :cond_70
    add-int/2addr v12, v13

    .line 389
    goto :goto_64

    .line 449
    :catchall_72
    move-exception v0

    move-object v13, v3

    move-object/from16 v16, v13

    goto/16 :goto_1ae

    .line 446
    :catch_78
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_186

    .line 394
    :cond_7d
    :goto_7d
    :try_start_7d
    new-instance v13, Ljava/io/File;

    iget-object v14, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move/from16 v18, v12

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_a4} :catch_172
    .catchall {:try_start_7d .. :try_end_a4} :catchall_170

    .line 395
    :try_start_a4
    iget v3, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 396
    const/16 v11, 0x1000

    if-le v3, v11, :cond_ab

    move v3, v11

    .line 397
    :cond_ab
    const/16 v11, 0x200

    if-ge v3, v11, :cond_b0

    move v3, v11

    .line 398
    :cond_b0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 399
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v11, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ba} :catch_16b
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_169

    .line 400
    :try_start_ba
    array-length v3, v9

    move/from16 v14, v18

    if-ne v14, v3, :cond_cb

    and-int/lit8 v3, v4, 0x4

    if-nez v3, :cond_cb

    .line 401
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c8} :catch_164
    .catchall {:try_start_ba .. :try_end_c8} :catchall_160

    .line 402
    or-int/lit8 v4, v4, 0x4

    goto :goto_cc

    .line 406
    :cond_cb
    move-object v3, v12

    :cond_cc
    :goto_cc
    const/4 v12, 0x0

    :try_start_cd
    invoke-virtual {v3, v9, v12, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 409
    sub-long v17, v14, v7

    const-wide/16 v19, 0x7530

    cmp-long v17, v17, v19

    if-lez v17, :cond_e1

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v5

    .line 411
    move-wide v7, v14

    .line 414
    :cond_e1
    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 415
    if-gtz v14, :cond_ef

    .line 416
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 417
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 418
    const/4 v3, 0x0

    goto :goto_f2

    .line 420
    :cond_ef
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 423
    :goto_f2
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 424
    cmp-long v15, v17, v5

    if-lez v15, :cond_12d

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes)"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 428
    nop

    .line 429
    const/4 v13, 0x0

    goto :goto_12f

    .line 431
    :cond_12d
    if-gtz v14, :cond_cc

    .line 433
    :goto_12f
    invoke-direct {v0, v13, v2, v4}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v4
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_133} :catch_15e
    .catchall {:try_start_cd .. :try_end_133} :catchall_15c

    .line 434
    nop

    .line 440
    :try_start_134
    iget-object v6, v0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz v6, :cond_146

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_146

    .line 442
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_14b

    .line 444
    :cond_146
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_14b} :catch_15a
    .catchall {:try_start_134 .. :try_end_14b} :catchall_155

    .line 449
    :goto_14b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 450
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 452
    goto :goto_1a8

    .line 449
    :catchall_155
    move-exception v0

    move-object/from16 v16, v3

    const/4 v13, 0x0

    goto :goto_1ae

    .line 446
    :catch_15a
    move-exception v0

    goto :goto_184

    .line 449
    :catchall_15c
    move-exception v0

    goto :goto_1ac

    .line 446
    :catch_15e
    move-exception v0

    goto :goto_166

    .line 449
    :catchall_160
    move-exception v0

    move-object/from16 v16, v12

    goto :goto_1ae

    .line 446
    :catch_164
    move-exception v0

    move-object v3, v12

    :goto_166
    move-object/from16 v16, v13

    goto :goto_186

    .line 449
    :catchall_169
    move-exception v0

    goto :goto_17e

    .line 446
    :catch_16b
    move-exception v0

    move-object/from16 v16, v13

    const/4 v3, 0x0

    goto :goto_186

    .line 449
    :catchall_170
    move-exception v0

    goto :goto_17d

    .line 446
    :catch_172
    move-exception v0

    const/4 v3, 0x0

    goto :goto_184

    .line 371
    :cond_175
    :try_start_175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_17b} :catch_181
    .catchall {:try_start_175 .. :try_end_17b} :catchall_17b

    .line 449
    :catchall_17b
    move-exception v0

    const/4 v10, 0x0

    :goto_17d
    const/4 v13, 0x0

    :goto_17e
    const/16 v16, 0x0

    goto :goto_1ae

    .line 446
    :catch_181
    move-exception v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_184
    const/16 v16, 0x0

    .line 447
    :goto_186
    :try_start_186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19a
    .catchall {:try_start_186 .. :try_end_19a} :catchall_1a9

    .line 449
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 450
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 452
    if-eqz v16, :cond_1a8

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 454
    :cond_1a8
    :goto_1a8
    return-void

    .line 449
    :catchall_1a9
    move-exception v0

    move-object/from16 v13, v16

    :goto_1ac
    move-object/from16 v16, v3

    :goto_1ae
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 450
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 452
    if-eqz v13, :cond_1bc

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_1bc
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 536
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_37c

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 539
    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_35d
    .catchall {:try_start_15 .. :try_end_18} :catchall_37c

    .line 544
    nop

    .line 548
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    nop

    .line 550
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 551
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_27
    if-eqz v3, :cond_b2

    array-length v10, v3

    if-ge v0, v10, :cond_b2

    .line 552
    aget-object v10, v3, v0

    const-string v11, "-p"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ad

    aget-object v10, v3, v0

    const-string v11, "--print"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    goto :goto_ad

    .line 554
    :cond_41
    aget-object v10, v3, v0

    const-string v11, "-f"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ab

    aget-object v10, v3, v0

    const-string v11, "--file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    goto :goto_ab

    .line 556
    :cond_56
    aget-object v9, v3, v0

    const-string v10, "-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    aget-object v9, v3, v0

    const-string v10, "--help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    goto :goto_8b

    .line 564
    :cond_6b
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 565
    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 567
    :cond_85
    aget-object v9, v3, v0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 557
    :cond_8b
    :goto_8b
    const-string v0, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    const-string v0, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string v0, "    -h|--help: print this help"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    const-string v0, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string v0, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v0, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_19 .. :try_end_a9} :catchall_37c

    .line 563
    monitor-exit p0

    return-void

    .line 555
    :cond_ab
    :goto_ab
    const/4 v8, 0x1

    goto :goto_ae

    .line 553
    :cond_ad
    :goto_ad
    const/4 v7, 0x1

    .line 551
    :goto_ae
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_27

    .line 571
    :cond_b2
    :try_start_b2
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v0, "Low priority rate limit period: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-wide v10, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v0, "Low priority tags: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 579
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_118

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_103

    .line 581
    :cond_118
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_11d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 585
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 586
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v0, 0x0

    :goto_134
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_33c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 588
    iget-wide v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v11, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 589
    const-string v14, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 590
    nop

    .line 591
    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_14f
    if-ge v15, v10, :cond_172

    if-eqz v16, :cond_172

    .line 592
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 593
    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_16d

    iget-object v9, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16a

    goto :goto_16d

    :cond_16a
    const/16 v16, 0x0

    goto :goto_16f

    :cond_16d
    :goto_16d
    const/16 v16, 0x1

    .line 591
    :goto_16f
    add-int/lit8 v15, v15, 0x1

    goto :goto_14f

    .line 595
    :cond_172
    if-nez v16, :cond_175

    goto :goto_134

    .line 597
    :cond_175
    add-int/lit8 v6, v0, 0x1

    .line 598
    if-eqz v7, :cond_17e

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_17e
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_18d

    const-string v0, "(no tag)"

    goto :goto_18f

    :cond_18d
    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_18f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 602
    if-nez v9, :cond_1a3

    .line 603
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    move-object/from16 v18, v5

    goto/16 :goto_337

    .line 605
    :cond_1a3
    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/4 v14, 0x1

    and-int/2addr v0, v14

    if-eqz v0, :cond_1b2

    .line 606
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    move-object/from16 v18, v5

    goto/16 :goto_337

    .line 609
    :cond_1b2
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c2

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_1c2
    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1cc

    const-string/jumbo v0, "text"

    goto :goto_1ce

    :cond_1cc
    const-string v0, "data"

    :goto_1ce
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    if-nez v8, :cond_1ec

    if-eqz v7, :cond_1ff

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1ff

    .line 616
    :cond_1ec
    if-nez v7, :cond_1f3

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_1f3
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_1ff
    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_201
    .catchall {:try_start_b2 .. :try_end_201} :catchall_37c

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32d

    if-nez v7, :cond_20e

    if-nez v8, :cond_20a

    goto :goto_20e

    :cond_20a
    move-object/from16 v18, v5

    goto/16 :goto_32f

    .line 621
    :cond_20e
    :goto_20e
    nop

    .line 622
    nop

    .line 624
    :try_start_210
    new-instance v15, Landroid/os/DropBoxManager$Entry;

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-wide v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v13, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v17, v23

    move-object/from16 v18, v0

    move-wide/from16 v19, v14

    move-object/from16 v21, v9

    move/from16 v22, v13

    invoke-direct/range {v17 .. v22}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_227
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_227} :catch_2e4
    .catchall {:try_start_210 .. :try_end_227} :catchall_2de

    .line 627
    if-eqz v7, :cond_291

    .line 628
    :try_start_229
    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual/range {v23 .. v23}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_232} :catch_28b
    .catchall {:try_start_229 .. :try_end_232} :catchall_286

    .line 629
    const/16 v13, 0x1000

    :try_start_234
    new-array v13, v13, [C

    .line 630
    const/4 v15, 0x0

    .line 632
    :goto_237
    invoke-virtual {v14, v13}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    .line 633
    if-gtz v0, :cond_24a

    .line 643
    if-nez v15, :cond_244

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_244
    move-object/from16 v18, v5

    move-object/from16 v13, v23

    goto/16 :goto_2ce

    .line 634
    :cond_24a
    const/4 v15, 0x0

    invoke-virtual {v4, v13, v15, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 635
    add-int/lit8 v0, v0, -0x1

    aget-char v0, v13, v0

    const/16 v15, 0xa

    if-ne v0, v15, :cond_258

    const/4 v15, 0x1

    goto :goto_259

    :cond_258
    const/4 v15, 0x0

    .line 638
    :goto_259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0
    :try_end_25d
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_25d} :catch_27d
    .catchall {:try_start_234 .. :try_end_25d} :catchall_275

    move-object/from16 v18, v5

    const/high16 v5, 0x10000

    if-le v0, v5, :cond_271

    .line 639
    :try_start_263
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 640
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_26e
    .catch Ljava/io/IOException; {:try_start_263 .. :try_end_26e} :catch_26f
    .catchall {:try_start_263 .. :try_end_26e} :catchall_275

    goto :goto_272

    .line 656
    :catch_26f
    move-exception v0

    goto :goto_280

    .line 638
    :cond_271
    const/4 v5, 0x0

    .line 642
    :goto_272
    move-object/from16 v5, v18

    goto :goto_237

    .line 660
    :catchall_275
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v14

    move-object/from16 v14, v23

    goto/16 :goto_320

    .line 656
    :catch_27d
    move-exception v0

    move-object/from16 v18, v5

    :goto_280
    move-object/from16 v16, v14

    move-object/from16 v14, v23

    goto/16 :goto_2ea

    .line 660
    :catchall_286
    move-exception v0

    move-object v2, v0

    move-object/from16 v14, v23

    goto :goto_2e1

    .line 656
    :catch_28b
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v14, v23

    goto :goto_2e8

    .line 645
    :cond_291
    move-object/from16 v18, v5

    const/4 v5, 0x0

    const/16 v0, 0x46

    move-object/from16 v13, v23

    :try_start_298
    invoke-virtual {v13, v0}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v14

    .line 646
    const-string v15, "    "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    if-nez v14, :cond_2a9

    .line 648
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c8

    .line 650
    :cond_2a9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v15, v0, :cond_2b1

    const/4 v0, 0x1

    goto :goto_2b2

    :cond_2b1
    move v0, v5

    .line 651
    :goto_2b2
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2f

    const/16 v5, 0xa

    invoke-virtual {v14, v5, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    if-eqz v0, :cond_2c8

    const-string v0, " ..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_2c8
    :goto_2c8
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_298 .. :try_end_2cd} :catch_2db
    .catchall {:try_start_298 .. :try_end_2cd} :catchall_2d7

    const/4 v14, 0x0

    .line 660
    :goto_2ce
    :try_start_2ce
    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2d1
    .catchall {:try_start_2ce .. :try_end_2d1} :catchall_37c

    .line 661
    if-eqz v14, :cond_32f

    .line 663
    :try_start_2d3
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_2d6
    .catch Ljava/io/IOException; {:try_start_2d3 .. :try_end_2d6} :catch_31c
    .catchall {:try_start_2d3 .. :try_end_2d6} :catchall_37c

    goto :goto_31b

    .line 660
    :catchall_2d7
    move-exception v0

    move-object v2, v0

    move-object v14, v13

    goto :goto_2e1

    .line 656
    :catch_2db
    move-exception v0

    move-object v14, v13

    goto :goto_2e8

    .line 660
    :catchall_2de
    move-exception v0

    move-object v2, v0

    const/4 v14, 0x0

    :goto_2e1
    const/16 v16, 0x0

    goto :goto_320

    .line 656
    :catch_2e4
    move-exception v0

    move-object/from16 v18, v5

    const/4 v14, 0x0

    :goto_2e8
    const/16 v16, 0x0

    .line 657
    :goto_2ea
    :try_start_2ea
    const-string v5, "*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v5, "DropBoxManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t read: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_311
    .catchall {:try_start_2ea .. :try_end_311} :catchall_31e

    .line 660
    if-eqz v14, :cond_316

    :try_start_313
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_316
    .catchall {:try_start_313 .. :try_end_316} :catchall_37c

    .line 661
    :cond_316
    if-eqz v16, :cond_32f

    .line 663
    :try_start_318
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_31b
    .catch Ljava/io/IOException; {:try_start_318 .. :try_end_31b} :catch_31c
    .catchall {:try_start_318 .. :try_end_31b} :catchall_37c

    .line 665
    :goto_31b
    goto :goto_32f

    .line 664
    :catch_31c
    move-exception v0

    goto :goto_31b

    .line 660
    :catchall_31e
    move-exception v0

    move-object v2, v0

    :goto_320
    if-eqz v14, :cond_325

    :try_start_322
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_325
    .catchall {:try_start_322 .. :try_end_325} :catchall_37c

    .line 661
    :cond_325
    if-eqz v16, :cond_32c

    .line 663
    :try_start_327
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_32a
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_32a} :catch_32b
    .catchall {:try_start_327 .. :try_end_32a} :catchall_37c

    .line 665
    goto :goto_32c

    .line 664
    :catch_32b
    move-exception v0

    .line 665
    :cond_32c
    :goto_32c
    :try_start_32c
    throw v2

    .line 620
    :cond_32d
    move-object/from16 v18, v5

    .line 670
    :cond_32f
    :goto_32f
    if-eqz v7, :cond_336

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_336
    nop

    .line 587
    :goto_337
    move v0, v6

    move-object/from16 v5, v18

    goto/16 :goto_134

    .line 673
    :cond_33c
    if-nez v0, :cond_343

    const-string v0, "(No entries found.)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_343
    if-eqz v3, :cond_348

    array-length v0, v3

    if-nez v0, :cond_354

    .line 676
    :cond_348
    if-nez v7, :cond_34f

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_34f
    const-string v0, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_354
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_35b
    .catchall {:try_start_32c .. :try_end_35b} :catchall_37c

    .line 682
    monitor-exit p0

    return-void

    .line 540
    :catch_35d
    move-exception v0

    move-object v3, v0

    .line 541
    :try_start_35f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    const-string v0, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37a
    .catchall {:try_start_35f .. :try_end_37a} :catchall_37c

    .line 543
    monitor-exit p0

    return-void

    .line 535
    :catchall_37c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .registers 12

    monitor-enter p0

    .line 487
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;)Z

    move-result p4
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_90

    const/4 v0, 0x0

    if-nez p4, :cond_e

    .line 488
    monitor-exit p0

    return-object v0

    .line 492
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_86
    .catchall {:try_start_e .. :try_end_11} :catchall_90

    .line 496
    nop

    .line 498
    if-nez p1, :cond_17

    :try_start_14
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_1f

    :cond_17
    iget-object p4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_90

    .line 499
    :goto_1f
    if-nez p1, :cond_23

    monitor-exit p0

    return-object v0

    .line 501
    :cond_23
    :try_start_23
    iget-object p1, p1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance p4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    invoke-direct {p4, p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {p1, p4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 502
    iget-object p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez p3, :cond_46

    goto :goto_35

    .line 503
    :cond_46
    iget p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_57

    .line 504
    new-instance p1, Landroid/os/DropBoxManager$Entry;

    iget-object p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {p1, p3, v0, v1}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_90

    monitor-exit p0

    return-object p1

    .line 506
    :cond_57
    :try_start_57
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p3
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_90

    .line 508
    :try_start_5d
    new-instance p4, Landroid/os/DropBoxManager$Entry;

    iget-object v2, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v6, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v1, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6a} :catch_6c
    .catchall {:try_start_5d .. :try_end_6a} :catchall_90

    monitor-exit p0

    return-object p4

    .line 510
    :catch_6c
    move-exception p2

    .line 511
    :try_start_6d
    const-string p4, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_90

    .line 514
    goto :goto_35

    .line 516
    :cond_84
    monitor-exit p0

    return-object v0

    .line 493
    :catch_86
    move-exception p1

    .line 494
    :try_start_87
    const-string p2, "DropBoxManagerService"

    const-string p3, "Can\'t init"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_90

    .line 495
    monitor-exit p0

    return-object v0

    .line 486
    :catchall_90
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    :try_start_4
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_27

    .line 462
    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    return p1

    .line 462
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 333
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto :goto_35

    .line 352
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_35

    .line 335
    :cond_d
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/DropBoxManagerService$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 348
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    .line 349
    nop

    .line 355
    :goto_35
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    const-string v1, "dropbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 329
    return-void
.end method
