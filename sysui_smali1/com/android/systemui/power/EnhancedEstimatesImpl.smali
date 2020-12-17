.class public Lcom/android/systemui/power/EnhancedEstimatesImpl;
.super Ljava/lang/Object;
.source "EnhancedEstimatesImpl.java"

# interfaces
.implements Lcom/android/systemui/power/EnhancedEstimates;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimate()Lcom/android/settingslib/fuelgauge/Estimate;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isHybridNotificationEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
