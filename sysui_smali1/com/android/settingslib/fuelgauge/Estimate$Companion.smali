.class public final Lcom/android/settingslib/fuelgauge/Estimate$Companion;
.super Ljava/lang/Object;
.source "Estimate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/fuelgauge/Estimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007¨\u0006\u000c"
    }
    d2 = {
        "Lcom/android/settingslib/fuelgauge/Estimate$Companion;",
        "",
        "()V",
        "getCachedEstimateIfAvailable",
        "Lcom/android/settingslib/fuelgauge/Estimate;",
        "context",
        "Landroid/content/Context;",
        "getLastCacheUpdateTime",
        "Ljava/time/Instant;",
        "storeCachedEstimate",
        "",
        "estimate",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/settingslib/fuelgauge/Estimate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCachedEstimateIfAvailable(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "battery_estimates_last_update_time"

    const-wide/16 v0, -0x1

    .line 45
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 48
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 48
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-lez p1, :cond_2b

    const/4 p0, 0x0

    goto :goto_50

    .line 50
    :cond_2b
    new-instance p1, Lcom/android/settingslib/fuelgauge/Estimate;

    const/4 v0, -0x1

    int-to-long v0, v0

    const-string/jumbo v2, "time_remaining_estimate_millis"

    .line 51
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x0

    const-string/jumbo v5, "time_remaining_estimate_based_on_usage"

    .line 54
    invoke-static {p0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_42

    move v4, v6

    :cond_42
    const-string v5, "average_time_to_discharge"

    .line 56
    invoke-static {p0, v5, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, p1

    move-wide v1, v2

    move v3, v4

    move-wide v4, v5

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    move-object p0, p1

    :goto_50
    return-object p0
.end method

.method public final storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "estimate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 72
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v0

    const-string/jumbo p1, "time_remaining_estimate_millis"

    .line 71
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 74
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result p1

    const-string/jumbo v0, "time_remaining_estimate_based_on_usage"

    .line 73
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide p1

    const-string v0, "average_time_to_discharge"

    .line 75
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "battery_estimates_last_update_time"

    .line 77
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method
