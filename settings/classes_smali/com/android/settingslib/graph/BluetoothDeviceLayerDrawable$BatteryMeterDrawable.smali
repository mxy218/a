.class Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BluetoothDeviceLayerDrawable.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private final mAspectRatio:F

.field mFrameColor:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# virtual methods
.method protected getAspectRatio()F
    .registers 1

    .line 124
    iget p0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    return p0
.end method

.method protected getRadiusRatio()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
