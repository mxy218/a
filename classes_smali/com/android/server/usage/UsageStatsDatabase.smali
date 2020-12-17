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
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 333
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    .param p1, "dir"  # Ljava/io/File;

    .line 145
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 6
    .param p1, "dir"  # Ljava/io/File;
    .param p2, "version"  # I
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
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 138
    new-instance v0, Ljava/io/File;

    const-string v1, "backups"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 139
    new-instance v0, Ljava/io/File;

    const-string v1, "breadcrumb"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 140
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 141
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

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
    .local v1, "currentFingerprint":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 324
    const/4 v2, 0x0

    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_18} :catch_3c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_3c

    .line 325
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 326
    .local v4, "version":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "buildFingerprint":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_29

    .line 328
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 330
    :cond_29
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 331
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_35

    .line 333
    :cond_31
    :try_start_31
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_34} :catch_3c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_3c

    .line 335
    .end local v3  # "reader":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 324
    .end local v4  # "version":I
    .end local v5  # "buildFingerprint":Ljava/lang/String;
    .restart local v3  # "reader":Ljava/io/BufferedReader;
    :catchall_35
    move-exception v4

    .end local v1  # "currentFingerprint":Ljava/lang/String;
    .end local v3  # "reader":Ljava/io/BufferedReader;
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :try_start_36
    throw v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 333
    .restart local v1  # "currentFingerprint":Ljava/lang/String;
    .restart local v3  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catchall_37
    move-exception v5

    :try_start_38
    invoke-static {v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1  # "currentFingerprint":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    throw v5
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_3c} :catch_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3c

    .end local v3  # "reader":Ljava/io/BufferedReader;
    .restart local v1  # "currentFingerprint":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_3c
    move-exception v3

    .line 334
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 337
    .end local v3  # "e":Ljava/lang/Exception;
    .restart local v4  # "version":I
    :goto_3e
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string v5, "UsageStatsDatabase"

    if-eq v4, v3, :cond_93

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading from version "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 341
    :try_start_6a
    invoke-direct {p0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 349
    goto :goto_93

    .line 342
    :catch_6e
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upgrade from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    iput v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 348
    return-void

    .line 351
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_8e
    const-string v3, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_93
    :goto_93
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 358
    :try_start_9b
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_a7} :catch_c6
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a7} :catch_c6

    .line 360
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_a7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 361
    .local v6, "token":J
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_b7
    .catchall {:try_start_a7 .. :try_end_b7} :catchall_bf

    .line 362
    .local v8, "previousVersion":I
    :try_start_b7
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_ba} :catch_c6
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_c6

    .line 365
    .end local v3  # "reader":Ljava/io/BufferedReader;
    nop

    .line 366
    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->continueUpgradeLocked(IJ)V

    goto :goto_d2

    .line 358
    .end local v6  # "token":J
    .end local v8  # "previousVersion":I
    .restart local v3  # "reader":Ljava/io/BufferedReader;
    :catchall_bf
    move-exception v0

    .end local v1  # "currentFingerprint":Ljava/lang/String;
    .end local v3  # "reader":Ljava/io/BufferedReader;
    .end local v4  # "version":I
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :try_start_c0
    throw v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    .line 362
    .restart local v1  # "currentFingerprint":Ljava/lang/String;
    .restart local v3  # "reader":Ljava/io/BufferedReader;
    .restart local v4  # "version":I
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catchall_c1
    move-exception v2

    :try_start_c2
    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1  # "currentFingerprint":Ljava/lang/String;
    .end local v4  # "version":I
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    throw v2
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_c6} :catch_c6
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c6} :catch_c6

    .end local v3  # "reader":Ljava/io/BufferedReader;
    .restart local v1  # "currentFingerprint":Ljava/lang/String;
    .restart local v4  # "version":I
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_c6
    move-exception v0

    .line 363
    .restart local v0  # "e":Ljava/lang/Exception;
    const-string v2, "Failed read version upgrade breadcrumb"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 369
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_d2
    :goto_d2
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v4, v3, :cond_da

    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v3, :cond_ff

    .line 370
    :cond_da
    :try_start_da
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_e6} :catch_121

    .line 371
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_e6
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_fb
    .catchall {:try_start_e6 .. :try_end_fb} :catchall_11a

    .line 376
    :try_start_fb
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_121

    .line 379
    .end local v3  # "writer":Ljava/io/BufferedWriter;
    nop

    .line 382
    :cond_ff
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 384
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 387
    :cond_10c
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 388
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 390
    :cond_119
    return-void

    .line 370
    .restart local v3  # "writer":Ljava/io/BufferedWriter;
    :catchall_11a
    move-exception v0

    .end local v1  # "currentFingerprint":Ljava/lang/String;
    .end local v3  # "writer":Ljava/io/BufferedWriter;
    .end local v4  # "version":I
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :try_start_11b
    throw v0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11c

    .line 376
    .restart local v1  # "currentFingerprint":Ljava/lang/String;
    .restart local v3  # "writer":Ljava/io/BufferedWriter;
    .restart local v4  # "version":I
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catchall_11c
    move-exception v2

    :try_start_11d
    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1  # "currentFingerprint":Ljava/lang/String;
    .end local v4  # "version":I
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    throw v2
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_121} :catch_121

    .end local v3  # "writer":Ljava/io/BufferedWriter;
    .restart local v1  # "currentFingerprint":Ljava/lang/String;
    .restart local v4  # "version":I
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_121
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to write new version"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private continueUpgradeLocked(IJ)V
    .registers 15
    .param p1, "version"  # I
    .param p2, "token"  # J

    .line 480
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    .local v0, "backupDir":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v2

    if-ge v1, v3, :cond_73

    .line 485
    new-instance v3, Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 486
    .local v2, "backedUpInterval":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 487
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_70

    .line 488
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_24
    array-length v5, v3

    if-ge v4, v5, :cond_70

    .line 496
    :try_start_27
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 497
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v6, v5, p1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 498
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v8, v8, v1

    iget-wide v9, v5, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 499
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 498
    invoke-static {v6, v5, v7}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4f} :catch_50

    .line 503
    .end local v5  # "stats":Lcom/android/server/usage/IntervalStats;
    goto :goto_6d

    .line 500
    :catch_50
    move-exception v5

    .line 502
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to upgrade backup file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UsageStatsDatabase"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 484
    .end local v2  # "backedUpInterval":Ljava/io/File;
    .end local v3  # "files":[Ljava/io/File;
    .end local v4  # "j":I
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 507
    .end local v1  # "i":I
    :cond_73
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .registers 6
    .param p0, "directory"  # Ljava/io/File;

    .line 1131
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1132
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1c

    .line 1133
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 1134
    .local v3, "file":Ljava/io/File;
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
    .end local v3  # "file":Ljava/io/File;
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
    .registers 5
    .param p0, "directory"  # Ljava/io/File;

    .line 1124
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1125
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 1126
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1125
    .end local v3  # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1128
    :cond_10
    return-void
