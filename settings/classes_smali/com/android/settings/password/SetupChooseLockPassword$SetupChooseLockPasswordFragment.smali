.class public Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mLeftButtonIsSkip:Z

.field private mOptionsButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2

    const/4 p0, 0x1

    .line 129
    invoke-static {p1, p0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getStageType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onViewCreated$0$SetupChooseLockPassword$SetupChooseLockPasswordFragment(Landroid/view/View;)V
    .registers 3

    .line 99
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v0, "skip_screen_lock_dialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .registers 3

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_7

    .line 136
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    :goto_9
    if-ne p1, v0, :cond_c

    return-void

    .line 140
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    return-void
.end method

.method protected onSkipOrClearButtonClick(Landroid/view/View;)V
    .registers 7

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLeftButtonIsSkip:Z

    if-eqz v0, :cond_3d

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ":settings:frp_supported"

    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "for_fingerprint"

    .line 113
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "for_face"

    .line 116
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 107
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void

    .line 122
    :cond_3d
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onSkipOrClearButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 85
    new-instance v0, Lcom/android/settings/password/ChooseLockGenericController;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v0, p2, v1}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleScreenLockTypes(IZ)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 89
    :goto_1e
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string/jumbo v2, "show_options_button"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez v0, :cond_32

    const-string v2, "SetupChooseLockPassword"

    const-string v3, "Visible screen lock types is empty!"

    .line 92
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz p2, :cond_50

    if-eqz v0, :cond_50

    const p2, 0x7f0a0611

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    .line 97
    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPassword$SetupChooseLockPasswordFragment$7LM1nvoqF-sQTROd0Ke7_TfhlYM;

    invoke-direct {p2, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPassword$SetupChooseLockPasswordFragment$7LM1nvoqF-sQTROd0Ke7_TfhlYM;-><init>(Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_50
    return-void
.end method

.method protected updateUi()V
    .registers 5

    .line 152
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    .line 155
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f12143d

    invoke-virtual {v0, v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLeftButtonIsSkip:Z

    goto :goto_28

    .line 158
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f120b69

    invoke-virtual {v0, v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 159
    iput-boolean v2, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLeftButtonIsSkip:Z

    .line 162
    :goto_28
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_38

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p0, v1, :cond_33

    goto :goto_35

    :cond_33
    const/16 v2, 0x8

    .line 163
    :goto_35
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_38
    return-void
.end method
