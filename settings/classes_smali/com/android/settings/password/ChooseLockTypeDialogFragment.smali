.class public Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ChooseLockTypeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;,
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

.field private mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V
    .registers 4

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private static copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V
    .registers 4

    .line 97
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;
    .registers 3

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    .line 61
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    new-instance p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;-><init>()V

    .line 63
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x3de

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 112
    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v0, :cond_b

    .line 113
    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    goto :goto_17

    .line 115
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 116
    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v0, :cond_16

    .line 117
    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-eqz p1, :cond_24

    .line 121
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ScreenLockType;

    invoke-interface {p1, p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;->onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V

    :cond_24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 103
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 105
    new-instance v0, Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    .line 130
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleScreenLockTypes(IZ)Ljava/util/List;

    move-result-object v1

    .line 133
    new-instance v2, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-direct {v2, p1, v1, v3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    .line 134
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1213b0

    .line 135
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