.end method

.method private deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;
    .registers 9
    .param p1, "data"  # [B
    .param p2, "version"  # I

    .line 1110
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1111
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1112
    .local v1, "in":Ljava/io/DataInputStream;
    new-instance v2, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v2}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1114
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1115
    invoke-static {v1, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_19

    .line 1119
    goto :goto_22

    .line 1116
    :catch_19
    move-exception v3

    .line 1117
    .local v3, "ioe":Ljava/io/IOException;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "DeSerializing IntervalStats Failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    const/4 v2, 0x0

    .line 1120
    .end local v3  # "ioe":Ljava/io/IOException;
    :goto_22
    return-object v2
.end method

.method private doUpgradeLocked(I)V
    .registers 20
    .param p1, "thisVersion"  # I

    .line 399
    move-object/from16 v1, p0

    const-string v0, "\n"

    const/4 v2, 0x0

    const-string v3, "UsageStatsDatabase"

    const/4 v4, 0x2

    move/from16 v5, p1

    if-ge v5, v4, :cond_30

    .line 402
    const-string v0, "Deleting all usage stats files"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v0, v4, :cond_2e

    .line 404
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 405
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2b

    .line 406
    array-length v4, v3

    move v6, v2

    :goto_21
    if-ge v6, v4, :cond_2b

    aget-object v7, v3, v6

    .line 407
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 406
    .end local v7  # "f":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 403
    .end local v3  # "files":[Ljava/io/File;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .end local v0  # "i":I
    :cond_2e
    goto/16 :goto_126

    .line 413
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 414
    .local v6, "token":J
    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    .local v4, "backupDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 416
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_15a

    .line 421
    :try_start_48
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

    aput-object v12, v11, v2

    .line 421
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_67} :catch_139

    .line 427
    nop

    .line 429
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_69
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v11, v9

    if-ge v8, v11, :cond_fd

    .line 430
    new-instance v11, Ljava/io/File;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v11

    .line 431
    .local v9, "backupIntervalDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 433
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e2

    .line 438
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 439
    .local v11, "files":[Ljava/io/File;
    if-eqz v11, :cond_db

    .line 440
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_8e
    array-length v13, v11

    if-ge v12, v13, :cond_d8

    .line 441
    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .local v13, "backupFile":Ljava/io/File;
    :try_start_9c
    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v15

    new-array v2, v10, [Ljava/nio/file/CopyOption;

    sget-object v17, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/16 v16, 0x0

    aput-object v17, v2, v16

    invoke-static {v14, v15, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_b1} :catch_b7

    .line 456
    nop

    .line 440
    .end local v13  # "backupFile":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_8e

    .line 453
    .restart local v13  # "backupFile":Ljava/io/File;
    :catch_b7
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to back up file : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v11, v12

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 440
    .end local v0  # "e":Ljava/io/IOException;
    .end local v13  # "backupFile":Ljava/io/File;
    :cond_d8
    move/from16 v16, v2

    goto :goto_dd

    .line 439
    .end local v12  # "j":I
    :cond_db
    move/from16 v16, v2

    .line 429
    .end local v9  # "backupIntervalDir":Ljava/io/File;
    .end local v11  # "files":[Ljava/io/File;
    :goto_dd
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    goto :goto_69

    .line 434
    .restart local v9  # "backupIntervalDir":Ljava/io/File;
    :cond_e2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create interval backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    .end local v8  # "i":I
    .end local v9  # "backupIntervalDir":Ljava/io/File;
    :cond_fd
    const/4 v2, 0x0

    .line 464
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_fe
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v8

    .line 465
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 467
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_122} :catch_129
    .catchall {:try_start_fe .. :try_end_122} :catchall_127

    .line 474
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 475
    nop

    .line 477
    .end local v2  # "writer":Ljava/io/BufferedWriter;
    .end local v4  # "backupDir":Ljava/io/File;
    .end local v6  # "token":J
    :goto_126
    return-void

    .line 474
    .restart local v2  # "writer":Ljava/io/BufferedWriter;
    .restart local v4  # "backupDir":Ljava/io/File;
    .restart local v6  # "token":J
    :catchall_127
    move-exception v0

    goto :goto_135

    .line 470
    :catch_129
    move-exception v0

    .line 471
    .restart local v0  # "e":Ljava/io/IOException;
    :try_start_12a
    const-string v8, "Failed to write new version upgrade breadcrumb"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2  # "writer":Ljava/io/BufferedWriter;
    .end local v4  # "backupDir":Ljava/io/File;
    .end local v6  # "token":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1  # "thisVersion":I
    throw v3
    :try_end_135
    .catchall {:try_start_12a .. :try_end_135} :catchall_127

    .line 474
    .end local v0  # "e":Ljava/io/IOException;
    .restart local v2  # "writer":Ljava/io/BufferedWriter;
    .restart local v4  # "backupDir":Ljava/io/File;
    .restart local v6  # "token":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1  # "thisVersion":I
    :goto_135
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 424
    .end local v2  # "writer":Ljava/io/BufferedWriter;
    :catch_139
    move-exception v0

    .line 425
    .restart local v0  # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to back up version file : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 417
    .end local v0  # "e":Ljava/io/IOException;
    :cond_15a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    .param p0, "in"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1084
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1085
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 1086
    return-object v1
.end method

.method private indexFilesLocked()V
    .registers 12

    .line 262
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 269
    .local v0, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v2

    if-ge v1, v3, :cond_a1

    .line 270
    aget-object v3, v2, v1

    if-nez v3, :cond_17

    .line 271
    new-instance v3, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v3}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v3, v2, v1

    goto :goto_1c

    .line 273
    :cond_17
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 275
    :goto_1c
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 276
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_9d

    .line 280
    array-length v3, v2

    .line 281
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    const-string v5, "UsageStatsDatabase"

    if-ge v4, v3, :cond_57

    .line 282
    aget-object v6, v2, v4

    .line 283
    .local v6, "f":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    invoke-direct {v7, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 285
    .local v7, "af":Landroid/util/AtomicFile;
    :try_start_33
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3e} :catch_3f

    .line 288
    goto :goto_54

    .line 286
    :catch_3f
    move-exception v8

    .line 287
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to index file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v6  # "f":Ljava/io/File;
    .end local v7  # "af":Landroid/util/AtomicFile;
    .end local v8  # "e":Ljava/io/IOException;
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 292
    .end local v4  # "j":I
    :cond_57
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    sget-object v6, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v6, v6, v1

    sub-int/2addr v4, v6

    .line 293
    .local v4, "toDelete":I
    if-lez v4, :cond_9d

    .line 294
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_67
    if-ge v6, v4, :cond_81

    .line 295
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V

    .line 296
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v1

    invoke-virtual {v7, v8}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 294
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 298
    .end local v6  # "j":I
    :cond_81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " stat files for interval "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v2  # "files":[Ljava/io/File;
    .end local v3  # "len":I
    .end local v4  # "toDelete":I
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 302
    .end local v1  # "i":I
    :cond_a1
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .registers 5
    .param p1, "beingRestored"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "onDevice"  # Lcom/android/server/usage/IntervalStats;

    .line 1057
    if-nez p2, :cond_3

    return-object p1

    .line 1058
    :cond_3
    if-nez p1, :cond_7

    const/4 v0, 0x0

    return-object v0

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

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v1}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    .line 1063
    return-object p1
