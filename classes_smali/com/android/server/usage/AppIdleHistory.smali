.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    }
.end annotation


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ATTR_BUCKETING_REASON:Ljava/lang/String; = "bucketReason"

.field private static final ATTR_BUCKET_ACTIVE_TIMEOUT_TIME:Ljava/lang/String; = "activeTimeoutTime"

.field private static final ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME:Ljava/lang/String; = "workingSetTimeoutTime"

.field private static final ATTR_CURRENT_BUCKET:Ljava/lang/String; = "appLimitBucket"

.field private static final ATTR_ELAPSED_IDLE:Ljava/lang/String; = "elapsedIdleTime"

.field private static final ATTR_LAST_PREDICTED_TIME:Ljava/lang/String; = "lastPredictedTime"

.field private static final ATTR_LAST_RUN_JOB_TIME:Ljava/lang/String; = "lastJobRunTime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SCREEN_IDLE:Ljava/lang/String; = "screenIdleTime"

.field private static final DEBUG:Z = false

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final STANDBY_BUCKET_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppIdleHistory"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private mElapsedDuration:J

.field private mElapsedSnapshot:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenOnDuration:J

.field private mScreenOnSnapshot:J

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .registers 5

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 142
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 143
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 144
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 145
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    .line 146
    return-void
.end method

.method private getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 6

    .line 588
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 589
    if-nez p1, :cond_8

    return-wide p3

    .line 590
    :cond_8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;"
        }
    .end annotation

    .line 300
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 301
    if-nez v0, :cond_35

    if-eqz p5, :cond_35

    .line 302
    new-instance v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    .line 303
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 304
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide p3

    iput-wide p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 305
    const-wide/16 p3, 0x0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p3

    iput-wide p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 306
    const/16 p3, 0x32

    iput p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 307
    const/16 p3, 0x100

    iput p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 308
    const/4 p3, -0x1

    iput p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 309
    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 310
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_35
    return-object v0
.end method

.method private getUserHistory(I)Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 290
    if-nez v0, :cond_17

    .line 291
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    .line 295
    :cond_17
    return-object v0
.end method

