.class public Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BasebandVersionPreferenceController.java"


# static fields
.field static final BASEBAND_PROPERTY:Ljava/lang/String; = "gsm.version.baseband"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x3

    :goto_b
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1206d0

    const-string v2, "gsm.version.baseband"

    if-eqz v0, :cond_2c

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v3, ","

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 51
    array-length v3, v0

    if-lez v3, :cond_2c

    const/4 p0, 0x0

    .line 52
    aget-object p0, v0, p0

    return-object p0

    .line 56
    :cond_2c
    iget-object p0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
