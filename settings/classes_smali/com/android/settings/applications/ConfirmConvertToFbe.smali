.class public Lcom/android/settings/applications/ConfirmConvertToFbe;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ConfirmConvertToFbe.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x193

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p2, 0x7f0d007f

    const/4 p3, 0x0

    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0130

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 38
    new-instance p3, Lcom/android/settings/applications/ConfirmConvertToFbe$1;

    invoke-direct {p3, p0}, Lcom/android/settings/applications/ConfirmConvertToFbe$1;-><init>(Lcom/android/settings/applications/ConfirmConvertToFbe;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
