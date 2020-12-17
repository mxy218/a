.class public Lcom/android/settings/location/LocationScanningPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LocationScanningPreferenceController.java"


# static fields
.field static final KEY_LOCATION_SCANNING:Ljava/lang/String; = "location_scanning"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "location_scanning"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    const/4 p0, 0x3

    :goto_12
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 6

    .line 39
    iget-object v0, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    .line 41
    :goto_14
    iget-object v3, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_23

    move v1, v2

    :cond_23
    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    const v0, 0x7f121222

    goto :goto_3e

    :cond_2b
    if-eqz v0, :cond_33

    if-nez v1, :cond_33

    const v0, 0x7f121221

    goto :goto_3e

    :cond_33
    if-nez v0, :cond_3b

    if-eqz v1, :cond_3b

    const v0, 0x7f121220

    goto :goto_3e

    :cond_3b
    const v0, 0x7f12121f

    .line 53
    :goto_3e
    iget-object p0, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
