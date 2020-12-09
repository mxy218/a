.class final Lcom/android/server/AlarmManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME:J = 0x83d60L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_SHORT_TIME:J = 0x1388L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION:J = 0x2710L

.field private static final DEFAULT_APP_STANDBY_QUOTAS_ENABLED:Z = true

.field private static final DEFAULT_APP_STANDBY_WINDOW:J = 0x36ee80L

.field private static final DEFAULT_LISTENER_TIMEOUT:J = 0x1388L

.field private static final DEFAULT_MAX_ALARMS_PER_UID:I = 0x1f4

.field private static final DEFAULT_MAX_INTERVAL:J = 0x757b12c00L

.field private static final DEFAULT_MIN_FUTURITY:J = 0x1388L

.field private static final DEFAULT_MIN_INTERVAL:J = 0xea60L

.field static final KEY_ALLOW_WHILE_IDLE_LONG_TIME:Ljava/lang/String; = "allow_while_idle_long_time"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ALLOW_WHILE_IDLE_SHORT_TIME:Ljava/lang/String; = "allow_while_idle_short_time"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_APP_STANDBY_QUOTAS_ENABLED:Ljava/lang/String; = "app_standby_quotas_enabled"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_APP_STANDBY_WINDOW:Ljava/lang/String; = "app_standby_window"

.field static final KEY_LISTENER_TIMEOUT:Ljava/lang/String; = "listener_timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_MAX_ALARMS_PER_UID:Ljava/lang/String; = "max_alarms_per_uid"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_MAX_INTERVAL:Ljava/lang/String; = "max_interval"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public ALLOW_WHILE_IDLE_LONG_TIME:J

