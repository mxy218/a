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
    .param p1, "context"  # Landroid/content/Context;

    .line 309
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "path"  # Ljava/io/File;
    .param p3, "looper"  # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 104
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 106
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 107
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 111
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 113
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 114
    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 116
    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 124
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 322
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 323
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 324
    new-instance v0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 325
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"  # J

    .line 80
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;

    .line 80
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"  # J

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/DropBoxManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/DropBoxManagerService;

    .line 80
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method private declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"  # Ljava/lang/String;

    monitor-enter p0

    .line 528
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 529
    monitor-exit p0

    return-void

    .line 527
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1  # "tag":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkPermission(ILjava/lang/String;)Z
    .registers 7
    .param p1, "callingUid"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 472
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DropBoxManagerService"

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 477
    const/16 v2, 0x2b

    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_25

    .line 485
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return v2

    .line 479
    :cond_2f
    return v2
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 32
    .param p1, "temp"  # Ljava/io/File;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 960
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 966
    .local v2, "t":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 967
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v4, 0x0

    .line 968
    .local v4, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 969
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    .line 970
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 973
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_2e
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_4c

    .line 974
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 977
    :cond_4c
    if-eqz v4, :cond_c0

    .line 978
    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    .end local v2  # "t":J
    .local v13, "t":J
    :goto_51
    if-ge v8, v5, :cond_bd

    aget-object v2, v4, v8

    .line 979
    .local v2, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 980
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 981
    .local v3, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v3, :cond_79

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 982
    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 984
    :cond_79
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a4

    .line 985
    new-instance v15, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    .end local v13  # "t":J
    .local v17, "t":J
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    move-object/from16 v19, v0

    move-object v0, v15

    .end local v0  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v19, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move v15, v7

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_b7

    .line 988
    .end local v17  # "t":J
    .end local v19  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v13  # "t":J
    :cond_a4
    move-object/from16 v19, v0

    .end local v0  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    .end local v13  # "t":J
    .local v11, "t":J
    invoke-direct {v0, v6, v7, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v13, v11

    .line 978
    .end local v2  # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3  # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v11  # "t":J
    .restart local v13  # "t":J
    :goto_b7
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_51

    .end local v19  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :cond_bd
    move-object/from16 v19, v0

    .end local v0  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    goto :goto_c3

    .line 977
    .end local v13  # "t":J
    .end local v19  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v2, "t":J
    :cond_c0
    move-object/from16 v19, v0

    .end local v0  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move-wide v13, v2

    .line 993
    .end local v2  # "t":J
    .restart local v13  # "t":J
    :goto_c3
    if-nez p1, :cond_d2

    .line 994
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_ee

    .line 996
    :cond_d2
    move-object/from16 v3, p2

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v5, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    move-object/from16 v22, v2

    move-object/from16 v23, p2

    move-wide/from16 v24, v13

    move/from16 v26, p3

    move/from16 v27, v5

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_f0

    .line 998
    :goto_ee
    monitor-exit p0

    return-wide v13

    .line 959
    .end local v4  # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13  # "t":J
    .end local v19  # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local p1  # "temp":Ljava/io/File;
    .end local p2  # "tag":Ljava/lang/String;
    .end local p3  # "flags":I
    :catchall_f0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5
    .param p1, "entry"  # Lcom/android/server/DropBoxManagerService$EntryFile;

    monitor-enter p0

    .line 941
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 942
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 947
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_45

    .line 948
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 949
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_39

    .line 950
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    move-object v0, v1

    .line 951
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_39
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 954
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 956
    .end local v0  # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_45
    monitor-exit p0

    return-void

    .line 940
    .end local p1  # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLowPriorityResourceConfigs()V
    .registers 6

    .line 1103
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1106
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "lowPrioritytags":[Ljava/lang/String;
    array-length v1, v0

    .line 1109
    .local v1, "size":I
    if-nez v1, :cond_20

    .line 1110
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1111
    return-void

    .line 1113
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_34

    .line 1115
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1117
    .end local v2  # "i":I
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

    .line 901
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5f

    .line 902
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 903
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

    .line 906
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 907
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_44} :catch_45
    .catchall {:try_start_2f .. :try_end_44} :catchall_d4

    .line 910
    goto :goto_5f

    .line 908
    :catch_45
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_46
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 913
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d2

    .line 914
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 915
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_b9

    .line 917
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 918
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 921
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_d2

    aget-object v3, v0, v2

    .line 922
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 923
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 925
    goto :goto_b6

    .line 928
    :cond_a6
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 930
    .local v4, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 933
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 921
    .end local v3  # "file":Ljava/io/File;
    .end local v4  # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_b6
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 915
    :cond_b9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d2
    .catchall {:try_start_46 .. :try_end_d2} :catchall_d4

    .line 937
    .end local v0  # "files":[Ljava/io/File;
    :cond_d2
    monitor-exit p0

    return-void

    .line 900
    :catchall_d4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"  # Ljava/lang/String;

    monitor-enter p0

    .line 532
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 533
    monitor-exit p0

    return-void

    .line 531
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1  # "tag":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized restoreDefaults()V
    .registers 2

    monitor-enter p0

    .line 536
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 537
    monitor-exit p0

    return-void

    .line 535
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLowPriorityRateLimit(J)V
    .registers 3
    .param p1, "period"  # J

    monitor-enter p0

    .line 524
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 525
    monitor-exit p0

    return-void

    .line 523
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1  # "period":J
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized trimToFit()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1008
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_age_seconds"

    const v3, 0x3f480

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 1010
    .local v2, "ageSeconds":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dropbox_max_files"

    .line 1012
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1013
    const/16 v4, 0x12c

    goto :goto_1e

    :cond_1c
    const/16 v4, 0x3e8

    .line 1010
    :goto_1e
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 1015
    .local v3, "cutoffMillis":J
    :goto_2c
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 1016
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1017
    .local v0, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_53

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_53

    .line 1018
    goto :goto_87

    .line 1021
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_53
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1022
    .local v5, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v5, :cond_6e

    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1023
    :cond_6e
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1024
    :cond_81
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1025
    .end local v0  # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v5  # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_2c

    .line 1032
    :cond_87
    :goto_87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1033
    .local v5, "uptimeMillis":J
    iget-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_102

    .line 1034
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_quota_percent"

    const/16 v8, 0xa

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 1036
    .local v7, "quotaPercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_reserve_percent"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 1038
    .local v8, "reservePercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_quota_kb"

    const/16 v10, 0x1400

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 1041
    .local v9, "quotaKb":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_1de

    move-object v10, v0

    .line 1043
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_ba
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_bf} :catch_e8
    .catchall {:try_start_ba .. :try_end_bf} :catchall_1de

    .line 1046
    nop

    .line 1047
    :try_start_c0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 1048
    .local v0, "available":I
    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    mul-int/2addr v11, v8

    div-int/lit8 v11, v11, 0x64

    sub-int v11, v0, v11

    .line 1049
    .local v11, "nonreserved":I
    mul-int/lit16 v12, v9, 0x400

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v12, v13

    .line 1050
    .local v12, "maximum":I
    const/4 v13, 0x0

    mul-int v14, v11, v7

    div-int/lit8 v14, v14, 0x64

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1051
    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_102

    .line 1044
    .end local v0  # "available":I
    .end local v11  # "nonreserved":I
    .end local v12  # "maximum":I
    :catch_e8
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t restat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1068
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    .end local v7  # "quotaPercent":I
    .end local v8  # "reservePercent":I
    .end local v9  # "quotaKb":I
    .end local v10  # "dirPath":Ljava/lang/String;
    :cond_102
    :goto_102
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v7, :cond_1d2

    .line 1070
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .local v0, "unsqueezed":I
    const/4 v7, 0x0

    .line 1071
    .local v7, "squeezed":I
    new-instance v8, Ljava/util/TreeSet;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1072
    .local v8, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0  # "unsqueezed":I
    .local v10, "unsqueezed":I
    :goto_11f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1073
    .local v0, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v7, :cond_136

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v12, v10

    div-int/2addr v12, v7

    if-gt v11, v12, :cond_136

    .line 1074
    goto :goto_13d

    .line 1076
    :cond_136
    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v10, v11

    .line 1077
    nop

    .end local v0  # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    add-int/lit8 v7, v7, 0x1

    .line 1078
    goto :goto_11f

    .line 1079
    :cond_13d
    :goto_13d
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v10

    div-int/2addr v0, v7

    move v9, v0

    .line 1082
    .local v9, "tagQuota":I
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_146
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cd

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v12, v0

    .line 1083
    .local v12, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v13, :cond_161

    move/from16 v16, v2

    move-wide/from16 v17, v3

    goto/16 :goto_1d6

    .line 1084
    :cond_161
    :goto_161
    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v9, :cond_1c3

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c3

    .line 1085
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v13, v0

    .line 1086
    .local v13, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v14

    iput v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1087
    :cond_185
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v14, v15

    iput v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_198
    .catchall {:try_start_c0 .. :try_end_198} :catchall_1de

    .line 1090
    :cond_198
    :try_start_198
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1091
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1a3} :catch_1b2
    .catchall {:try_start_198 .. :try_end_1a3} :catchall_1de

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2  # "ageSeconds":I
    .end local v3  # "cutoffMillis":J
    .local v16, "ageSeconds":I
    .local v17, "cutoffMillis":J
    :try_start_1a7
    iget-wide v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v14, v15, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1af} :catch_1b0
    .catchall {:try_start_1a7 .. :try_end_1af} :catchall_1de

    .line 1094
    goto :goto_1be

    .line 1092
    :catch_1b0
    move-exception v0

    goto :goto_1b7

    .end local v16  # "ageSeconds":I
    .end local v17  # "cutoffMillis":J
    .restart local v2  # "ageSeconds":I
    .restart local v3  # "cutoffMillis":J
    :catch_1b2
    move-exception v0

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1093
    .end local v2  # "ageSeconds":I
    .end local v3  # "cutoffMillis":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16  # "ageSeconds":I
    .restart local v17  # "cutoffMillis":J
    :goto_1b7
    :try_start_1b7
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t write tombstone file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    .end local v0  # "e":Ljava/io/IOException;
    .end local v13  # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :goto_1be
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto :goto_161

    .line 1084
    .end local v16  # "ageSeconds":I
    .end local v17  # "cutoffMillis":J
    .restart local v2  # "ageSeconds":I
    .restart local v3  # "cutoffMillis":J
    :cond_1c3
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1096
    .end local v2  # "ageSeconds":I
    .end local v3  # "cutoffMillis":J
    .end local v12  # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v16  # "ageSeconds":I
    .restart local v17  # "cutoffMillis":J
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto/16 :goto_146

    .line 1082
    .end local v16  # "ageSeconds":I
    .end local v17  # "cutoffMillis":J
    .restart local v2  # "ageSeconds":I
    .restart local v3  # "cutoffMillis":J
    :cond_1cd
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2  # "ageSeconds":I
    .end local v3  # "cutoffMillis":J
    .restart local v16  # "ageSeconds":I
    .restart local v17  # "cutoffMillis":J
    goto :goto_1d6

    .line 1068
    .end local v7  # "squeezed":I
    .end local v8  # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v9  # "tagQuota":I
    .end local v10  # "unsqueezed":I
    .end local v16  # "ageSeconds":I
    .end local v17  # "cutoffMillis":J
    .restart local v2  # "ageSeconds":I
    .restart local v3  # "cutoffMillis":J
    :cond_1d2
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1099
    .end local v2  # "ageSeconds":I
    .end local v3  # "cutoffMillis":J
    .restart local v16  # "ageSeconds":I
    .restart local v17  # "cutoffMillis":J
    :goto_1d6
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1da
    .catchall {:try_start_1b7 .. :try_end_1da} :catchall_1de

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    .line 1007
    .end local v5  # "uptimeMillis":J
    .end local v16  # "ageSeconds":I
    .end local v17  # "cutoffMillis":J
    :catchall_1de
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 26
    .param p1, "entry"  # Landroid/os/DropBoxManager$Entry;

    .line 367
    move-object/from16 v1, p0

    const-string v2, "DropBoxManagerService"

    const/4 v3, 0x0

    .line 368
    .local v3, "temp":Ljava/io/File;
    const/4 v4, 0x0

    .line 369
    .local v4, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 370
    .local v5, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "tag":Ljava/lang/String;
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    .line 373
    .local v0, "flags":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isTagEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_179

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 378
    invoke-virtual {v1, v6}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_46} :catch_18d
    .catchall {:try_start_b .. :try_end_46} :catchall_189

    if-nez v7, :cond_57

    .line 453
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 456
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 378
    :cond_56
    return-void

    .line 379
    :cond_57
    :try_start_57
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v7

    .line 380
    .local v7, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 382
    .local v9, "lastTrim":J
    iget v11, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v11, v11, [B

    .line 383
    .local v11, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    move-object v4, v12

    .line 388
    const/4 v12, 0x0

    move v13, v12

    .line 389
    .local v13, "read":I
    :goto_6a
    array-length v14, v11
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6b} :catch_18d
    .catchall {:try_start_57 .. :try_end_6b} :catchall_189

    if-ge v13, v14, :cond_7b

    .line 390
    :try_start_6d
    array-length v14, v11

    sub-int/2addr v14, v13

    invoke-virtual {v4, v11, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_73} :catch_78
    .catchall {:try_start_6d .. :try_end_73} :catchall_1b2

    .line 391
    .local v14, "n":I
    if-gtz v14, :cond_76

    goto :goto_7b

    .line 392
    :cond_76
    add-int/2addr v13, v14

    .line 393
    .end local v14  # "n":I
    goto :goto_6a

    .line 450
    .end local v0  # "flags":I
    .end local v7  # "max":J
    .end local v9  # "lastTrim":J
    .end local v11  # "buffer":[B
    .end local v13  # "read":I
    :catch_78
    move-exception v0

    goto/16 :goto_190

    .line 398
    .restart local v0  # "flags":I
    .restart local v7  # "max":J
    .restart local v9  # "lastTrim":J
    .restart local v11  # "buffer":[B
    .restart local v13  # "read":I
    :cond_7b
    :goto_7b
    :try_start_7b
    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_84} :catch_18d
    .catchall {:try_start_7b .. :try_end_84} :catchall_189

    move-object/from16 v17, v3

    .end local v3  # "temp":Ljava/io/File;
    .local v17, "temp":Ljava/io/File;
    :try_start_86
    const-string v3, "drop"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-wide/from16 v18, v7

    .end local v7  # "max":J
    .local v18, "max":J
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a4} :catch_185
    .catchall {:try_start_86 .. :try_end_a4} :catchall_181

    move-object v3, v14

    .line 399
    .end local v17  # "temp":Ljava/io/File;
    .restart local v3  # "temp":Ljava/io/File;
    :try_start_a5
    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 400
    .local v7, "bufferSize":I
    const/16 v8, 0x1000

    if-le v7, v8, :cond_ad

    const/16 v7, 0x1000

    .line 401
    :cond_ad
    const/16 v8, 0x200

    if-ge v7, v8, :cond_b3

    const/16 v7, 0x200

    .line 402
    :cond_b3
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 403
    .local v8, "foutput":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v5, v12

    .line 404
    array-length v12, v11

    if-ne v13, v12, :cond_cd

    and-int/lit8 v12, v0, 0x4

    if-nez v12, :cond_cd

    .line 405
    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v12, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v12

    .line 406
    or-int/lit8 v0, v0, 0x4

    .line 410
    :cond_cd
    :goto_cd
    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 413
    .local v14, "now":J
    sub-long v16, v14, v9

    const-wide/16 v20, 0x7530

    cmp-long v16, v16, v20

    if-lez v16, :cond_e9

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v16

    .line 415
    .end local v18  # "max":J
    .local v16, "max":J
    move-wide v9, v14

    move-wide/from16 v22, v9

    move-wide/from16 v9, v16

    move-wide/from16 v16, v22

    goto :goto_ed

    .line 413
    .end local v16  # "max":J
    .restart local v18  # "max":J
    :cond_e9
    move-wide/from16 v16, v9

    move-wide/from16 v9, v18

    .line 418
    .end local v18  # "max":J
    .local v9, "max":J
    .local v16, "lastTrim":J
    :goto_ed
    invoke-virtual {v4, v11}, Ljava/io/InputStream;->read([B)I

    move-result v18

    move/from16 v13, v18

    .line 419
    if-gtz v13, :cond_fd

    .line 420
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 421
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 422
    const/4 v5, 0x0

    goto :goto_100

    .line 424
    :cond_fd
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 427
    :goto_100
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 428
    .local v18, "len":J
    cmp-long v20, v18, v9

    if-lez v20, :cond_13e

    .line 429
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v7

    .end local v7  # "bufferSize":I
    .local v20, "bufferSize":I
    const-string v7, "Dropping: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v8

    .end local v8  # "foutput":Ljava/io/FileOutputStream;
    .local v21, "foutput":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " > "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes)"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 432
    const/4 v3, 0x0

    .line 433
    goto :goto_144

    .line 428
    .end local v20  # "bufferSize":I
    .end local v21  # "foutput":Ljava/io/FileOutputStream;
    .restart local v7  # "bufferSize":I
    .restart local v8  # "foutput":Ljava/io/FileOutputStream;
    :cond_13e
    move/from16 v20, v7

    move-object/from16 v21, v8

    .line 435
    .end local v7  # "bufferSize":I
    .end local v8  # "foutput":Ljava/io/FileOutputStream;
    .end local v14  # "now":J
    .end local v18  # "len":J
    .restart local v20  # "bufferSize":I
    .restart local v21  # "foutput":Ljava/io/FileOutputStream;
    if-gtz v13, :cond_16f

    .line 437
    :goto_144
    invoke-direct {v1, v3, v6, v0}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v7

    .line 438
    .local v7, "time":J
    const/4 v3, 0x0

    .line 444
    iget-object v12, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz v12, :cond_15b

    iget-object v12, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15b

    .line 446
    iget-object v12, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v12, v6, v7, v8}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_160

    .line 448
    :cond_15b
    iget-object v12, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v12, v6, v7, v8}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_160} :catch_78
    .catchall {:try_start_a5 .. :try_end_160} :catchall_1b2

    .line 453
    .end local v0  # "flags":I
    .end local v7  # "time":J
    .end local v9  # "max":J
    .end local v11  # "buffer":[B
    .end local v13  # "read":I
    .end local v16  # "lastTrim":J
    .end local v20  # "bufferSize":I
    .end local v21  # "foutput":Ljava/io/FileOutputStream;
    :goto_160
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 456
    if-eqz v3, :cond_1b1

    :goto_16b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1b1

    .line 435
    .restart local v0  # "flags":I
    .restart local v9  # "max":J
    .restart local v11  # "buffer":[B
    .restart local v13  # "read":I
    .restart local v16  # "lastTrim":J
    .restart local v20  # "bufferSize":I
    .restart local v21  # "foutput":Ljava/io/FileOutputStream;
    :cond_16f
    move-wide/from16 v18, v9

    move-wide/from16 v9, v16

    move/from16 v7, v20

    move-object/from16 v8, v21

    goto/16 :goto_cd

    .line 375
    .end local v9  # "max":J
    .end local v11  # "buffer":[B
    .end local v13  # "read":I
    .end local v16  # "lastTrim":J
    .end local v20  # "bufferSize":I
    .end local v21  # "foutput":Ljava/io/FileOutputStream;
    :cond_179
    move-object/from16 v17, v3

    .end local v3  # "temp":Ljava/io/File;
    .restart local v17  # "temp":Ljava/io/File;
    :try_start_17b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v4  # "input":Ljava/io/InputStream;
    .end local v5  # "output":Ljava/io/OutputStream;
    .end local v6  # "tag":Ljava/lang/String;
    .end local v17  # "temp":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1  # "entry":Landroid/os/DropBoxManager$Entry;
    throw v3
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_181} :catch_185
    .catchall {:try_start_17b .. :try_end_181} :catchall_181

    .line 453
    .end local v0  # "flags":I
    .restart local v4  # "input":Ljava/io/InputStream;
    .restart local v5  # "output":Ljava/io/OutputStream;
    .restart local v6  # "tag":Ljava/lang/String;
    .restart local v17  # "temp":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1  # "entry":Landroid/os/DropBoxManager$Entry;
    :catchall_181
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_1b3

    .line 450
    :catch_185
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_190

    .line 453
    .end local v17  # "temp":Ljava/io/File;
    .restart local v3  # "temp":Ljava/io/File;
    :catchall_189
    move-exception v0

    move-object/from16 v17, v3

    .end local v3  # "temp":Ljava/io/File;
    .restart local v17  # "temp":Ljava/io/File;
    goto :goto_1b3

    .line 450
    .end local v17  # "temp":Ljava/io/File;
    .restart local v3  # "temp":Ljava/io/File;
    :catch_18d
    move-exception v0

    move-object/from16 v17, v3

    .line 451
    .local v0, "e":Ljava/io/IOException;
    :goto_190
    :try_start_190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a4
    .catchall {:try_start_190 .. :try_end_1a4} :catchall_1b2

    .line 453
    nop

    .end local v0  # "e":Ljava/io/IOException;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 456
    if-eqz v3, :cond_1b1

    goto :goto_16b

    .line 458
    :cond_1b1
    :goto_1b1
    return-void

    .line 453
    :catchall_1b2
    move-exception v0

    :goto_1b3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 456
    if-eqz v3, :cond_1c1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1c1
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 34
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 540
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_407

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 543
    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3e7
    .catchall {:try_start_15 .. :try_end_18} :catchall_407

    .line 548
    nop

    .line 552
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 553
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "doPrint":Z
    const/4 v5, 0x0

    .line 554
    .local v5, "doFile":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move v8, v5

    move v5, v0

    .end local v0  # "doPrint":Z
    .local v5, "doPrint":Z
    .local v7, "i":I
    .local v8, "doFile":Z
    :goto_29
    if-eqz v3, :cond_b7

    array-length v0, v3

    if-ge v7, v0, :cond_b7

    .line 556
    aget-object v0, v3, v7

    const-string v9, "-p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    aget-object v0, v3, v7

    const-string v9, "--print"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_b1

    .line 558
    :cond_44
    aget-object v0, v3, v7

    const-string v9, "-f"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    aget-object v0, v3, v7

    const-string v9, "--file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_ae

    .line 560
    :cond_59
    aget-object v0, v3, v7

    const-string v9, "-h"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    aget-object v0, v3, v7

    const-string v9, "--help"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_8e

    .line 568
    :cond_6e
    aget-object v0, v3, v7

    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 569
    const-string v0, "Unknown argument: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 571
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_88
    aget-object v0, v3, v7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 561
    :cond_8e
    :goto_8e
    const-string v0, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v0, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v0, "    -h|--help: print this help"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v0, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string v0, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v0, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_19 .. :try_end_ac} :catchall_407

    .line 567
    monitor-exit p0

    return-void

    .line 559
    :cond_ae
    :goto_ae
    const/4 v0, 0x1

    move v8, v0

    .end local v8  # "doFile":Z
    .local v0, "doFile":Z
    goto :goto_b3

    .line 557
    .end local v0  # "doFile":Z
    .restart local v8  # "doFile":Z
    :cond_b1
    :goto_b1
    const/4 v0, 0x1

    move v5, v0

    .line 555
    :goto_b3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_29

    .line 575
    .end local v7  # "i":I
    :cond_b7
    :try_start_b7
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v0, "Low priority rate limit period: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-wide v9, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v0, "Low priority tags: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_122

    .line 583
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_108
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "a":Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    .line 585
    .end local v7  # "a":Ljava/lang/String;
    :cond_11d
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_122
    const/4 v0, 0x0

    .local v0, "numFound":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 589
    .local v7, "numArgs":I
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 590
    .local v9, "time":Landroid/text/format/Time;
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v10, v10, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_139
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3bf

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 592
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v12, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 593
    const-string v12, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 594
    .local v12, "date":Ljava/lang/String;
    const/4 v13, 0x1

    .line 595
    .local v13, "match":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_152
    const/16 v16, 0x1

    if-ge v14, v7, :cond_17f

    if-eqz v13, :cond_17f

    .line 596
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 597
    .local v18, "arg":Ljava/lang/String;
    move-object/from16 v15, v18

    .end local v18  # "arg":Ljava/lang/String;
    .local v15, "arg":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_176

    move-object/from16 v18, v6

    .end local v6  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_173

    goto :goto_178

    :cond_173
    const/16 v16, 0x0

    goto :goto_178

    .end local v18  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_176
    move-object/from16 v18, v6

    .end local v6  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_178
    move/from16 v13, v16

    .line 595
    .end local v15  # "arg":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v18

    goto :goto_152

    .end local v18  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_17f
    move-object/from16 v18, v6

    .line 599
    .end local v6  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14  # "i":I
    .restart local v18  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v13, :cond_186

    move-object/from16 v6, v18

    goto :goto_139

    .line 601
    :cond_186
    add-int/lit8 v6, v0, 0x1

    .line 602
    .end local v0  # "numFound":I
    .local v6, "numFound":I
    if-eqz v5, :cond_18f

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_18f
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_19e

    const-string v0, "(no tag)"

    goto :goto_1a0

    :cond_19e
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_1a0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 606
    .local v14, "file":Ljava/io/File;
    if-nez v14, :cond_1bc

    .line 607
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    move/from16 v25, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    goto/16 :goto_3b2

    .line 609
    :cond_1bc
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d2

    .line 610
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    move/from16 v25, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    goto/16 :goto_3b2

    .line 613
    :cond_1d2
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1e2

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_1e2
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1ec

    const-string/jumbo v0, "text"

    goto :goto_1ee

    :cond_1ec
    const-string v0, "data"

    :goto_1ee
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v6

    move v15, v7

    .end local v6  # "numFound":I
    .end local v7  # "numArgs":I
    .local v15, "numArgs":I
    .local v25, "numFound":I
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    if-nez v8, :cond_20f

    if-eqz v5, :cond_222

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_222

    .line 620
    :cond_20f
    if-nez v5, :cond_216

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    :cond_216
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_222
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_224
    .catchall {:try_start_b7 .. :try_end_224} :catchall_407

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3a4

    if-nez v5, :cond_235

    if-nez v8, :cond_22d

    goto :goto_235

    :cond_22d
    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    goto/16 :goto_3aa

    .line 625
    :cond_235
    :goto_235
    const/4 v6, 0x0

    .line 626
    .local v6, "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v7, 0x0

    .line 628
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_237
    new-instance v0, Landroid/os/DropBoxManager$Entry;
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_239} :catch_351
    .catchall {:try_start_237 .. :try_end_239} :catchall_346

    move-object/from16 v26, v6

    .end local v6  # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v26, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_23b
    iget-object v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_23d
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_23d} :catch_33c
    .catchall {:try_start_23b .. :try_end_23d} :catchall_333

    move-object/from16 v28, v7

    move/from16 v27, v8

    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .end local v8  # "doFile":Z
    .local v27, "doFile":Z
    .local v28, "isr":Ljava/io/InputStreamReader;
    :try_start_241
    iget-wide v7, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_243
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_243} :catch_32b
    .catchall {:try_start_241 .. :try_end_243} :catchall_325

    move-object/from16 v29, v9

    .end local v9  # "time":Landroid/text/format/Time;
    .local v29, "time":Landroid/text/format/Time;
    :try_start_245
    iget v9, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    move-object/from16 v23, v14

    move/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_254} :catch_31f
    .catchall {:try_start_245 .. :try_end_254} :catchall_31b

    move-object v6, v0

    .line 631
    .end local v26  # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v6  # "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v5, :cond_2c4

    .line 632
    :try_start_257
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_260
    .catch Ljava/io/IOException; {:try_start_257 .. :try_end_260} :catch_317
    .catchall {:try_start_257 .. :try_end_260} :catchall_311

    .line 633
    .end local v28  # "isr":Ljava/io/InputStreamReader;
    .restart local v7  # "isr":Ljava/io/InputStreamReader;
    const/16 v8, 0x1000

    :try_start_262
    new-array v8, v8, [C

    .line 634
    .local v8, "buf":[C
    const/4 v9, 0x0

    move/from16 v19, v9

    .line 636
    .local v19, "newline":Z
    :goto_267
    invoke-virtual {v7, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9
    :try_end_26b
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_26b} :catch_2bf
    .catchall {:try_start_262 .. :try_end_26b} :catchall_2b5

    .line 637
    .local v9, "n":I
    if-gtz v9, :cond_27c

    .line 647
    .end local v9  # "n":I
    if-nez v19, :cond_278

    :try_start_26f
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_274} :catch_275
    .catchall {:try_start_26f .. :try_end_274} :catchall_391

    goto :goto_278

    .line 660
    .end local v8  # "buf":[C
    .end local v19  # "newline":Z
    :catch_275
    move-exception v0

    goto/16 :goto_35a

    .line 648
    :cond_278
    :goto_278
    move-object/from16 v28, v7

    goto/16 :goto_2ff

    .line 638
    .restart local v8  # "buf":[C
    .restart local v9  # "n":I
    .restart local v19  # "newline":Z
    :cond_27c
    const/4 v0, 0x0

    :try_start_27d
    invoke-virtual {v4, v8, v0, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 639
    add-int/lit8 v0, v9, -0x1

    aget-char v0, v8, v0
    :try_end_284
    .catch Ljava/io/IOException; {:try_start_27d .. :try_end_284} :catch_2bf
    .catchall {:try_start_27d .. :try_end_284} :catchall_2b5

    move-object/from16 v21, v7

    const/16 v7, 0xa

    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .local v21, "isr":Ljava/io/InputStreamReader;
    if-ne v0, v7, :cond_28d

    move/from16 v0, v16

    goto :goto_28e

    :cond_28d
    const/4 v0, 0x0

    :goto_28e
    move/from16 v19, v0

    .line 642
    :try_start_290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/high16 v7, 0x10000

    if-le v0, v7, :cond_2a4

    .line 643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 644
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2a3
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_2a3} :catch_2b0
    .catchall {:try_start_290 .. :try_end_2a3} :catchall_2a8

    goto :goto_2a5

    .line 642
    :cond_2a4
    const/4 v0, 0x0

    .line 646
    .end local v9  # "n":I
    :goto_2a5
    move-object/from16 v7, v21

    goto :goto_267

    .line 664
    .end local v8  # "buf":[C
    .end local v19  # "newline":Z
    :catchall_2a8
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v21

    move-object v6, v0

    goto/16 :goto_397

    .line 660
    :catch_2b0
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_35a

    .line 664
    .end local v21  # "isr":Ljava/io/InputStreamReader;
    .restart local v7  # "isr":Ljava/io/InputStreamReader;
    :catchall_2b5
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v26, v6

    move-object/from16 v28, v21

    move-object v6, v0

    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .restart local v21  # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_397

    .line 660
    .end local v21  # "isr":Ljava/io/InputStreamReader;
    .restart local v7  # "isr":Ljava/io/InputStreamReader;
    :catch_2bf
    move-exception v0

    move-object/from16 v21, v7

    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .restart local v21  # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_35a

    .line 649
    .end local v21  # "isr":Ljava/io/InputStreamReader;
    .restart local v28  # "isr":Ljava/io/InputStreamReader;
    :cond_2c4
    const/4 v0, 0x0

    const/16 v7, 0x46

    :try_start_2c7
    invoke-virtual {v6, v7}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 650
    .local v8, "text":Ljava/lang/String;
    const-string v9, "    "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    if-nez v8, :cond_2da

    .line 652
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    goto :goto_2fa

    .line 654
    :cond_2da
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v7, :cond_2e2

    move/from16 v0, v16

    .line 655
    .local v0, "truncated":Z
    :cond_2e2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2f

    move-object/from16 v16, v8

    const/16 v8, 0xa

    .end local v8  # "text":Ljava/lang/String;
    .local v16, "text":Ljava/lang/String;
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    if-eqz v0, :cond_2fa

    const-string v7, " ..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .end local v0  # "truncated":Z
    :cond_2fa
    :goto_2fa
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2ff
    .catch Ljava/io/IOException; {:try_start_2c7 .. :try_end_2ff} :catch_317
    .catchall {:try_start_2c7 .. :try_end_2ff} :catchall_311

    .line 664
    .end local v16  # "text":Ljava/lang/String;
    :goto_2ff
    :try_start_2ff
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_302
    .catchall {:try_start_2ff .. :try_end_302} :catchall_407

    .line 665
    if-eqz v28, :cond_30d

    .line 667
    :try_start_304
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStreamReader;->close()V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_307} :catch_30b
    .catchall {:try_start_304 .. :try_end_307} :catchall_407

    .line 669
    :goto_307
    move-object/from16 v16, v10

    goto/16 :goto_3aa

    .line 668
    :catch_30b
    move-exception v0

    goto :goto_307

    .line 665
    :cond_30d
    move-object/from16 v16, v10

    goto/16 :goto_3aa

    .line 664
    :catchall_311
    move-exception v0

    move-object/from16 v26, v6

    move-object v6, v0

    goto/16 :goto_397

    .line 660
    :catch_317
    move-exception v0

    move-object/from16 v7, v28

    goto :goto_35a

    .line 664
    .end local v6  # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v26  # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_31b
    move-exception v0

    move-object v6, v0

    goto/16 :goto_397

    .line 660
    :catch_31f
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v7, v28

    goto :goto_35a

    .line 664
    .end local v29  # "time":Landroid/text/format/Time;
    .local v9, "time":Landroid/text/format/Time;
    :catchall_325
    move-exception v0

    move-object/from16 v29, v9

    move-object v6, v0

    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v29  # "time":Landroid/text/format/Time;
    goto/16 :goto_397

    .line 660
    .end local v29  # "time":Landroid/text/format/Time;
    .restart local v9  # "time":Landroid/text/format/Time;
    :catch_32b
    move-exception v0

    move-object/from16 v29, v9

    move-object/from16 v6, v26

    move-object/from16 v7, v28

    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v29  # "time":Landroid/text/format/Time;
    goto :goto_35a

    .line 664
    .end local v27  # "doFile":Z
    .end local v28  # "isr":Ljava/io/InputStreamReader;
    .end local v29  # "time":Landroid/text/format/Time;
    .restart local v7  # "isr":Ljava/io/InputStreamReader;
    .local v8, "doFile":Z
    .restart local v9  # "time":Landroid/text/format/Time;
    :catchall_333
    move-exception v0

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object v6, v0

    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .end local v8  # "doFile":Z
    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v27  # "doFile":Z
    .restart local v28  # "isr":Ljava/io/InputStreamReader;
    .restart local v29  # "time":Landroid/text/format/Time;
    goto :goto_397

    .line 660
    .end local v27  # "doFile":Z
    .end local v28  # "isr":Ljava/io/InputStreamReader;
    .end local v29  # "time":Landroid/text/format/Time;
    .restart local v7  # "isr":Ljava/io/InputStreamReader;
    .restart local v8  # "doFile":Z
    .restart local v9  # "time":Landroid/text/format/Time;
    :catch_33c
    move-exception v0

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v6, v26

    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .end local v8  # "doFile":Z
    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v27  # "doFile":Z
    .restart local v28  # "isr":Ljava/io/InputStreamReader;
    .restart local v29  # "time":Landroid/text/format/Time;
    goto :goto_35a

    .line 664
    .end local v26  # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v27  # "doFile":Z
    .end local v28  # "isr":Ljava/io/InputStreamReader;
    .end local v29  # "time":Landroid/text/format/Time;
    .restart local v6  # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v7  # "isr":Ljava/io/InputStreamReader;
    .restart local v8  # "doFile":Z
    .restart local v9  # "time":Landroid/text/format/Time;
    :catchall_346
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object v6, v0

    .end local v6  # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .end local v8  # "doFile":Z
    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v26  # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v27  # "doFile":Z
    .restart local v28  # "isr":Ljava/io/InputStreamReader;
    .restart local v29  # "time":Landroid/text/format/Time;
    goto :goto_397

    .line 660
    .end local v26  # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v27  # "doFile":Z
    .end local v28  # "isr":Ljava/io/InputStreamReader;
    .end local v29  # "time":Landroid/text/format/Time;
    .restart local v6  # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v7  # "isr":Ljava/io/InputStreamReader;
    .restart local v8  # "doFile":Z
    .restart local v9  # "time":Landroid/text/format/Time;
    :catch_351
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    .line 661
    .end local v8  # "doFile":Z
    .end local v9  # "time":Landroid/text/format/Time;
    .local v0, "e":Ljava/io/IOException;
    .restart local v27  # "doFile":Z
    .restart local v29  # "time":Landroid/text/format/Time;
    :goto_35a
    :try_start_35a
    const-string v8, "*** "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v8, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v10

    const-string v10, "Can\'t read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_383
    .catchall {:try_start_35a .. :try_end_383} :catchall_391

    .line 664
    nop

    .end local v0  # "e":Ljava/io/IOException;
    if-eqz v6, :cond_389

    :try_start_386
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_389
    .catchall {:try_start_386 .. :try_end_389} :catchall_407

    .line 665
    :cond_389
    if-eqz v7, :cond_3aa

    .line 667
    :try_start_38b
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_38e
    .catch Ljava/io/IOException; {:try_start_38b .. :try_end_38e} :catch_38f
    .catchall {:try_start_38b .. :try_end_38e} :catchall_407

    .line 669
    :goto_38e
    goto :goto_3aa

    .line 668
    :catch_38f
    move-exception v0

    goto :goto_38e

    .line 664
    :catchall_391
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move-object v6, v0

    .end local v6  # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v7  # "isr":Ljava/io/InputStreamReader;
    .restart local v26  # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v28  # "isr":Ljava/io/InputStreamReader;
    :goto_397
    if-eqz v26, :cond_39c

    :try_start_399
    invoke-virtual/range {v26 .. v26}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_39c
    .catchall {:try_start_399 .. :try_end_39c} :catchall_407

    .line 665
    :cond_39c
    if-eqz v28, :cond_3a3

    .line 667
    :try_start_39e
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStreamReader;->close()V
    :try_end_3a1
    .catch Ljava/io/IOException; {:try_start_39e .. :try_end_3a1} :catch_3a2
    .catchall {:try_start_39e .. :try_end_3a1} :catchall_407

    .line 669
    goto :goto_3a3

    .line 668
    :catch_3a2
    move-exception v0

    .line 669
    :cond_3a3
    :goto_3a3
    :try_start_3a3
    throw v6

    .line 624
    .end local v26  # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v27  # "doFile":Z
    .end local v28  # "isr":Ljava/io/InputStreamReader;
    .end local v29  # "time":Landroid/text/format/Time;
    .restart local v8  # "doFile":Z
    .restart local v9  # "time":Landroid/text/format/Time;
    :cond_3a4
    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    .line 674
    .end local v8  # "doFile":Z
    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v27  # "doFile":Z
    .restart local v29  # "time":Landroid/text/format/Time;
    :cond_3aa
    :goto_3aa
    if-eqz v5, :cond_3b1

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .end local v11  # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v12  # "date":Ljava/lang/String;
    .end local v13  # "match":Z
    .end local v14  # "file":Ljava/io/File;
    :cond_3b1
    nop

    .line 591
    .end local v15  # "numArgs":I
    .end local v25  # "numFound":I
    .end local v27  # "doFile":Z
    .end local v29  # "time":Landroid/text/format/Time;
    .local v6, "numFound":I
    .local v7, "numArgs":I
    .restart local v8  # "doFile":Z
    .restart local v9  # "time":Landroid/text/format/Time;
    :goto_3b2
    move v7, v15

    move-object/from16 v10, v16

    move-object/from16 v6, v18

    move/from16 v0, v25

    move/from16 v8, v27

    move-object/from16 v9, v29

    .end local v6  # "numFound":I
    .end local v7  # "numArgs":I
    .end local v8  # "doFile":Z
    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v15  # "numArgs":I
    .restart local v25  # "numFound":I
    .restart local v27  # "doFile":Z
    .restart local v29  # "time":Landroid/text/format/Time;
    goto/16 :goto_139

    .line 677
    .end local v15  # "numArgs":I
    .end local v18  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25  # "numFound":I
    .end local v27  # "doFile":Z
    .end local v29  # "time":Landroid/text/format/Time;
    .local v0, "numFound":I
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7  # "numArgs":I
    .restart local v8  # "doFile":Z
    .restart local v9  # "time":Landroid/text/format/Time;
    :cond_3bf
    move-object/from16 v18, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    .end local v6  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7  # "numArgs":I
    .end local v8  # "doFile":Z
    .end local v9  # "time":Landroid/text/format/Time;
    .restart local v15  # "numArgs":I
    .restart local v18  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27  # "doFile":Z
    .restart local v29  # "time":Landroid/text/format/Time;
    if-nez v0, :cond_3cd

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_3cd
    if-eqz v3, :cond_3d2

    array-length v6, v3

    if-nez v6, :cond_3de

    .line 680
    :cond_3d2
    if-nez v5, :cond_3d9

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :cond_3d9
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_3de
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_3e5
    .catchall {:try_start_3a3 .. :try_end_3e5} :catchall_407

    .line 686
    monitor-exit p0

    return-void

    .line 544
    .end local v0  # "numFound":I
    .end local v4  # "out":Ljava/lang/StringBuilder;
    .end local v5  # "doPrint":Z
    .end local v15  # "numArgs":I
    .end local v18  # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27  # "doFile":Z
    .end local v29  # "time":Landroid/text/format/Time;
    :catch_3e7
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 545
    .local v0, "e":Ljava/io/IOException;
    :try_start_3ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_405
    .catchall {:try_start_3ea .. :try_end_405} :catchall_407

    .line 547
    monitor-exit p0

    return-void

    .line 539
    .end local v0  # "e":Ljava/io/IOException;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :catchall_407
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .registers 20
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "millis"  # J
    .param p4, "callingPackage"  # Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 491
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v3, p4

    invoke-direct {p0, v0, v3}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_9c

    const/4 v4, 0x0

    if-nez v0, :cond_13

    .line 492
    monitor-exit p0

    return-object v4

    .line 496
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_90
    .catchall {:try_start_13 .. :try_end_16} :catchall_9c

    .line 500
    nop

    .line 502
    if-nez v2, :cond_1c

    :try_start_19
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_24

    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1c
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_9c

    :goto_24
    move-object v5, v0

    .line 503
    .local v5, "list":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v5, :cond_29

    monitor-exit p0

    return-object v4

    .line 505
    .restart local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_29
    :try_start_29
    iget-object v0, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v7, 0x1

    add-long v7, p2, v7

    invoke-direct {v6, v7, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v7, v0

    .line 506
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_4e

    goto :goto_3c

    .line 507
    :cond_4e
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5f

    .line 508
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v8, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v4, v8, v9}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_9c

    monitor-exit p0

    return-object v0

    .line 510
    .end local p0  # "this":Lcom/android/server/DropBoxManagerService;
    :cond_5f
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_9c

    move-object v14, v0

    .line 512
    .local v14, "file":Ljava/io/File;
    :try_start_66
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v9, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v10, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v13, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v8, v0

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_73} :catch_75
    .catchall {:try_start_66 .. :try_end_73} :catchall_9c

    monitor-exit p0

    return-object v0

    .line 514
    :catch_75
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/IOException;
    :try_start_76
    const-string v8, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_9c

    .line 518
    nop

    .end local v0  # "e":Ljava/io/IOException;
    .end local v7  # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14  # "file":Ljava/io/File;
    goto :goto_3c

    .line 520
    :cond_8e
    monitor-exit p0

    return-object v4

    .line 497
    .end local v5  # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_90
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 498
    .restart local v0  # "e":Ljava/io/IOException;
    :try_start_93
    const-string v5, "DropBoxManagerService"

    const-string v6, "Can\'t init"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_9c

    .line 499
    monitor-exit p0

    return-object v4

    .line 490
    .end local v0  # "e":Ljava/io/IOException;
    .end local p1  # "tag":Ljava/lang/String;
    .end local p2  # "millis":J
    .end local p4  # "callingPackage":Ljava/lang/String;
    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "tag"  # Ljava/lang/String;

    .line 461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 463
    .local v0, "token":J
    :try_start_4
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_27

    .line 466
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 463
    return v2

    .line 466
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"  # I

    .line 337
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto :goto_35

    .line 356
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_35

    .line 339
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    .line 353
    nop

    .line 359
    .end local v0  # "filter":Landroid/content/IntentFilter;
    :goto_35
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    const-string v1, "dropbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 333
    return-void
.end method
