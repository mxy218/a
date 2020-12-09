.class Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrectionsProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssMeasurementCorrectionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssMeasurementCorrectionsProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 2

    .line 143
    invoke-static {p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->access$100(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p1

    return p1
.end method

.method public isMeasurementCorrectionsSupported()Z
    .registers 2

    .line 138
    invoke-static {}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->access$000()Z

    move-result v0

    return v0
.end method
