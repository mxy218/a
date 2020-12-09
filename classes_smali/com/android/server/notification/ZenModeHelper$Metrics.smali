.class final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Metrics"
.end annotation


# static fields
.field private static final COUNTER_MODE_PREFIX:Ljava/lang/String; = "dnd_mode_"

.field private static final COUNTER_RULE:Ljava/lang/String; = "dnd_rule_count"

.field private static final COUNTER_TYPE_PREFIX:Ljava/lang/String; = "dnd_type_"

.field private static final DND_OFF:I = 0x0

.field private static final DND_ON_AUTOMATIC:I = 0x2

.field private static final DND_ON_MANUAL:I = 0x1

.field private static final MINIMUM_LOG_PERIOD_MS:J = 0xea60L


# instance fields
.field private mModeLogTimeMs:J

.field private mNumZenRules:I

.field private mPreviousZenMode:I

.field private mPreviousZenType:I

.field private mRuleCountLogTime:J

.field private mTypeLogTimeMs:J

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 4

    .line 1359
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    .line 1369
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 1370
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 1372
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 1373
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 1376
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 1377
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .registers 3

    .line 1359
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .registers 1

    .line 1359
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method private emit()V
    .registers 2

    .line 1390
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$200(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 1391
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitZenMode()V

    .line 1392
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitRules()V

    .line 1393
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitDndType()V

    .line 1394
    return-void
.end method

.method private emitDndType()V
    .registers 10

    .line 1428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1429
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    sub-long v2, v0, v2

    .line 1430
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 1431
    :try_start_d
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_17

    move v5, v6

    goto :goto_18

    :cond_17
    move v5, v7

    .line 1432
    :goto_18
    if-nez v5, :cond_1c

    move v6, v7

    goto :goto_26

    .line 1433
    :cond_1c
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v5, v5, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v5, :cond_25

    goto :goto_26

    :cond_25
    const/4 v6, 0x2

    .line 1434
    :goto_26
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    if-ne v6, v5, :cond_31

    const-wide/32 v7, 0xea60

    cmp-long v5, v2, v7

    if-lez v5, :cond_57

    .line 1436
    :cond_31
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_53

    .line 1437
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1438
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dnd_type_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-int v2, v2

    .line 1437
    invoke-static {v5, v7, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1440
    :cond_53
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    .line 1441
    iput v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 1443
    :cond_57
    monitor-exit v4

    .line 1444
    return-void

    .line 1443
    :catchall_59
    move-exception v0

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_d .. :try_end_5b} :catchall_59

    throw v0
.end method

.method private emitRules()V
    .registers 8

    .line 1410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1411
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    sub-long/2addr v0, v2

    .line 1412
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, v2, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 1413
    :try_start_c
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1414
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    if-ne v4, v3, :cond_21

    const-wide/32 v4, 0xea60

    cmp-long v4, v0, v4

    if-lez v4, :cond_39

    .line 1416
    :cond_21
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_35

    .line 1417
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "dnd_rule_count"

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    sub-int v6, v3, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1420
    :cond_35
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 1422
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 1424
    :cond_39
    monitor-exit v2

    .line 1425
    return-void

    .line 1424
    :catchall_3b
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private emitZenMode()V
    .registers 8

    .line 1397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1398
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    sub-long v2, v0, v2

    .line 1399
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v5, :cond_17

    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-lez v4, :cond_41

    .line 1400
    :cond_17
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_39

    .line 1401
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1402
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnd_mode_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-int v2, v2

    .line 1401
    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1404
    :cond_39
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v2, v2, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iput v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 1405
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 1407
    :cond_41
    return-void
.end method


# virtual methods
.method onConfigChanged()V
    .registers 1

    .line 1386
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    .line 1387
    return-void
.end method

.method onZenModeChanged()V
    .registers 1

    .line 1381
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    .line 1382
    return-void
.end method
