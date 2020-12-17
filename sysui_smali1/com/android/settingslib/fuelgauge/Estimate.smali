.class public final Lcom/android/settingslib/fuelgauge/Estimate;
.super Ljava/lang/Object;
.source "Estimate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/fuelgauge/Estimate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000b¨\u0006\r"
    }
    d2 = {
        "Lcom/android/settingslib/fuelgauge/Estimate;",
        "",
        "estimateMillis",
        "",
        "isBasedOnUsage",
        "",
        "averageDischargeTime",
        "(JZJ)V",
        "getAverageDischargeTime",
        "()J",
        "getEstimateMillis",
        "()Z",
        "Companion",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/settingslib/fuelgauge/Estimate$Companion;


# instance fields
.field private final averageDischargeTime:J

.field private final estimateMillis:J

.field private final isBasedOnUsage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/settingslib/fuelgauge/Estimate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/fuelgauge/Estimate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settingslib/fuelgauge/Estimate;->Companion:Lcom/android/settingslib/fuelgauge/Estimate$Companion;

    return-void
.end method

.method public constructor <init>(JZJ)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    iput-boolean p3, p0, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage:Z

    iput-wide p4, p0, Lcom/android/settingslib/fuelgauge/Estimate;->averageDischargeTime:J

    return-void
.end method

.method public static final getCachedEstimateIfAvailable(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/settingslib/fuelgauge/Estimate;->Companion:Lcom/android/settingslib/fuelgauge/Estimate$Companion;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/fuelgauge/Estimate$Companion;->getCachedEstimateIfAvailable(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object p0

    return-object p0
.end method

.method public static final storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/settingslib/fuelgauge/Estimate;->Companion:Lcom/android/settingslib/fuelgauge/Estimate$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/fuelgauge/Estimate$Companion;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    return-void
.end method


# virtual methods
.method public final getAverageDischargeTime()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/android/settingslib/fuelgauge/Estimate;->averageDischargeTime:J

    return-wide v0
.end method

.method public final getEstimateMillis()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    return-wide v0
.end method

.method public final isBasedOnUsage()Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage:Z

    return p0
.end method
