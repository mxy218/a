.class public Lcom/android/settings/deviceinfo/hardwareinfo/DeviceModelPreferenceController;
.super Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;
.source "DeviceModelPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 2

    .line 31
    invoke-super {p0}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    const/4 p0, 0x0

    :cond_8
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 45
    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSliceable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public useDynamicSliceSummary()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