.field public ALLOW_WHILE_IDLE_SHORT_TIME:J

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public APP_STANDBY_MIN_DELAYS:[J

.field public APP_STANDBY_QUOTAS:[I

.field public APP_STANDBY_QUOTAS_ENABLED:Z

.field public APP_STANDBY_WINDOW:J

.field private final DEFAULT_APP_STANDBY_DELAYS:[J

.field private final DEFAULT_APP_STANDBY_QUOTAS:[I

.field private final KEYS_APP_STANDBY_DELAY:[Ljava/lang/String;

.field final KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public LISTENER_TIMEOUT:J

.field public MAX_ALARMS_PER_UID:I

.field public MAX_INTERVAL:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field private mLastAllowWhileIdleWhitelistDuration:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .registers 6

    .line 482
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    .line 483
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 403
    const-string/jumbo p1, "standby_active_quota"

    const-string/jumbo p2, "standby_working_quota"

    const-string/jumbo v0, "standby_frequent_quota"

    const-string/jumbo v1, "standby_rare_quota"

    const-string/jumbo v2, "standby_never_quota"

    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 413
    const-string/jumbo p1, "standby_active_delay"

    const-string/jumbo p2, "standby_working_delay"

    const-string/jumbo v0, "standby_frequent_delay"

    const-string/jumbo v1, "standby_rare_delay"

    const-string/jumbo v2, "standby_never_delay"

    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_DELAY:[Ljava/lang/String;

    .line 434
    const/4 p1, 0x5

    new-array p2, p1, [I

    fill-array-data p2, :array_86

    iput-object p2, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    .line 441
    new-array p1, p1, [J

    fill-array-data p1, :array_94

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_DELAYS:[J

    .line 450
    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 453
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 456
    const-wide v0, 0x757b12c00L

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 459
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 462
    const-wide/32 v0, 0x83d60

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 465
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 469
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 470
    const/16 p1, 0x1f4

    iput p1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 472
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS_ENABLED:Z

    .line 474
    const-wide/32 p1, 0x36ee80

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 475
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_DELAYS:[J

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    .line 476
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 479
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 480
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 484
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 485
    return-void

    :array_86
    .array-data 4
        0x2d0
        0xa
        0x2
        0x1
        0x0
    .end array-data

    :array_94
    .array-data 8
        0x0
        0x57e40
        0x1b7740
        0x6ddd00
        0x337f9800
    .end array-data
.end method

.method private updateConstants()V
    .registers 12

    .line 509
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "alarm_manager_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_16
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    .line 517
    goto :goto_1e

    .line 570
    :catchall_13
    move-exception v1

    goto/16 :goto_146

    .line 513
    :catch_16
    move-exception v1

    .line 516
    :try_start_17
    const-string v2, "AlarmManager"

    const-string v3, "Bad alarm manager settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    :goto_1e
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "min_futurity"

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 520
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "min_interval"

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 521
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "max_interval"

    const-wide v5, 0x757b12c00L

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 522
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allow_while_idle_short_time"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 524
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allow_while_idle_long_time"

    const-wide/32 v5, 0x83d60

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 526
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allow_while_idle_whitelist_duration"

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 529
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "listener_timeout"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 531
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_DELAY:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_DELAYS:[J

    aget-wide v5, v5, v4

    invoke-virtual {v2, v3, v5, v6}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 534
    const/4 v1, 0x1

    move v2, v1

    :goto_88
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_DELAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_ac

    .line 535
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_DELAY:[Ljava/lang/String;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    add-int/lit8 v8, v2, -0x1

    aget-wide v7, v7, v8

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_DELAYS:[J

    aget-wide v9, v9, v2

    .line 536
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 535
    invoke-virtual {v5, v6, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v5

    aput-wide v5, v3, v2

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 539
    :cond_ac
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "app_standby_quotas_enabled"

    invoke-virtual {v2, v3, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS_ENABLED:Z

    .line 542
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "app_standby_window"

    const-wide/32 v5, 0x36ee80

    invoke-virtual {v2, v3, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 544
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_d3

    .line 545
    const-string v2, "AlarmManager"

    const-string v3, "Cannot exceed the app_standby_window size of 3600000"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_f1

    .line 548
    :cond_d3
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_f1

    .line 550
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using a non-default app_standby_window of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_f1
    :goto_f1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v6, v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v4

    .line 556
    nop

    :goto_104
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_128

    .line 557
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v6, v6, v1

    .line 558
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 557
    invoke-virtual {v3, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v1

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    .line 561
    :cond_128
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "max_alarms_per_uid"

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 563
    iget v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-ge v1, v3, :cond_141

    .line 564
    const-string v1, "AlarmManager"

    const-string v2, "Cannot set max_alarms_per_uid lower than 500"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iput v3, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 569
    :cond_141
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 570
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :goto_146
    monitor-exit v0
    :try_end_147
    .catchall {:try_start_17 .. :try_end_147} :catchall_13

    throw v1
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 578
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 582
    const-string v0, "min_futurity"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 583
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 584
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 586
    const-string v1, "min_interval"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 587
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 588
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 590
    const-string v1, "max_interval"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 591
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 592
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 594
    const-string v1, "listener_timeout"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 595
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 596
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 598
    const-string v1, "allow_while_idle_short_time"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 599
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 600
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 602
    const-string v1, "allow_while_idle_long_time"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 603
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 604
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 606
    const-string v1, "allow_while_idle_whitelist_duration"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 607
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 608
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 610
    const-string v1, "max_alarms_per_uid"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 611
    iget v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 613
    const/4 v1, 0x0

    move v2, v1

    :goto_89
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_DELAY:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_a3

    .line 614
    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    aget-wide v3, v3, v2

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 616
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 619
    :cond_a3
    const-string v2, "app_standby_quotas_enabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 620
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS_ENABLED:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 622
    const-string v2, "app_standby_window"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 624
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 626
    nop

    :goto_c1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_d8

    .line 627
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 631
    :cond_d8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 632
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 574
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$Constants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 575
    return-void
.end method

.method dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 635
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 637
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 638
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 639
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide v2, 0x10300000007L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 640
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 641
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    const-wide v2, 0x10300000004L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 643
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    const-wide v2, 0x10300000005L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 645
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const-wide v2, 0x10300000006L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 648
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 649
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 505
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    .line 506
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 4

    .line 488
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 489
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "alarm_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 491
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    .line 492
    return-void
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .registers 5

    .line 495
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 496
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 497
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 498
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 499
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    .line 501
    :cond_1b
    return-void
.end method