.method private readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;)V"
        }
    .end annotation

    .line 522
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    .line 524
    const/4 v5, 0x0

    :try_start_9
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 525
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_16} :catch_fe
    .catchall {:try_start_9 .. :try_end_16} :catchall_fb

    .line 526
    :try_start_16
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 527
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 530
    :goto_23
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2e

    if-eq v0, v8, :cond_2e

    goto :goto_23

    .line 535
    :cond_2e
    if-eq v0, v9, :cond_46

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_42} :catch_f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_42} :catch_f8
    .catchall {:try_start_16 .. :try_end_42} :catchall_f6

    .line 583
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 537
    return-void

    .line 539
    :cond_46
    :try_start_46
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "packages"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_51} :catch_f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_51} :catch_f8
    .catchall {:try_start_46 .. :try_end_51} :catchall_f6

    if-nez v0, :cond_57

    .line 583
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 540
    return-void

    .line 542
    :cond_57
    :goto_57
    :try_start_57
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_f2

    .line 543
    if-ne v0, v9, :cond_ec

    .line 544
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 545
    const-string/jumbo v10, "package"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 546
    const-string/jumbo v0, "name"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 547
    new-instance v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v11}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    .line 548
    const-string v0, "elapsedIdleTime"

    .line 549
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 550
    const-string/jumbo v0, "screenIdleTime"

    .line 551
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 552
    const-string v0, "lastPredictedTime"

    const-wide/16 v12, 0x0

    invoke-direct {v1, v7, v0, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    iput-wide v14, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 554
    const-string v0, "appLimitBucket"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    if-nez v0, :cond_a6

    .line 557
    const/16 v0, 0xa

    goto :goto_aa

    .line 558
    :cond_a6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_aa
    iput v0, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 559
    const-string v0, "bucketReason"

    .line 560
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    const-string v14, "lastJobRunTime"

    const-wide/high16 v8, -0x8000000000000000L

    invoke-direct {v1, v7, v14, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 563
    const-string v8, "activeTimeoutTime"

    invoke-direct {v1, v7, v8, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    .line 565
    const-string/jumbo v8, "workingSetTimeoutTime"

    invoke-direct {v1, v7, v8, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    .line 567
    const/16 v8, 0x100

    iput v8, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_d1} :catch_f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_d1} :catch_f8
    .catchall {:try_start_57 .. :try_end_d1} :catchall_f6

    .line 568
    if-eqz v0, :cond_dd

    .line 570
    const/16 v8, 0x10

    .line 571
    :try_start_d5
    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_d5 .. :try_end_db} :catch_dc
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_db} :catch_f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d5 .. :try_end_db} :catch_f8
    .catchall {:try_start_d5 .. :try_end_db} :catchall_f6

    .line 573
    goto :goto_dd

    .line 572
    :catch_dc
    move-exception v0

    .line 575
    :cond_dd
    :goto_dd
    const/4 v0, -0x1

    :try_start_de
    iput v0, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 576
    move-object/from16 v8, p2

    invoke-virtual {v8, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e5} :catch_f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_de .. :try_end_e5} :catch_f8
    .catchall {:try_start_de .. :try_end_e5} :catchall_f6

    goto :goto_e8

    .line 545
    :cond_e6
    move-object/from16 v8, p2

    .line 578
    :goto_e8
    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_57

    .line 543
    :cond_ec
    move-object/from16 v8, p2

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_57

    .line 583
    :cond_f2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_114

    :catchall_f6
    move-exception v0

    goto :goto_116

    .line 580
    :catch_f8
    move-exception v0

    move-object v5, v6

    goto :goto_ff

    .line 583
    :catchall_fb
    move-exception v0

    move-object v6, v5

    goto :goto_116

    .line 580
    :catch_fe
    move-exception v0

    .line 581
    :goto_ff
    :try_start_ff
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_111
    .catchall {:try_start_ff .. :try_end_111} :catchall_fb

    .line 583
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 584
    :goto_114
    nop

    .line 585
    return-void

    .line 583
    :goto_116
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private readScreenOnTime()V
    .registers 5

    .line 178
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 181
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 182
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 184
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2b} :catch_2c

    goto :goto_2d

    .line 185
    :catch_2c
    move-exception v0

    .line 186
    :goto_2d
    goto :goto_31

    .line 188
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 190
    :goto_31
    return-void
.end method

.method private writeScreenOnTime()V
    .registers 7

    .line 193
    const-string v0, "\n"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 194
    nop

    .line 196
    :try_start_c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_3e

    .line 197
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 198
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 199
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3b} :catch_3c

    .line 202
    goto :goto_43

    .line 200
    :catch_3c
    move-exception v0

    goto :goto_40

    :catch_3e
    move-exception v0

    const/4 v2, 0x0

    .line 201
    :goto_40
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 203
    :goto_43
    return-void
.end method


