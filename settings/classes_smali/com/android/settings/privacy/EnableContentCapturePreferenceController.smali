.class public final Lcom/android/settings/privacy/EnableContentCapturePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "EnableContentCapturePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 2

    .line 45
    invoke-static {}, Lcom/android/settings/utils/ContentCaptureUtils;->isFeatureAvailable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 46
    invoke-static {}, Lcom/android/settings/utils/ContentCaptureUtils;->getServiceSettingsComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x3

    :goto_14
    return v0
.end method

.method public isChecked()Z
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/ContentCaptureUtils;->isEnabledForUser(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .registers 2

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/utils/ContentCaptureUtils;->setEnabledForUser(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
