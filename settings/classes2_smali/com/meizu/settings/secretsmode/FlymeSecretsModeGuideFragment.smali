.class public Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeSecretsModeGuideFragment.java"


# instance fields
.field private mGuideType:I

.field private mSetPasswordBtn:Landroid/widget/TextView;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->startEnterPasswordFragment()V

    return-void
.end method

.method private refreshView(Z)V
    .registers 3

    .line 70
    iget v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mGuideType:I

    if-nez v0, :cond_1d

    .line 71
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f121366

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f121369

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mSetPasswordBtn:Landroid/widget/TextView;

    const p1, 0x7f121367

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    :cond_1d
    if-eqz p1, :cond_28

    .line 76
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f12136b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_30

    .line 78
    :cond_28
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f12136c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 80
    :goto_30
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f12136a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mSetPasswordBtn:Landroid/widget/TextView;

    const p1, 0x7f121368

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_40
    return-void
.end method

.method private startEnterPasswordFragment()V
    .registers 11

    .line 86
    iget v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mGuideType:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x4

    .line 89
    :goto_7
    iget v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mGuideType:I

    if-nez v1, :cond_f

    const v1, 0x7f121367

    goto :goto_12

    :cond_f
    const v1, 0x7f121368

    :goto_12
    move v7, v1

    .line 92
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "password_from"

    .line 93
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v2 .. v9}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 100
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->hideActionbar(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->handleCanclelTextClick(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    const/4 v0, -0x1

    if-ne p2, v0, :cond_26

    .line 109
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 111
    iget v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mGuideType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secrets_mode_enable"

    const-string v3, "FlymeSecretsModeGuideFragment"

    invoke-virtual {v0, v2, v3, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_26
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 40
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    .line 42
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "guide_type"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mGuideType:I

    .line 44
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d021a

    const/4 p3, 0x0

    .line 50
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    const p2, 0x7f0a0753

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f0a06f5

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mSummary:Landroid/widget/TextView;

    const p2, 0x7f0a0653

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mSetPasswordBtn:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->refreshView(Z)V

    .line 61
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;->mSetPasswordBtn:Landroid/widget/TextView;

    new-instance p2, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment$1;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeGuideFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