# virtual methods
.method public clearUsage(Ljava/lang/String;I)V
    .registers 3

    .line 454
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p2

    .line 455
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V
    .registers 20

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "App Standby States:"

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 656
    iget-object v4, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 658
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v7

    .line 659
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v9

    .line 660
    if-nez v4, :cond_27

    return-void

    .line 661
    :cond_27
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 662
    const/4 v12, 0x0

    :goto_2c
    if-ge v12, v11, :cond_104

    .line 663
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 664
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 665
    if-eqz v3, :cond_45

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_45

    .line 666
    move-object v15, v4

    goto/16 :goto_fd

    .line 668
    :cond_45
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " u="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " bucket="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " reason="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 672
    invoke-static {v15}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 673
    const-string v3, " used="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 674
    move-object v15, v4

    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long v3, v7, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 675
    const-string v3, " usedScr="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long v3, v9, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 677
    const-string v3, " lastPred="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long v3, v7, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 679
    const-string v3, " activeLeft="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 680
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    sub-long/2addr v3, v7

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 682
    const-string v3, " wsLeft="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 683
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    sub-long/2addr v3, v7

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 685
    const-string v3, " lastJob="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 686
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v3, v7, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " idle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v2, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v4

    if-eqz v4, :cond_ed

    const-string/jumbo v4, "y"

    goto :goto_f0

    :cond_ed
    const-string/jumbo v4, "n"

    :goto_f0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 662
    :goto_fd
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p3

    move-object v4, v15

    goto/16 :goto_2c

    .line 690
    :cond_104
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 691
    const-string/jumbo v2, "totalElapsedTime="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 694
    const-string/jumbo v2, "totalScreenOnTime="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 698
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 11

    .line 409
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 410
    nop

    .line 411
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 412
    if-nez p1, :cond_12

    const/16 p1, 0x32

    goto :goto_14

    :cond_12
    iget p1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_14
    return p1
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_2e

    .line 420
    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 421
    if-eqz p2, :cond_23

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v5, v5, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_25

    :cond_23
    const/16 v5, 0xa

    :goto_25
    invoke-direct {v3, v4, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 420
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 423
    :cond_2e
    return-object v1
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .registers 11

    .line 427
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 428
    nop

    .line 429
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 430
    if-eqz p1, :cond_12

    iget p1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 11

    .line 328
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 329
    nop

    .line 330
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 331
    return-object p1
.end method

.method public getElapsedTime(J)J
    .registers 5

    .line 434
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getScreenOnTime(J)J
    .registers 7

    .line 165
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 166
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_a

    .line 167
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    .line 169
    :cond_a
    return-wide v0
.end method

.method getScreenOnTimeFile()Ljava/io/File;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v2, "screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .registers 13

    .line 482
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 483
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 486
    if-nez p1, :cond_12

    array-length p1, p5

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 488
    :cond_12
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long/2addr v0, v2

    .line 489
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr p2, v2

    .line 496
    array-length p1, p5

    add-int/lit8 p1, p1, -0x1

    :goto_23
    if-ltz p1, :cond_35

    .line 497
    aget-wide v2, p5, p1

    cmp-long p4, v0, v2

    if-ltz p4, :cond_32

    aget-wide v2, p6, p1

    cmp-long p4, p2, v2

    if-ltz p4, :cond_32

    .line 499
    return p1

    .line 496
    :cond_32
    add-int/lit8 p1, p1, -0x1

    goto :goto_23

    .line 502
    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .registers 11

    .line 398
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 399
    nop

    .line 400
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 402
    if-eqz p1, :cond_20

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_18

    goto :goto_20

    .line 405
    :cond_18
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr p2, v0

    return-wide p2

    .line 403
    :cond_20
    :goto_20
    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method

.method getUserFile(I)Ljava/io/File;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 507
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "app_idle_stats.xml"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
    return-object v0
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .registers 11

    .line 320
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 321
    nop

    .line 322
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 323
    iget p1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p2, 0x28

    if-lt p1, p2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 317
    return-void
.end method

.method public reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 13

    .line 233
    cmp-long p2, p7, p5

    if-lez p2, :cond_3b

    .line 235
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long/2addr p7, v2

    add-long/2addr v0, p7

    .line 236
    const/16 p2, 0xa

    if-ne p3, p2, :cond_17

    .line 237
    iget-wide p7, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p7

    iput-wide p7, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    goto :goto_3b

    .line 239
    :cond_17
    const/16 p2, 0x14

    if-ne p3, p2, :cond_24

    .line 240
    iget-wide p7, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p7

    iput-wide p7, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    goto :goto_3b

    .line 243
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot set a timeout on bucket="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_3b
    :goto_3b
    const-wide/16 p7, 0x0

    cmp-long p2, p5, p7

    if-eqz p2, :cond_50

    .line 249
    iget-wide p7, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v0, p5, v0

    add-long/2addr p7, v0

    iput-wide p7, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 251
    invoke-virtual {p0, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide p5

    iput-wide p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 254
    :cond_50
    iget p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-le p2, p3, :cond_56

    .line 255
    iput p3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 262
    :cond_56
    or-int/lit16 p2, p4, 0x300

    iput p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 264
    return-object p1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 18

    .line 283
    move-object v6, p0

    move v0, p2

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 284
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 285
    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .registers 15

    .line 336
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 337
    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .registers 14

    .line 341
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 342
    nop

    .line 343
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 344
    iput p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 345
    iput p6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 347
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    .line 349
    const p4, 0xff00

    and-int/2addr p4, p6

    const/16 p6, 0x500

    if-ne p4, p6, :cond_21

    .line 350
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 351
    iput p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 353
    :cond_21
    if-eqz p7, :cond_27

    .line 354
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    .line 355
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    .line 361
    :cond_27
    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .registers 12

    .line 439
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 440
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 442
    if-eqz p3, :cond_17

    .line 443
    const/16 p2, 0x28

    iput p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 444
    const/16 p2, 0x400

    iput p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_1f

    .line 446
    :cond_17
    const/16 p2, 0xa

    iput p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 448
    const/16 p2, 0x303

    iput p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 450
    :goto_1f
    iget p1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    return p1
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 11

    .line 382
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 383
    nop

    .line 384
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 385
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 386
    return-void
.end method

.method shouldInformListeners(Ljava/lang/String;IJI)Z
    .registers 12

    .line 460
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 461
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 463
    iget p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq p2, p5, :cond_14

    .line 464
    iput p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 465
    const/4 p1, 0x1

    return p1

    .line 467
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public updateDisplay(ZJ)V
    .registers 8

    .line 149
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 151
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 152
    iget-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz p1, :cond_e

    .line 153
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    goto :goto_22

    .line 155
    :cond_e
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 156
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 157
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 162
    :goto_22
    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .registers 5

    .line 370
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 371
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 372
    return-void
.end method

.method public userFileExists(I)Z
    .registers 2

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public writeAppIdleDurations()V
    .registers 7

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 211
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 212
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 213
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 214
    return-void
.end method

.method public writeAppIdleTimes(I)V
    .registers 18

    .line 594
    const-string/jumbo v0, "package"

    const-string/jumbo v1, "packages"

    const-string v2, "AppIdleHistory"

    .line 595
    new-instance v3, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 597
    const/4 v4, 0x0

    :try_start_12
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_e5

    .line 598
    :try_start_16
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 600
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 601
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 602
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 603
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 605
    invoke-virtual {v7, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 607
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 608
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 609
    const/4 v9, 0x0

    :goto_42
    if-ge v9, v8, :cond_d9

    .line 610
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 612
    if-nez v10, :cond_53

    .line 613
    const-string v10, "Skipping App Idle write for unexpected null package"

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    goto/16 :goto_d5

    .line 616
    :cond_53
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 617
    invoke-virtual {v7, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    const-string/jumbo v12, "name"

    invoke-virtual {v7, v4, v12, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    const-string v10, "elapsedIdleTime"

    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 620
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 619
    invoke-virtual {v7, v4, v10, v12}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    const-string/jumbo v10, "screenIdleTime"

    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 622
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 621
    invoke-virtual {v7, v4, v10, v12}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    const-string v10, "lastPredictedTime"

    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 624
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 623
    invoke-virtual {v7, v4, v10, v12}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    const-string v10, "appLimitBucket"

    iget v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 626
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 625
    invoke-virtual {v7, v4, v10, v12}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    const-string v10, "bucketReason"

    iget v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 628
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 627
    invoke-virtual {v7, v4, v10, v12}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-lez v10, :cond_ad

    .line 630
    const-string v10, "activeTimeoutTime"

    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v4, v10, v12}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    :cond_ad
    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v10, v12, v14

    if-lez v10, :cond_bf

    .line 634
    const-string/jumbo v10, "workingSetTimeoutTime"

    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v4, v10, v12}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 637
    :cond_bf
    iget-wide v12, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v10, v12, v14

    if-eqz v10, :cond_d2

    .line 638
    const-string v10, "lastJobRunTime"

    iget-wide v11, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v4, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 641
    :cond_d2
    invoke-virtual {v7, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    :goto_d5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_42

    .line 644
    :cond_d9
    invoke-virtual {v7, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    invoke-virtual {v7}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 646
    invoke-virtual {v3, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_e2} :catch_e3

    .line 650
    goto :goto_100

    .line 647
    :catch_e3
    move-exception v0

    goto :goto_e7

    :catch_e5
    move-exception v0

    move-object v5, v4

    .line 648
    :goto_e7
    invoke-virtual {v3, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing app idle file for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    :goto_100
    return-void
.end method
