.class public Lcom/android/server/devicepolicy/DevicePolicyConstants;
.super Ljava/lang/Object;
.source "DevicePolicyConstants.java"


# static fields
.field private static final BATTERY_THRESHOLD_CHARGING_KEY:Ljava/lang/String; = "battery_threshold_charging"

.field private static final BATTERY_THRESHOLD_NOT_CHARGING_KEY:Ljava/lang/String; = "battery_threshold_not_charging"

.field private static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_increase"

.field private static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_sec"

.field private static final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_max_backoff_sec"

.field private static final DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC_KEY:Ljava/lang/String; = "das_died_service_stable_connection_threshold_sec"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field public final BATTERY_THRESHOLD_CHARGING:I

.field public final BATTERY_THRESHOLD_NOT_CHARGING:I

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 13

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 87
    :try_start_a
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_e

    .line 92
    goto :goto_25

    .line 88
    :catch_e
    move-exception v1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad device policy settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DevicePolicyManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_25
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 95
    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 94
    const-string p1, "das_died_service_reconnect_backoff_sec"

    invoke-virtual {v0, p1, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 97
    const/high16 p1, 0x40000000  # 2.0f

    const-string v5, "das_died_service_reconnect_backoff_increase"

    invoke-virtual {v0, v5, p1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result p1

    float-to-double v5, p1

    .line 100
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    .line 100
    const-string p1, "das_died_service_reconnect_max_backoff_sec"

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 103
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x2

    .line 105
    invoke-virtual {p1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    .line 103
    const-string p1, "das_died_service_stable_connection_threshold_sec"

    invoke-virtual {v0, p1, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 107
    const/16 p1, 0x28

    const-string v9, "battery_threshold_not_charging"

    invoke-virtual {v0, v9, p1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 110
    const/16 v9, 0x14

    const-string v10, "battery_threshold_charging"

    invoke-virtual {v0, v10, v9}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 114
    const-wide/16 v9, 0x5

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 117
    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    .line 118
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 121
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 124
    iput-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 125
    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 126
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 127
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 129
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    .line 130
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    .line 131
    return-void
.end method

.method public static loadFromString(Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .registers 2

    .line 134
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    const-string v0, "Constants:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 145
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(D)V

    .line 149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 153
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    const-string p1, "  DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 156
    return-void
.end method
