.class public Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;,
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;
    }
.end annotation


# static fields
.field public static final BACKUP_VERSION:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CURRENT_VERSION:I = 0x4

.field static final KEEP_BACKUP_DIR:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final MAX_FILES_PER_INTERVAL_TYPE:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RETENTION_LEN_KEY:Ljava/lang/String; = "ro.usagestats.chooser.retention"

.field private static final SELECTION_LOG_RETENTION_LEN:I

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mBackupsDir:Ljava/io/File;

.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mCurrentVersion:I

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateBreadcrumb:Ljava/io/File;

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 333
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    .line 103
    nop

    .line 104
    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    .line 103
    return-void

    nop

    :array_16
    .array-data 4
        0x64
        0x32
        0xc
        0xa
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 145
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 136
    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 137
    new-instance p2, Ljava/io/File;

    const-string/jumbo v0, "version"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 138
    new-instance p2, Ljava/io/File;

    const-string v0, "backups"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 139
    new-instance p2, Ljava/io/File;

    const-string v0, "breadcrumb"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 140
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length p1, p1

    new-array p1, p1, [Landroid/app/usage/TimeSparseArray;

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 141
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 142
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .registers 10

    .line 321
    const-string v0, "\n"

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 322
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 324
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_d
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_19} :catch_3d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_3d

    .line 325
    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 326
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_29

    .line 328
    iput-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 330
    :cond_29
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 331
    iput-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_36

    .line 333
    :cond_31
    :try_start_31
    invoke-static {v2, v4}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_34} :catch_3d
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_3d

    .line 335
    move v3, v5

    goto :goto_3f

    .line 324
    :catchall_36
    move-exception v5

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 333
    :catchall_38
    move-exception v6

    :try_start_39
    invoke-static {v5, v4}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v4

    .line 334
    nop

    .line 337
    :goto_3f
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string v5, "UsageStatsDatabase"

    if-eq v3, v4, :cond_94

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading from version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 341
    :try_start_6b
    invoke-direct {p0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 349
    goto :goto_94

    .line 342
    :catch_6f
    move-exception v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    iput v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 348
    return-void

    .line 351
    :cond_8f
    const-string v4, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_94
    :goto_94
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 358
    :try_start_9c
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a8} :catch_c7
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a8} :catch_c7

    .line 360
    :try_start_a8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 361
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_b8
    .catchall {:try_start_a8 .. :try_end_b8} :catchall_c0

    .line 362
    :try_start_b8
    invoke-static {v2, v4}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_bb} :catch_c7
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_c7

    .line 365
    nop

    .line 366
    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->continueUpgradeLocked(IJ)V

    goto :goto_d3

    .line 358
    :catchall_c0
    move-exception v0

    :try_start_c1
    throw v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    .line 362
    :catchall_c2
    move-exception v1

    :try_start_c3
    invoke-static {v0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_c7} :catch_c7
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c7} :catch_c7

    :catch_c7
    move-exception v0

    .line 363
    const-string v1, "Failed read version upgrade breadcrumb"

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 369
    :cond_d3
    :goto_d3
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v3, v4, :cond_db

    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v3, :cond_100

    .line 370
    :cond_db
    :try_start_db
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e7} :catch_122

    .line 371
    :try_start_e7
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_fc
    .catchall {:try_start_e7 .. :try_end_fc} :catchall_11b

    .line 376
    :try_start_fc
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_122

    .line 379
    nop

    .line 382
    :cond_100
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 384
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 387
    :cond_10d
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 388
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 390
    :cond_11a
    return-void

    .line 370
    :catchall_11b
    move-exception v0

    :try_start_11c
    throw v0
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11d

    .line 376
    :catchall_11d
    move-exception v1

    :try_start_11e
    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_122} :catch_122

    :catch_122
    move-exception v0

    .line 377
    const-string v1, "Failed to write new version"

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private continueUpgradeLocked(IJ)V
    .registers 13

    .line 480
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    const/4 p2, 0x0

    move p3, p2

    :goto_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    if-ge p3, v2, :cond_73

    .line 485
    new-instance v2, Ljava/io/File;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_70

    .line 488
    move v2, p2

    :goto_24
    array-length v3, v1

    if-ge v2, v3, :cond_70

    .line 496
    :try_start_27
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 497
    new-instance v4, Landroid/util/AtomicFile;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v4, v3, p1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 498
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v6, v6, p3

    iget-wide v7, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 499
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 498
    invoke-static {v4, v3, v5}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4f} :catch_50

    .line 503
    goto :goto_6d

    .line 500
    :catch_50
    move-exception v3

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to upgrade backup file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsageStatsDatabase"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 484
    :cond_70
    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    .line 507
    :cond_73
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .registers 6

    .line 1131
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_1c

    .line 1133
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 1134
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1135
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_19

    .line 1137
    :cond_16
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1133
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1141
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1142
    return-void