.end method

.method private static parseBeginTime(Landroid/util/AtomicFile;)J
    .registers 3
    .param p0, "file"  # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseBeginTime(Ljava/io/File;)J
    .registers 5
    .param p0, "file"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 796
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x39

    if-le v2, v3, :cond_18

    goto :goto_1b

    .line 794
    .end local v2  # "c":C
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 798
    .restart local v2  # "c":C
    :cond_1b
    :goto_1b
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 804
    .end local v1  # "i":I
    .end local v2  # "c":C
    :cond_20
    :try_start_20
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_24} :catch_25

    return-wide v1

    .line 805
    :catch_25
    move-exception v1

    .line 806
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .registers 16
    .param p1, "dir"  # Ljava/io/File;
    .param p2, "expiryTime"  # J

    .line 754
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 755
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_51

    .line 756
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_51

    aget-object v3, v0, v2

    .line 759
    .local v3, "f":Ljava/io/File;
    :try_start_c
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    .line 762
    .local v4, "beginTime":J
    goto :goto_14

    .line 760
    .end local v4  # "beginTime":J
    :catch_11
    move-exception v4

    .line 761
    .local v4, "e":Ljava/io/IOException;
    const-wide/16 v4, 0x0

    .line 764
    .local v4, "beginTime":J
    :goto_14
    cmp-long v6, v4, p2

    if-gez v6, :cond_4e

    .line 766
    :try_start_18
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 767
    .local v6, "af":Landroid/util/AtomicFile;
    new-instance v7, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v7}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 768
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 769
    iget-object v8, v7, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 770
    .local v8, "pkgCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2c
    if-ge v9, v8, :cond_42

    .line 771
    iget-object v10, v7, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 772
    .local v10, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v11, :cond_3f

    .line 773
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 770
    .end local v10  # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_3f
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 776
    .end local v9  # "i":I
    :cond_42
    invoke-direct {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_45} :catch_46

    .line 779
    .end local v6  # "af":Landroid/util/AtomicFile;
    .end local v7  # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v8  # "pkgCount":I
    goto :goto_4e

    .line 777
    :catch_46
    move-exception v6

    .line 778
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to delete chooser counts from usage stats file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    .end local v3  # "f":Ljava/io/File;
    .end local v4  # "beginTime":J
    .end local v6  # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 783
    :cond_51
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 10
    .param p0, "dir"  # Ljava/io/File;
    .param p1, "expiryTime"  # J

    .line 736
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 737
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_23

    .line 738
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 741
    .local v3, "f":Ljava/io/File;
    :try_start_c
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    .line 744
    .local v4, "beginTime":J
    goto :goto_14

    .line 742
    .end local v4  # "beginTime":J
    :catch_11
    move-exception v4

    .line 743
    .local v4, "e":Ljava/io/IOException;
    const-wide/16 v4, 0x0

    .line 746
    .local v4, "beginTime":J
    :goto_14
    cmp-long v6, v4, p1

    if-gez v6, :cond_20

    .line 747
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V

    .line 738
    .end local v3  # "f":Ljava/io/File;
    .end local v4  # "beginTime":J
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 751
    :cond_23
    return-void
