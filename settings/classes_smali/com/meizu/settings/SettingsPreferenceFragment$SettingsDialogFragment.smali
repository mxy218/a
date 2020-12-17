.class public Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# static fields
.field private static mDialogId:I

.field private static mParentFragment:Landroid/app/Fragment;


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 594
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/DialogCreatable;I)Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .registers 4

    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "newInstance: "

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    sput p1, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 601
    instance-of p1, p0, Landroid/app/Fragment;

    if-eqz p1, :cond_31

    .line 605
    check-cast p0, Landroid/app/Fragment;

    sput-object p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 607
    new-instance p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>()V

    .line 608
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 609
    sget v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    const-string v1, "key_dialog_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    sget-object v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getId()I

    move-result v0

    const-string v1, "key_parent_fragment_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0

    .line 602
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment argument must be an instance of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroid/app/Fragment;

    .line 603
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDialogId()I
    .registers 1

    .line 676
    sget p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 661
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 662
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_a

    .line 663
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_a
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    if-eqz p1, :cond_66

    const/4 v0, 0x0

    const-string v1, "key_dialog_id"

    .line 636
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 637
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    const/4 v0, -0x1

    const-string v1, "key_parent_fragment_id"

    .line 638
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 639
    sget-object v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v0, :cond_26

    .line 640
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 642
    :cond_26
    sget-object v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/DialogCreatable;

    if-nez v1, :cond_5d

    .line 643
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    sget-object v1, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_40

    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    .line 646
    :cond_40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/settings/DialogCreatable;

    .line 648
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 651
    :cond_5d
    instance-of p1, v0, Lcom/meizu/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_66

    .line 653
    check-cast v0, Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {v0, p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$1002(Lcom/meizu/settings/SettingsPreferenceFragment;Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 656
    :cond_66
    sget-object p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast p0, Lcom/android/settings/DialogCreatable;

    sget p1, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {p0, p1}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .registers 3

    .line 681
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 684
    sget-object v0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v0, Lcom/meizu/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_19

    .line 686
    check-cast v0, Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$1000(Lcom/meizu/settings/SettingsPreferenceFragment;)Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_19

    .line 687
    sget-object p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast p0, Lcom/meizu/settings/SettingsPreferenceFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$1002(Lcom/meizu/settings/SettingsPreferenceFragment;Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_19
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 669
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 670
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_a

    .line 671
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 617
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 618
    sget-object p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz p0, :cond_19

    .line 619
    sget p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    const-string v0, "key_dialog_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    sget-object p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result p0

    const-string v0, "key_parent_fragment_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 626
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 628
    sget-object p0, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz p0, :cond_10

    instance-of v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_10

    .line 629
    check-cast p0, Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDialogShowing()V

    :cond_10
    return-void
.end method