.end method

.method private static deleteDirectoryContents(Ljava/io/File;)V
    .registers 4

    .line 1124
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1125
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 1126
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1125
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1128
    :cond_10
    return-void
.end method

.method private deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;
    .registers 6

    .line 1110
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1111
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1112
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1114
    :try_start_f
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1115
    invoke-static {p1, v0, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_19

    .line 1119
    goto :goto_22

    .line 1116
    :catch_19
    move-exception p1

    .line 1117
    const-string p2, "UsageStatsDatabase"

    const-string v0, "DeSerializing IntervalStats Failed"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    const/4 v0, 0x0

    .line 1120
    :goto_22
    return-object v0
.end method

.method private doUpgradeLocked(I)V
    .registers 19

    .line 399
    move-object/from16 v1, p0

    const-string v0, "\n"

    const-string v2, "UsageStatsDatabase"

    const/4 v3, 0x0

    const/4 v4, 0x2

    move/from16 v5, p1

    if-ge v5, v4, :cond_2e

    .line 402
    const-string v0, "Deleting all usage stats files"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    move v0, v3

    :goto_12
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v2

    if-ge v0, v4, :cond_117

    .line 404
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 405
    if-eqz v2, :cond_2b

    .line 406
    array-length v4, v2

    move v5, v3

    :goto_21
    if-ge v5, v4, :cond_2b

    aget-object v6, v2, v5

    .line 407
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 406
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 403
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 413
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 414
    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 416
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_151

    .line 421
    :try_start_46
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 422
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v11, v3

    .line 421
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_65} :catch_130

    .line 427
    nop

    .line 429
    move v8, v3

    :goto_67
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v11, v9

    if-ge v8, v11, :cond_ef

    .line 430
    new-instance v11, Ljava/io/File;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 433
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 438
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 439
    if-eqz v9, :cond_d1

    .line 440
    move v12, v3

    :goto_8b
    array-length v13, v9

    if-ge v12, v13, :cond_d1

    .line 441
    new-instance v13, Ljava/io/File;

    aget-object v14, v9, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    :try_start_99
    aget-object v14, v9, v12

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    new-array v15, v10, [Ljava/nio/file/CopyOption;

    sget-object v16, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v16, v15, v3

    invoke-static {v14, v13, v15}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_ac} :catch_b0

    .line 456
    nop

    .line 440
    add-int/lit8 v12, v12, 0x1

    goto :goto_8b

    .line 453
    :catch_b0
    move-exception v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to back up file : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v9, v12

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 429
    :cond_d1
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .line 434
    :cond_d4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create interval backup directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_ef
    const/4 v3, 0x0

    .line 464
    :try_start_f0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_fc} :catch_120
    .catchall {:try_start_f0 .. :try_end_fc} :catchall_11e

    .line 465
    :try_start_fc
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 467
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_113} :catch_11b
    .catchall {:try_start_fc .. :try_end_113} :catchall_118

    .line 474
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 475
    nop

    .line 477
    :cond_117
    return-void

    .line 474
    :catchall_118
    move-exception v0

    move-object v3, v4

    goto :goto_12c

    .line 470
    :catch_11b
    move-exception v0

    move-object v3, v4

    goto :goto_121

    .line 474
    :catchall_11e
    move-exception v0

    goto :goto_12c

    .line 470
    :catch_120
    move-exception v0

    .line 471
    :goto_121
    :try_start_121
    const-string v1, "Failed to write new version upgrade breadcrumb"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_11e

    .line 474
    :goto_12c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 424
    :catch_130
    move-exception v0

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to back up version file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create backup directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .registers 4

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1084
    new-array v1, v0, [B

    .line 1085
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 1086
    return-object v1
.end method

.method private indexFilesLocked()V
    .registers 13

    .line 262
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 269
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v3

    if-ge v2, v4, :cond_a1

    .line 270
    aget-object v4, v3, v2

    if-nez v4, :cond_18

    .line 271
    new-instance v4, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v4}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v4, v3, v2

    goto :goto_1d

    .line 273
    :cond_18
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 275
    :goto_1d
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 276
    if-eqz v3, :cond_9d

    .line 280
    array-length v4, v3

    .line 281
    move v5, v1

    :goto_29
    const-string v6, "UsageStatsDatabase"

    if-ge v5, v4, :cond_58

    .line 282
    aget-object v7, v3, v5

    .line 283
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 285
    :try_start_34
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v2

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v8}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_40

    .line 288
    goto :goto_55

    .line 286
    :catch_40
    move-exception v8

    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to index file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 292
    :cond_58
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    sget-object v4, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    .line 293
    if-lez v3, :cond_9d

    .line 294
    move v4, v1

    :goto_68
    if-ge v4, v3, :cond_81

    .line 295
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    .line 296
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 298
    :cond_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stat files for interval "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 302
    :cond_a1
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .registers 5

    .line 1057
    if-nez p2, :cond_3

    return-object p1

    .line 1058
    :cond_3
    if-nez p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 1059
    :cond_7
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1060
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1061
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1062
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-object p2, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p2}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    .line 1063
    return-object p1