.end method

.method private readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .param p1, "file"  # Landroid/util/AtomicFile;
    .param p2, "statsOut"  # Lcom/android/server/usage/IntervalStats;
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
    .param p0, "file"  # Landroid/util/AtomicFile;
    .param p1, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"  # I
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
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_23

    .line 858
    .local v0, "in":Ljava/io/FileInputStream;
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
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_23

    .line 866
    goto :goto_19

    .line 864
    :catch_17
    move-exception v1

    .line 867
    nop

    .line 871
    .end local v0  # "in":Ljava/io/FileInputStream;
    :goto_19
    nop

    .line 872
    return-void

    .line 862
    .restart local v0  # "in":Ljava/io/FileInputStream;
    :catchall_1b
    move-exception v1

    .line 863
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_23

    .line 866
    goto :goto_21

    .line 864
    :catch_20
    move-exception v2

    .line 866
    :goto_21
    nop

    .end local p0  # "file":Landroid/util/AtomicFile;
    .end local p1  # "statsOut":Lcom/android/server/usage/IntervalStats;
    .end local p2  # "version":I
    :try_start_22
    throw v1
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_23} :catch_23

    .line 868
    .end local v0  # "in":Ljava/io/FileInputStream;
    .restart local p0  # "file":Landroid/util/AtomicFile;
    .restart local p1  # "statsOut":Lcom/android/server/usage/IntervalStats;
    .restart local p2  # "version":I
    :catch_23
    move-exception v0

    .line 869
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    throw v0
.end method

.method private readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .param p1, "in"  # Ljava/io/InputStream;
    .param p2, "statsOut"  # Lcom/android/server/usage/IntervalStats;
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
    .registers 6
    .param p0, "in"  # Ljava/io/InputStream;
    .param p1, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"  # I
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
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on read."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .param p0, "stats"  # Lcom/android/server/usage/IntervalStats;

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
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1094
    return-void
.end method

