.class public Lcom/android/settingslib/widget/settingsspinner/SettingsSpinner;
.super Landroid/widget/Spinner;
.source "SettingsSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    sget p1, Lcom/android/settingslib/widget/R$drawable;->settings_spinner_background:I

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    return-void
.end method