.end method

.method private static parseBeginTime(Landroid/util/AtomicFile;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseBeginTime(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 794
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 795
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 796
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x39

    if-le v2, v3, :cond_19

    goto :goto_1c

    .line 794
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 798
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 804
    :cond_20
    :try_start_20
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_24} :catch_25

    return-wide v0

    .line 805
    :catch_25
    move-exception p0

    .line 806
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .registers 13

    .line 754
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 755
    if-eqz p1, :cond_52

    .line 756
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_52

    aget-object v3, p1, v2

    .line 759
    :try_start_d
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    .line 762
    goto :goto_15

    .line 760
    :catch_12
    move-exception v4

    .line 761
    const-wide/16 v4, 0x0

    .line 764
    :goto_15
    cmp-long v4, v4, p2

    if-gez v4, :cond_4f

    .line 766
    :try_start_19
    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 767
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 768
    invoke-direct {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 769
    iget-object v5, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 770
    move v6, v1

    :goto_2d
    if-ge v6, v5, :cond_43

    .line 771
    iget-object v7, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    .line 772
    iget-object v8, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v8, :cond_40

    .line 773
    iget-object v7, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 770
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 776
    :cond_43
    invoke-direct {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_46} :catch_47

    .line 779
    goto :goto_4f

    .line 777
    :catch_47
    move-exception v3

    .line 778
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to delete chooser counts from usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 783
    :cond_52
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 8

    .line 736
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 737
    if-eqz p0, :cond_23

    .line 738
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_23

    aget-object v2, p0, v1

    .line 741
    :try_start_c
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    .line 744
    goto :goto_14

    .line 742
    :catch_11
    move-exception v3

    .line 743
    const-wide/16 v3, 0x0

    .line 746
    :goto_14
    cmp-long v3, v3, p1

    if-gez v3, :cond_20

    .line 747
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 738
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 751
    :cond_23
    return-void
.end method

.method private readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 851
    return-void
.end method

.method private static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_22

    .line 858
    :try_start_4
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 859
    invoke-static {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 860
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1b

    .line 863
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_22

    .line 866
    goto :goto_19

    .line 864
    :catch_17
    move-exception p0

    .line 867
    nop

    .line 871
    :goto_19
    nop

    .line 872
    return-void

    .line 862
    :catchall_1b
    move-exception p0

    .line 863
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_22

    .line 866
    goto :goto_21

    .line 864
    :catch_20
    move-exception p1

    .line 866
    :goto_21
    :try_start_21
    throw p0
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_22} :catch_22

    .line 868
    :catch_22
    move-exception p0

    .line 869
    const-string p1, "UsageStatsDatabase"

    invoke-static {p1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    throw p0
.end method

.method private readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 876
    return-void
.end method

.method private static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    const/4 v0, 0x1

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    if-eq p2, v0, :cond_30

    const/4 v0, 0x3

    if-eq p2, v0, :cond_30

    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    .line 887
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 888
    goto :goto_34

    .line 890
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on read."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 884
    :cond_30
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 885
    nop

    .line 895
    :goto_34
    return-void
.end method

.method private static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .registers 2

    .line 1090
    if-nez p0, :cond_3

    return-void

    .line 1091
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1092
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1093
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->clear()V

    .line 1094
    return-void
.end method

.method private serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B
    .registers 7

    .line 1097
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1098
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1100
    :try_start_a
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1101
    invoke-static {v1, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 1105
    goto :goto_1e

    .line 1102
    :catch_13
    move-exception p1

    .line 1103
    const-string p2, "UsageStatsDatabase"

    const-string v1, "Serializing IntervalStats Failed"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1106
    :goto_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1070
    :try_start_5
    invoke-direct {p0, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_18

    .line 1075
    nop

    .line 1076
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 1077
    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B

    move-result-object p2

    .line 1078
    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1079
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 1080
    return-void

    .line 1071
    :catch_18
    move-exception p2

    .line 1072
    const-string p3, "UsageStatsDatabase"

    const-string v0, "Failed to read usage stats file"

    invoke-static {p3, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1074
    return-void
.end method

.method private writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 812
    return-void
.end method

.method private static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 818
    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 819
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 820
    const/4 p1, 0x0

    .line 823
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 824
    nop

    .line 825
    return-void

    .line 823
    :catchall_10
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p1
.end method

.method private writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 829
    return-void
.end method

.method private static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    const/4 v0, 0x1

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    if-eq p2, v0, :cond_30

    const/4 v0, 0x3

    if-eq p2, v0, :cond_30

    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    .line 840
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 841
    goto :goto_34

    .line 843
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on write."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 837
    :cond_30
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 838
    nop

    .line 847
    :goto_34
    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_3
    const-string/jumbo v1, "usage_stats"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 989
    nop

    .line 990
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 991
    nop

    .line 992
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    .line 993
    nop

    .line 994
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 995
    nop

    .line 996
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v7
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_c6

    .line 999
    :try_start_24
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1000
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 1003
    if-lt p2, v2, :cond_ad

    const/4 v9, 0x4

    if-le p2, v9, :cond_39

    goto/16 :goto_ad

    .line 1007
    :cond_39
    move v9, p1

    :goto_3a
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v10, v10

    if-ge v9, v10, :cond_49

    .line 1008
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v10, v10, v9

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    .line 1007
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 1011
    :cond_49
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 1012
    move v10, p1

    :goto_4e
    if-ge v10, v9, :cond_62

    .line 1013
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v11

    invoke-direct {p0, v11, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v11

    .line 1015
    invoke-direct {p0, v11, v1}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v11

    .line 1016
    invoke-virtual {p0, p1, v11}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1012
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 1019
    :cond_62
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1020
    move v9, p1

    :goto_67
    if-ge v9, v1, :cond_7b

    .line 1021
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v10

    invoke-direct {p0, v10, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v10

    .line 1023
    invoke-direct {p0, v10, v3}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v10

    .line 1024
    invoke-virtual {p0, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1020
    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    .line 1027
    :cond_7b
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1028
    move v2, p1

    :goto_80
    if-ge v2, v1, :cond_94

    .line 1029
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    .line 1031
    invoke-direct {p0, v3, v5}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    .line 1032
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 1035
    :cond_94
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1036
    nop

    :goto_99
    if-ge p1, v1, :cond_bc

    .line 1037
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    .line 1039
    invoke-direct {p0, v2, v7}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    .line 1040
    invoke-virtual {p0, v6, v2}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_aa} :catch_b4
    .catchall {:try_start_24 .. :try_end_aa} :catchall_b2

    .line 1036
    add-int/lit8 p1, p1, 0x1

    goto :goto_99

    .line 1046
    :cond_ad
    :goto_ad
    :try_start_ad
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_c6

    .line 1003
    return-void

    .line 1046
    :catchall_b2
    move-exception p1

    goto :goto_c0

    .line 1043
    :catch_b4
    move-exception p1

    .line 1044
    :try_start_b5
    const-string p2, "UsageStatsDatabase"

    const-string v1, "Failed to read data from input stream"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_b2

    .line 1046
    :cond_bc
    :try_start_bc
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1047
    goto :goto_c4

    .line 1046
    :goto_c0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    throw p1

    .line 1049
    :cond_c4
    :goto_c4
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_c6
    move-exception p1

    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_bc .. :try_end_c8} :catchall_c6

    throw p1
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .registers 11

    .line 199
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 202
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 206
    const/4 v4, -0x1

    .line 207
    move v5, v4

    move v4, v2

    :goto_f
    const/4 v6, 0x1

    add-int/lit8 v7, v3, -0x1

    if-ge v4, v7, :cond_2e

    .line 208
    invoke-virtual {v1, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 209
    move v5, v4

    .line 207
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 213
    :cond_2e
    add-int/2addr v5, v6

    .line 214
    if-ne v5, v7, :cond_33

    .line 215
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_bd

    return v6

    .line 219
    :cond_33
    :try_start_33
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 220
    move v4, v5

    :goto_39
    if-ge v4, v7, :cond_4f

    .line 221
    invoke-virtual {v1, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-direct {p0, v8, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 222
    invoke-interface {p1, v3}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v8
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_48} :catch_b3
    .catchall {:try_start_33 .. :try_end_48} :catchall_bd

    if-nez v8, :cond_4c

    .line 223
    :try_start_4a
    monitor-exit v0

    return v2

    .line 220
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 229
    :cond_4f
    nop

    .line 233
    nop

    :goto_51
    if-ge v5, v7, :cond_b1

    .line 234
    invoke-virtual {v1, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    .line 235
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 240
    const-string v1, "UsageStatsDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to mark file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as checked-in"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v0

    return v6

    .line 247
    :cond_a6
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5, p1}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 233
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 249
    :cond_b1
    monitor-exit v0

    .line 250
    return v6

    .line 226
    :catch_b3
    move-exception p1

    .line 227
    const-string v1, "UsageStatsDatabase"

    const-string v3, "Failed to check-in"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    monitor-exit v0

    return v2

    .line 249
    :catchall_bd
    move-exception p1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_4a .. :try_end_bf} :catchall_bd

    throw p1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 13

    .line 1149
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_3
    const-string v1, "UsageStatsDatabase:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1152
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v3

    if-ge v2, v3, :cond_5a

    .line 1153
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, v2

    .line 1154
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .line 1155
    invoke-static {v2}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    const-string v5, " stats files: "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1158
    const-string v5, ", sorted list of files:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1160
    move v5, v1

    :goto_32
    if-ge v5, v4, :cond_54

    .line 1161
    invoke-virtual {v3, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1162
    if-eqz p2, :cond_42

    .line 1163
    invoke-static {v6, v7, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4e

    .line 1165
    :cond_42
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 1166
    const/4 v9, 0x1

    invoke-static {v6, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v6

    .line 1165
    invoke-virtual {p1, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1168
    :goto_4e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1160
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 1170
    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1152
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1172
    :cond_5a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1173
    monitor-exit v0

    .line 1174
    return-void

    .line 1173
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public findBestFitBucket(JJ)I
    .registers 11

    .line 679
    iget-object p3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 680
    nop

    .line 681
    const-wide v0, 0x7fffffffffffffffL

    .line 682
    :try_start_9
    iget-object p4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    const/4 v2, -0x1

    :goto_f
    if-ltz p4, :cond_3c

    .line 683
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p4

    invoke-virtual {v3, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v3

    .line 684
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, p4

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .line 685
    if-ltz v3, :cond_39

    if-ge v3, v4, :cond_39

    .line 687
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, p4

    invoke-virtual {v4, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 688
    cmp-long v5, v3, v0

    if-gez v5, :cond_39

    .line 689
    nop

    .line 690
    move v2, p4

    move-wide v0, v3

    .line 682
    :cond_39
    add-int/lit8 p4, p4, -0x1

    goto :goto_f

    .line 694
    :cond_3c
    monitor-exit p3

    return v2

    .line 695
    :catchall_3e
    move-exception p1

    monitor-exit p3
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method forceIndexFiles()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 3

    .line 922
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 932
    const-string/jumbo v2, "usage_stats"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 934
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_ce

    .line 936
    :try_start_1d
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 938
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 940
    move v2, v3

    :goto_2d
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_47

    .line 942
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v3

    .line 943
    invoke-virtual {v4, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 942
    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 947
    :cond_47
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 948
    move v2, v3

    :goto_54
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_6e

    .line 950
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    .line 951
    invoke-virtual {v5, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    .line 950
    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 949
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 955
    :cond_6e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 956
    move v2, v3

    :goto_7b
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_95

    .line 958
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    .line 959
    invoke-virtual {v5, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    .line 958
    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 963
    :cond_95
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 964
    nop

    :goto_a2
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_bc

    .line 966
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, v4

    .line 967
    invoke-virtual {v2, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .line 966
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_b9} :catch_bd
    .catchall {:try_start_1d .. :try_end_b9} :catchall_ce

    .line 965
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 974
    :cond_bc
    goto :goto_c8

    .line 971
    :catch_bd
    move-exception p1

    .line 972
    :try_start_be
    const-string p2, "UsageStatsDatabase"

    const-string v2, "Failed to write data to output stream"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 976
    :cond_c8
    :goto_c8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 977
    :catchall_ce
    move-exception p1

    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_be .. :try_end_d0} :catchall_ce

    throw p1
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 6

    .line 560
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    if-ltz p1, :cond_37

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_37

    .line 565
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 566
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 567
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_4e

    return-object v2

    .line 571
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v3, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    .line 572
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 573
    invoke-direct {p0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2d
    .catchall {:try_start_17 .. :try_end_2b} :catchall_4e

    .line 574
    :try_start_2b
    monitor-exit v0

    return-object v1

    .line 575
    :catch_2d
    move-exception p1

    .line 576
    const-string v1, "UsageStatsDatabase"

    const-string v3, "Failed to read usage stats file"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    monitor-exit v0

    .line 579
    return-object v2

    .line 562
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public init(J)V
    .registers 12

    .line 152
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_33

    aget-object v5, v1, v4

    .line 154
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 156
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create directory "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_33
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 165
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v2, v1

    :goto_3c
    if-ge v3, v2, :cond_66

    aget-object v4, v1, v3

    .line 166
    invoke-virtual {v4, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v5

    .line 167
    if-gez v5, :cond_47

    .line 168
    goto :goto_63

    .line 171
    :cond_47
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 172
    move v7, v5

    :goto_4c
    if-ge v7, v6, :cond_5a

    .line 173
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 178
    :cond_5a
    nop

    :goto_5b
    if-ge v5, v6, :cond_63

    .line 179
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 165
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 182
    :cond_66
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_68
    move-exception p1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method isFirstUpdate()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return v0
.end method

.method public onTimeChanged(J)V
    .registers 23

    .line 510
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 511
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    const-string v0, "Time changed by "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 514
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    nop

    .line 517
    nop

    .line 519
    iget-object v6, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v7, v6

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_21
    if-ge v9, v7, :cond_9a

    aget-object v11, v6, v9

    .line 520
    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v12

    .line 521
    move v13, v0

    move v14, v10

    const/4 v10, 0x0

    :goto_2c
    if-ge v10, v12, :cond_90

    .line 522
    invoke-virtual {v11, v10}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/AtomicFile;

    .line 523
    invoke-virtual {v11, v10}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v16

    add-long v16, v16, v2

    .line 524
    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-gez v0, :cond_47

    .line 525
    add-int/lit8 v13, v13, 0x1

    .line 526
    invoke-virtual {v15}, Landroid/util/AtomicFile;->delete()V
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_b8

    goto :goto_8b

    .line 529
    :cond_47
    :try_start_47
    invoke-virtual {v15}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_4f
    .catchall {:try_start_47 .. :try_end_4e} :catchall_b8

    .line 532
    goto :goto_50

    .line 530
    :catch_4f
    move-exception v0

    .line 534
    :goto_50
    :try_start_50
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v1, "-c"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :cond_75
    new-instance v1, Ljava/io/File;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v1, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    add-int/lit8 v14, v14, 0x1

    .line 541
    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 521
    :goto_8b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_2c

    .line 544
    :cond_90
    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 519
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move v0, v13

    move v10, v14

    goto :goto_21

    .line 547
    :cond_9a
    const-string v1, " files deleted: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v0, " files moved: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v0, "UsageStatsDatabase"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 553
    monitor-exit v4

    .line 554
    return-void

    .line 553
    :catchall_b8
    move-exception v0

    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_50 .. :try_end_ba} :catchall_b8

    throw v0
.end method

.method public prune(J)V
    .registers 8

    .line 702
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 704
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 705
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 706
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 705
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 708
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 709
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 710
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 711
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 710
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 713
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 714
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 715
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 716
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 715
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 718
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 719
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 720
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 721
    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 720
    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 723
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 724
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget p2, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 725
    nop

    :goto_76
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length p1, p1

    if-ge v2, p1, :cond_8b

    .line 726
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object p1, p1, v2

    iget-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {p2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 731
    :cond_8b
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 732
    monitor-exit v0

    .line 733
    return-void

    .line 732
    :catchall_90
    move-exception p1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw p1
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    if-nez p2, :cond_3

    return-void

    .line 902
    :cond_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    if-ltz p1, :cond_43

    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_43

    .line 907
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 908
    if-nez v1, :cond_38

    .line 909
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 910
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 911
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v2, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {p1, v2, v3, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 914
    :cond_38
    invoke-direct {p0, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 915
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 916
    monitor-exit v0

    .line 917
    return-void

    .line 904
    :cond_43
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad interval type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 916
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    if-ltz p1, :cond_60

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_60

    .line 612
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v1, p1

    .line 614
    cmp-long v1, p4, p2

    const/4 v2, 0x0

    if-gtz v1, :cond_15

    .line 618
    monitor-exit v0

    return-object v2

    .line 621
    :cond_15
    invoke-virtual {p1, p2, p3}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v1

    .line 622
    const/4 v3, 0x0

    if-gez v1, :cond_1d

    .line 625
    move v1, v3

    .line 628
    :cond_1d
    invoke-virtual {p1, p4, p5}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v4

    .line 629
    if-gez v4, :cond_25

    .line 634
    monitor-exit v0

    return-object v2

    .line 637
    :cond_25
    invoke-virtual {p1, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v5

    cmp-long p4, v5, p4

    if-nez p4, :cond_33

    .line 639
    add-int/lit8 v4, v4, -0x1

    .line 640
    if-gez v4, :cond_33

    .line 645
    monitor-exit v0

    return-object v2

    .line 649
    :cond_33
    new-instance p4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {p4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 650
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 651
    nop

    :goto_3e
    if-gt v1, v4, :cond_5e

    .line 652
    invoke-virtual {p1, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_77

    .line 659
    :try_start_46
    invoke-direct {p0, v2, p4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 660
    iget-wide v5, p4, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v5

    if-gez v2, :cond_52

    .line 661
    invoke-interface {p6, p4, v3, p5}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_52} :catch_53
    .catchall {:try_start_46 .. :try_end_52} :catchall_77

    .line 667
    :cond_52
    goto :goto_5b

    .line 663
    :catch_53
    move-exception v2

    .line 664
    :try_start_54
    const-string v5, "UsageStatsDatabase"

    const-string v6, "Failed to read usage stats file"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 669
    :cond_5e
    monitor-exit v0

    return-object p5

    .line 609
    :cond_60
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad interval type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 670
    :catchall_77
    move-exception p1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_54 .. :try_end_79} :catchall_77

    throw p1
.end method

.method readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .registers 8

    .line 1177
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_3
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    .line 1180
    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v3, p1

    invoke-virtual {p1, p2, p3, v2}, Landroid/app/usage/TimeSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    invoke-direct {p0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18
    .catchall {:try_start_9 .. :try_end_16} :catchall_1b

    .line 1181
    :try_start_16
    monitor-exit v0

    return-object v1

    .line 1182
    :catch_18
    move-exception p1

    .line 1183
    monitor-exit v0

    return-object v2

    .line 1185
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw p1
.end method
