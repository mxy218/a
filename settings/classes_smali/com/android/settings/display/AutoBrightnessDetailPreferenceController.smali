.class public Lcom/android/settings/display/AutoBrightnessDetailPreferenceController;
.super Lcom/android/settings/display/AutoBrightnessPreferenceController;
.source "AutoBrightnessDetailPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/AutoBrightnessPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 2

    .line 30
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110027

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

.method public isSliceable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