.method private serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B
    .registers 8
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"  # I

    .line 1097
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1098
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1100
    .local v1, "out":Ljava/io/DataOutputStream;
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
    move-exception v2

    .line 1103
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Serializing IntervalStats Failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1106
    .end local v2  # "ioe":Ljava/lang/Exception;
    :goto_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .registers 8
    .param p1, "out"  # Ljava/io/DataOutputStream;
    .param p2, "statsFile"  # Landroid/util/AtomicFile;
    .param p3, "version"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1070
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
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

    move-result-object v1

    .line 1078
    .local v1, "data":[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1079
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1080
    return-void

    .line 1071
    .end local v1  # "data":[B
    :catch_18
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsDatabase"

    const-string v3, "Failed to read usage stats file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1074
    return-void
.end method

.method private writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .param p1, "file"  # Landroid/util/AtomicFile;
    .param p2, "stats"  # Lcom/android/server/usage/IntervalStats;
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
    .registers 5
    .param p0, "file"  # Landroid/util/AtomicFile;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 818
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 819
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 820
    const/4 v0, 0x0

    .line 823
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 824
    nop

    .line 825
    return-void

    .line 823
    :catchall_10
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
.end method

.method private writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .param p1, "out"  # Ljava/io/OutputStream;
    .param p2, "stats"  # Lcom/android/server/usage/IntervalStats;
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
    .registers 6
    .param p0, "out"  # Ljava/io/OutputStream;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"  # I
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
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on write."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .registers 20
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "payload"  # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 986
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 987
    :try_start_5
    const-string/jumbo v0, "usage_stats"
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e5

    move-object/from16 v3, p1

    :try_start_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 989
    nop

    .line 990
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    .line 991
    .local v4, "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 992
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    .line 993
    .local v6, "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 994
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 995
    .local v8, "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 996
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v10
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_e3

    .line 999
    .local v10, "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :try_start_28
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_cb
    .catchall {:try_start_28 .. :try_end_2c} :catchall_c7

    move-object/from16 v13, p2

    :try_start_2e
    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1000
    .local v11, "in":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1003
    .local v12, "backupDataVersion":I
    if-lt v12, v5, :cond_c0

    const/4 v14, 0x4

    if-le v12, v14, :cond_3f

    goto/16 :goto_c0

    .line 1007
    :cond_3f
    move v14, v0

    .local v14, "i":I
    :goto_40
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v15, v15

    if-ge v14, v15, :cond_4f

    .line 1008
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v15, v15, v14

    invoke-static {v15}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    .line 1007
    add-int/lit8 v14, v14, 0x1

    goto :goto_40

    .line 1011
    .end local v14  # "i":I
    :cond_4f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1012
    .local v14, "fileCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_54
    if-ge v15, v14, :cond_6b

    .line 1013
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v1, v9, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1015
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v4}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v16

    move-object/from16 v9, v16

    .line 1016
    invoke-virtual {v1, v0, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1012
    .end local v9  # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x3

    goto :goto_54

    .line 1019
    .end local v15  # "i":I
    :cond_6b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1020
    .end local v14  # "fileCount":I
    .local v0, "fileCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_70
    if-ge v9, v0, :cond_85

    .line 1021
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v14

    invoke-direct {v1, v14, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    .line 1023
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v14, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    move-object v14, v15

    .line 1024
    invoke-virtual {v1, v5, v14}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1020
    .end local v14  # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v9, v9, 0x1

    goto :goto_70

    .line 1027
    .end local v9  # "i":I
    :cond_85
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1028
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8b
    if-ge v5, v0, :cond_a0

    .line 1029
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v1, v9, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1031
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v8}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    move-object v9, v14

    .line 1032
    invoke-virtual {v1, v7, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1028
    .end local v9  # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 1035
    .end local v5  # "i":I
    :cond_a0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1036
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_a6
    if-ge v5, v0, :cond_bc

    .line 1037
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v7

    invoke-direct {v1, v7, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 1039
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v7, v10}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    move-object v7, v9

    .line 1040
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_b9} :catch_c5
    .catchall {:try_start_2e .. :try_end_b9} :catchall_da

    .line 1036
    .end local v7  # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    .line 1046
    .end local v0  # "fileCount":I
    .end local v5  # "i":I
    .end local v11  # "in":Ljava/io/DataInputStream;
    .end local v12  # "backupDataVersion":I
    :cond_bc
    :try_start_bc
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    goto :goto_d9

    .restart local v11  # "in":Ljava/io/DataInputStream;
    .restart local v12  # "backupDataVersion":I
    :cond_c0
    :goto_c0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_bc .. :try_end_c4} :catchall_ec

    .line 1003
    return-void

    .line 1043
    .end local v11  # "in":Ljava/io/DataInputStream;
    .end local v12  # "backupDataVersion":I
    :catch_c5
    move-exception v0

    goto :goto_ce

    .line 1046
    :catchall_c7
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_db

    .line 1043
    :catch_cb
    move-exception v0

    move-object/from16 v13, p2

    .line 1044
    .local v0, "ioe":Ljava/io/IOException;
    :goto_ce
    :try_start_ce
    const-string v5, "UsageStatsDatabase"

    const-string v7, "Failed to read data from input stream"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_da

    .line 1046
    nop

    .end local v0  # "ioe":Ljava/io/IOException;
    :try_start_d6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1047
    :goto_d9
    goto :goto_e1

    .line 1046
    :catchall_da
    move-exception v0

    :goto_db
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1  # "key":Ljava/lang/String;
    .end local p2  # "payload":[B
    throw v0

    .line 987
    .end local v4  # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v6  # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8  # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v10  # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1  # "key":Ljava/lang/String;
    .restart local p2  # "payload":[B
    :cond_df
    move-object/from16 v13, p2

    .line 1049
    :goto_e1
    monitor-exit v2

    .line 1050
    return-void

    .line 1049
    :catchall_e3
    move-exception v0

    goto :goto_e8

    :catchall_e5
    move-exception v0

    move-object/from16 v3, p1

    :goto_e8
    move-object/from16 v13, p2

    :goto_ea
    monitor-exit v2
    :try_end_eb
    .catchall {:try_start_d6 .. :try_end_eb} :catchall_ec

    throw v0

    :catchall_ec
    move-exception v0

    goto :goto_ea
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .registers 14
    .param p1, "checkinAction"  # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    .line 199
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 202
    .local v1, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 206
    .local v3, "fileCount":I
    const/4 v4, -0x1

    .line 207
    .local v4, "lastCheckin":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_2c

    .line 208
    invoke-virtual {v1, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 209
    move v4, v5

    .line 207
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 213
    .end local v5  # "i":I
    :cond_2c
    add-int/lit8 v5, v4, 0x1

    .line 214
    .local v5, "start":I
    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_35

    .line 215
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_c3

    return v7

    .line 219
    :cond_35
    :try_start_35
    new-instance v6, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v6}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 220
    .local v6, "stats":Lcom/android/server/usage/IntervalStats;
    move v8, v5

    .local v8, "i":I
    :goto_3b
    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_53

    .line 221
    invoke-virtual {v1, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-direct {p0, v9, v6}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 222
    invoke-interface {p1, v6}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v9
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4c} :catch_b9
    .catchall {:try_start_35 .. :try_end_4c} :catchall_c3

    if-nez v9, :cond_50

    .line 223
    :try_start_4e
    monitor-exit v0

    return v2

    .line 220
    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 229
    .end local v6  # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v8  # "i":I
    :cond_53
    nop

    .line 233
    move v2, v5

    .local v2, "i":I
    :goto_55
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_b7

    .line 234
    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 235
    .local v6, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v8, "checkedInFile":Ljava/io/File;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_ac

    .line 240
    const-string v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to mark file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as checked-in"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v0

    return v7

    .line 247
    :cond_ac
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 233
    .end local v6  # "file":Landroid/util/AtomicFile;
    .end local v8  # "checkedInFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 249
    .end local v1  # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v2  # "i":I
    .end local v3  # "fileCount":I
    .end local v4  # "lastCheckin":I
    .end local v5  # "start":I
    :cond_b7
    monitor-exit v0

    .line 250
    return v7

    .line 226
    .restart local v1  # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v3  # "fileCount":I
    .restart local v4  # "lastCheckin":I
    .restart local v5  # "start":I
    :catch_b9
    move-exception v6

    .line 227
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to check-in"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    monitor-exit v0

    return v2

    .line 249
    .end local v1  # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v3  # "fileCount":I
    .end local v4  # "lastCheckin":I
    .end local v5  # "start":I
    .end local v6  # "e":Ljava/io/IOException;
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_4e .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 13
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "compact"  # Z

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

    .local v2, "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v3

    if-ge v2, v3, :cond_5b

    .line 1153
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, v2

    .line 1154
    .local v3, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .line 1155
    .local v4, "size":I
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
    const/4 v5, 0x0

    .local v5, "f":I
    :goto_32
    if-ge v5, v4, :cond_54

    .line 1161
    invoke-virtual {v3, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1162
    .local v6, "fileName":J
    if-eqz p2, :cond_42

    .line 1163
    invoke-static {v6, v7, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4e

    .line 1165
    :cond_42
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 1166
    const/4 v9, 0x1

    invoke-static {v6, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1165
    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1168
    :goto_4e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1160
    .end local v6  # "fileName":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 1170
    .end local v5  # "f":I
    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1152
    nop

    .end local v3  # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v4  # "size":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1172
    .end local v2  # "i":I
    :cond_5b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1173
    monitor-exit v0

    .line 1174
    return-void

    .line 1173
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public findBestFitBucket(JJ)I
    .registers 15
    .param p1, "beginTimeStamp"  # J
    .param p3, "endTimeStamp"  # J

    .line 679
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    const/4 v1, -0x1

    .line 681
    .local v1, "bestBucket":I
    const-wide v2, 0x7fffffffffffffffL

    .line 682
    .local v2, "smallestDiff":J
    :try_start_9
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_e
    if-ltz v4, :cond_3a

    .line 683
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v5

    .line 684
    .local v5, "index":I
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 685
    .local v6, "size":I
    if-ltz v5, :cond_37

    if-ge v5, v6, :cond_37

    .line 687
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v7

    sub-long/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 688
    .local v7, "diff":J
    cmp-long v9, v7, v2

    if-gez v9, :cond_37

    .line 689
    move-wide v2, v7

    .line 690
    move v1, v4

    .line 682
    .end local v5  # "index":I
    .end local v6  # "size":I
    .end local v7  # "diff":J
    :cond_37
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 694
    .end local v4  # "i":I
    :cond_3a
    monitor-exit v0

    return v1

    .line 695
    .end local v1  # "bestBucket":I
    .end local v2  # "smallestDiff":J
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v1
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
    .param p1, "key"  # Ljava/lang/String;

    .line 922
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .registers 10
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "version"  # I
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
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v2, "usage_stats"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 934
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_ce

    .line 936
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_1d
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 938
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 940
    move v3, v4

    .local v3, "i":I
    :goto_2d
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_47

    .line 942
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    .line 943
    invoke-virtual {v5, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    .line 942
    invoke-direct {p0, v2, v5, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 941
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 947
    .end local v3  # "i":I
    :cond_47
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 948
    move v3, v4

    .restart local v3  # "i":I
    :goto_54
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_6e

    .line 950
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 951
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 950
    invoke-direct {p0, v2, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 949
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 955
    .end local v3  # "i":I
    :cond_6e
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 956
    move v3, v4

    .restart local v3  # "i":I
    :goto_7b
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_95

    .line 958
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 959
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 958
    invoke-direct {p0, v2, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 957
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 963
    .end local v3  # "i":I
    :cond_95
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 964
    move v3, v4

    .restart local v3  # "i":I
    :goto_a2
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_bc

    .line 966
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v5

    .line 967
    invoke-virtual {v4, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 966
    invoke-direct {p0, v2, v4, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_b9} :catch_bd
    .catchall {:try_start_1d .. :try_end_b9} :catchall_ce

    .line 965
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 974
    .end local v3  # "i":I
    :cond_bc
    goto :goto_c8

    .line 971
    :catch_bd
    move-exception v3

    .line 972
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_be
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to write data to output stream"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 976
    .end local v2  # "out":Ljava/io/DataOutputStream;
    .end local v3  # "ioe":Ljava/io/IOException;
    :cond_c8
    :goto_c8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 977
    .end local v1  # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_ce
    move-exception v1

    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_be .. :try_end_d0} :catchall_ce

    throw v1
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 8
    .param p1, "intervalType"  # I

    .line 560
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    if-ltz p1, :cond_38

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_38

    .line 565
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 566
    .local v1, "fileCount":I
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 567
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_4f

    return-object v2

    .line 571
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 572
    .local v3, "f":Landroid/util/AtomicFile;
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 573
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2d
    .catchall {:try_start_17 .. :try_end_2b} :catchall_4f

    .line 574
    :try_start_2b
    monitor-exit v0

    return-object v4

    .line 575
    .end local v3  # "f":Landroid/util/AtomicFile;
    .end local v4  # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_2d
    move-exception v3

    .line 576
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to read usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    nop

    .end local v1  # "fileCount":I
    .end local v3  # "e":Ljava/io/IOException;
    monitor-exit v0

    .line 579
    return-object v2

    .line 562
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1  # "intervalType":I
    throw v1

    .line 578
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1  # "intervalType":I
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public init(J)V
    .registers 12
    .param p1, "currentTimeMillis"  # J

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
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 153
    .end local v5  # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 156
    .restart local v5  # "f":Ljava/io/File;
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1  # "currentTimeMillis":J
    throw v1

    .line 161
    .end local v5  # "f":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1  # "currentTimeMillis":J
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
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v5

    .line 167
    .local v5, "startIndex":I
    if-gez v5, :cond_47

    .line 168
    goto :goto_63

    .line 171
    :cond_47
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 172
    .local v6, "fileCount":I
    move v7, v5

    .local v7, "i":I
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
    .end local v7  # "i":I
    :cond_5a
    move v7, v5

    .restart local v7  # "i":I
    :goto_5b
    if-ge v7, v6, :cond_63

    .line 179
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 165
    .end local v4  # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5  # "startIndex":I
    .end local v6  # "fileCount":I
    .end local v7  # "i":I
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
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v1
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
    .registers 22
    .param p1, "timeDiffMillis"  # J

    .line 510
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 511
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 512
    .local v5, "logBuilder":Ljava/lang/StringBuilder;
    const-string v0, "Time changed by "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 514
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "filesDeleted":I
    const/4 v6, 0x0

    .line 519
    .local v6, "filesMoved":I
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v8, :cond_9d

    aget-object v10, v7, v9

    .line 520
    .local v10, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v11

    .line 521
    .local v11, "fileCount":I
    const/4 v12, 0x0

    move v13, v6

    move v6, v0

    .end local v0  # "filesDeleted":I
    .local v6, "filesDeleted":I
    .local v12, "i":I
    .local v13, "filesMoved":I
    :goto_2b
    if-ge v12, v11, :cond_91

    .line 522
    invoke-virtual {v10, v12}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v14, v0

    .line 523
    .local v14, "file":Landroid/util/AtomicFile;
    invoke-virtual {v10, v12}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v15

    add-long/2addr v15, v2

    .line 524
    .local v15, "newTime":J
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-gez v0, :cond_45

    .line 525
    add-int/lit8 v6, v6, 0x1

    .line 526
    invoke-virtual {v14}, Landroid/util/AtomicFile;->delete()V
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_bb

    goto :goto_8a

    .line 529
    :cond_45
    :try_start_45
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_bb

    .line 532
    goto :goto_4e

    .line 530
    :catch_4d
    move-exception v0

    .line 534
    :goto_4e
    :try_start_4e
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "newName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 539
    :cond_74
    new-instance v1, Ljava/io/File;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    .local v1, "newFile":Ljava/io/File;
    add-int/lit8 v13, v13, 0x1

    .line 541
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 521
    .end local v0  # "newName":Ljava/lang/String;
    .end local v1  # "newFile":Ljava/io/File;
    .end local v14  # "file":Landroid/util/AtomicFile;
    .end local v15  # "newTime":J
    :goto_8a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    goto :goto_2b

    .line 544
    .end local v12  # "i":I
    :cond_91
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 519
    .end local v10  # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v11  # "fileCount":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move v0, v6

    move v6, v13

    goto :goto_20

    .line 547
    .end local v13  # "filesMoved":I
    .local v0, "filesDeleted":I
    .local v6, "filesMoved":I
    :cond_9d
    const-string v1, " files deleted: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, " files moved: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, "UsageStatsDatabase"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 553
    .end local v0  # "filesDeleted":I
    .end local v5  # "logBuilder":Ljava/lang/StringBuilder;
    .end local v6  # "filesMoved":I
    monitor-exit v4

    .line 554
    return-void

    .line 553
    :catchall_bb
    move-exception v0

    monitor-exit v4
    :try_end_bd
    .catchall {:try_start_4e .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method public prune(J)V
    .registers 8
    .param p1, "currentTimeMillis"  # J

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
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget v3, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int v3, v3

    invoke-virtual {v1, v3}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 725
    move v1, v2

    .local v1, "i":I
    :goto_76
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_8b

    .line 726
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 731
    .end local v1  # "i":I
    :cond_8b
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 732
    monitor-exit v0

    .line 733
    return-void

    .line 732
    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw v1
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p1, "intervalType"  # I
    .param p2, "stats"  # Lcom/android/server/usage/IntervalStats;
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
    if-ltz p1, :cond_44

    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_44

    .line 907
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 908
    .local v1, "f":Landroid/util/AtomicFile;
    if-nez v1, :cond_39

    .line 909
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v4, v4, p1

    iget-wide v5, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 910
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 911
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, p1

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 914
    :cond_39
    invoke-direct {p0, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 915
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 916
    .end local v1  # "f":Landroid/util/AtomicFile;
    monitor-exit v0

    .line 917
    return-void

    .line 904
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1  # "intervalType":I
    .end local p2  # "stats":Lcom/android/server/usage/IntervalStats;
    throw v1

    .line 916
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1  # "intervalType":I
    .restart local p2  # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 23
    .param p1, "intervalType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
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
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 608
    if-ltz v2, :cond_82

    :try_start_d
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge v2, v0, :cond_82

    .line 612
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, v2

    move-object v8, v0

    .line 614
    .local v8, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v0, v5, v3

    const/4 v9, 0x0

    if-gtz v0, :cond_1e

    .line 618
    monitor-exit v7

    return-object v9

    .line 621
    :cond_1e
    invoke-virtual {v8, v3, v4}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 622
    .local v0, "startIndex":I
    if-gez v0, :cond_27

    .line 625
    const/4 v0, 0x0

    move v10, v0

    goto :goto_28

    .line 622
    :cond_27
    move v10, v0

    .line 628
    .end local v0  # "startIndex":I
    .local v10, "startIndex":I
    :goto_28
    invoke-virtual {v8, v5, v6}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 629
    .local v0, "endIndex":I
    if-gez v0, :cond_30

    .line 634
    monitor-exit v7

    return-object v9

    .line 637
    :cond_30
    invoke-virtual {v8, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-nez v11, :cond_40

    .line 639
    add-int/lit8 v0, v0, -0x1

    .line 640
    if-gez v0, :cond_3e

    .line 645
    monitor-exit v7

    return-object v9

    .line 640
    :cond_3e
    move v9, v0

    goto :goto_41

    .line 637
    :cond_40
    move v9, v0

    .line 649
    .end local v0  # "endIndex":I
    .local v9, "endIndex":I
    :goto_41
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    move-object v11, v0

    .line 650
    .local v11, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 651
    .local v12, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v0, v10

    move v13, v0

    .local v13, "i":I
    :goto_4f
    if-gt v13, v9, :cond_80

    .line 652
    invoke-virtual {v8, v13}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_99

    move-object v14, v0

    .line 659
    .local v14, "f":Landroid/util/AtomicFile;
    :try_start_58
    invoke-direct {v1, v14, v11}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 660
    iget-wide v0, v11, Lcom/android/server/usage/IntervalStats;->endTime:J
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_71
    .catchall {:try_start_58 .. :try_end_5d} :catchall_6d

    cmp-long v0, v3, v0

    if-gez v0, :cond_6a

    .line 661
    const/4 v0, 0x0

    move-object/from16 v1, p6

    :try_start_64
    invoke-interface {v1, v11, v0, v12}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_99

    goto :goto_6c

    .line 663
    :catch_68
    move-exception v0

    goto :goto_74

    .line 660
    :cond_6a
    move-object/from16 v1, p6

    .line 667
    :goto_6c
    goto :goto_7b

    .line 670
    .end local v8  # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v9  # "endIndex":I
    .end local v10  # "startIndex":I
    .end local v11  # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v12  # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v13  # "i":I
    .end local v14  # "f":Landroid/util/AtomicFile;
    :catchall_6d
    move-exception v0

    move-object/from16 v1, p6

    goto :goto_9a

    .line 663
    .restart local v8  # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v9  # "endIndex":I
    .restart local v10  # "startIndex":I
    .restart local v11  # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v12  # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13  # "i":I
    .restart local v14  # "f":Landroid/util/AtomicFile;
    :catch_71
    move-exception v0

    move-object/from16 v1, p6

    .line 664
    .local v0, "e":Ljava/io/IOException;
    :goto_74
    :try_start_74
    const-string v15, "UsageStatsDatabase"

    const-string v1, "Failed to read usage stats file"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v0  # "e":Ljava/io/IOException;
    .end local v14  # "f":Landroid/util/AtomicFile;
    :goto_7b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    goto :goto_4f

    .line 669
    .end local v13  # "i":I
    :cond_80
    monitor-exit v7

    return-object v12

    .line 609
    .end local v8  # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v9  # "endIndex":I
    .end local v10  # "startIndex":I
    .end local v11  # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v12  # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad interval type "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1  # "intervalType":I
    .end local p2  # "beginTime":J
    .end local p4  # "endTime":J
    .end local p6  # "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    throw v0

    .line 670
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1  # "intervalType":I
    .restart local p2  # "beginTime":J
    .restart local p4  # "endTime":J
    .restart local p6  # "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    :catchall_99
    move-exception v0

    :goto_9a
    monitor-exit v7
    :try_end_9b
    .catchall {:try_start_74 .. :try_end_9b} :catchall_99

    throw v0
.end method

.method readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .registers 8
    .param p1, "interval"  # I
    .param p2, "fileName"  # J

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
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    invoke-virtual {v3, p2, p3, v2}, Landroid/app/usage/TimeSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    invoke-direct {p0, v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18
    .catchall {:try_start_9 .. :try_end_16} :catchall_1b

    .line 1181
    :try_start_16
    monitor-exit v0

    return-object v1

    .line 1182
    :catch_18
    move-exception v3

    .line 1183
    .local v3, "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v2

    .line 1185
    .end local v1  # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v3  # "e":Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v1
.end method
