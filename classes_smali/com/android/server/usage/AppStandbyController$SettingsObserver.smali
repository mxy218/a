.class Lcom/android/server/usage/AppStandbyController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_DOZE_TIMEOUT:J = 0xdbba00L

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_EXEMPTED_SYNC_START_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_INITIAL_FOREGROUND_SERVICE_START_TIMEOUT:J = 0x1b7740L

.field public static final DEFAULT_NOTIFICATION_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_STABLE_CHARGING_THRESHOLD:J = 0x927c0L

.field public static final DEFAULT_STRONG_USAGE_TIMEOUT:J = 0x36ee80L

.field public static final DEFAULT_SYNC_ADAPTER_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_INTERACTION_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_UPDATE_TIMEOUT:J = 0x6ddd00L

.field public static final DEFAULT_UNEXEMPTED_SYNC_SCHEDULED_TIMEOUT:J = 0x927c0L

.field private static final KEY_ELAPSED_TIME_THRESHOLDS:Ljava/lang/String; = "elapsed_thresholds"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_d_duration"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_nd_duration"

.field private static final KEY_EXEMPTED_SYNC_START_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_start_duration"

.field private static final KEY_IDLE_DURATION:Ljava/lang/String; = "idle_duration2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_IDLE_DURATION_OLD:Ljava/lang/String; = "idle_duration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_INITIAL_FOREGROUND_SERVICE_START_HOLD_DURATION:Ljava/lang/String; = "initial_foreground_service_start_duration"

.field private static final KEY_NOTIFICATION_SEEN_HOLD_DURATION:Ljava/lang/String; = "notification_seen_duration"

.field private static final KEY_PAROLE_DURATION:Ljava/lang/String; = "parole_duration"

.field private static final KEY_PAROLE_INTERVAL:Ljava/lang/String; = "parole_interval"

.field private static final KEY_PAROLE_WINDOW:Ljava/lang/String; = "parole_window"

.field private static final KEY_PREDICTION_TIMEOUT:Ljava/lang/String; = "prediction_timeout"

.field private static final KEY_SCREEN_TIME_THRESHOLDS:Ljava/lang/String; = "screen_thresholds"

.field private static final KEY_STABLE_CHARGING_THRESHOLD:Ljava/lang/String; = "stable_charging_threshold"

.field private static final KEY_STRONG_USAGE_HOLD_DURATION:Ljava/lang/String; = "strong_usage_duration"

.field private static final KEY_SYNC_ADAPTER_HOLD_DURATION:Ljava/lang/String; = "sync_adapter_duration"

.field private static final KEY_SYSTEM_INTERACTION_HOLD_DURATION:Ljava/lang/String; = "system_interaction_duration"

.field private static final KEY_SYSTEM_UPDATE_HOLD_DURATION:Ljava/lang/String; = "system_update_usage_duration"

.field private static final KEY_UNEXEMPTED_SYNC_SCHEDULED_HOLD_DURATION:Ljava/lang/String; = "unexempted_sync_scheduled_duration"

.field private static final KEY_WALLCLOCK_THRESHOLD:Ljava/lang/String; = "wallclock_threshold"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .registers 3

    .line 1887
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 1888
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1885
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1889
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 1902
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 1903
    return-void
.end method

.method parseLongArray(Ljava/lang/String;[J)[J
    .registers 7

    .line 2006
    if-nez p1, :cond_3

    return-object p2

    .line 2007
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2009
    return-object p2

    .line 2011
    :cond_a
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2012
    array-length v0, p1

    sget-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v1, v1

    if-ne v0, v1, :cond_53

    .line 2013
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v0, v0

    new-array v0, v0, [J

    .line 2014
    const/4 v1, 0x0

    :goto_1c
    sget-object v2, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_52

    .line 2016
    :try_start_21
    aget-object v2, p1, v1

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    aget-object v2, p1, v1

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_40

    .line 2019
    :cond_37
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_4c

    .line 2017
    :cond_40
    :goto_40
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_4c} :catch_50
    .catch Ljava/time/format/DateTimeParseException; {:try_start_21 .. :try_end_4c} :catch_50

    .line 2023
    :goto_4c
    nop

    .line 2014
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2021
    :catch_50
    move-exception p1

    .line 2022
    return-object p2

    .line 2025
    :cond_52
    return-object v0

    .line 2027
    :cond_53
    return-object p2
.end method

.method registerObserver()V
    .registers 4

    .line 1892
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1893
    const-string v1, "app_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1894
    const-string v1, "app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1895
    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1897
    return-void
.end method

.method updateSettings()V
    .registers 13

    .line 1921
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getAppIdleSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1925
    goto :goto_29

    .line 1922
    :catch_e
    move-exception v0

    .line 1923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value for app idle settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :goto_29
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1930
    :try_start_30
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "parole_interval"

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    .line 1934
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "parole_window"

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    .line 1937
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "parole_duration"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    .line 1940
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "screen_thresholds"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1941
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    sget-object v8, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v1, v8}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 1944
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "elapsed_thresholds"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1946
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    sget-object v3, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v1, v3}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 1948
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const-wide/16 v8, 0x4

    div-long/2addr v2, v8

    const-wide/32 v8, 0xdbba00

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 1950
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "strong_usage_duration"

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 1953
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "notification_seen_duration"

    const-wide/32 v10, 0x2932e00

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 1956
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "system_update_usage_duration"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 1959
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "prediction_timeout"

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 1962
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "sync_adapter_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 1966
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 1971
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 1976
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "exempted_sync_start_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 1981
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 1986
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "system_interaction_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 1990
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "initial_foreground_service_start_duration"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 1995
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "stable_charging_threshold"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    .line 1998
    monitor-exit v0
    :try_end_13c
    .catchall {:try_start_30 .. :try_end_13c} :catchall_148

    .line 2002
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    .line 2003
    return-void

    .line 1998
    :catchall_148
    move-exception v1

    :try_start_149
    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    throw v1
.end method
