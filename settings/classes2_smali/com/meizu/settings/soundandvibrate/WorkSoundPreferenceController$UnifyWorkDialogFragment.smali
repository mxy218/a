.class public Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$UnifyWorkDialogFragment;
.super Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;
.source "WorkSoundPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnifyWorkDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 5

    .line 354
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "UnifyWorkDialogFragment"

    .line 355
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_19

    .line 356
    new-instance v2, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$UnifyWorkDialogFragment;

    invoke-direct {v2}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$UnifyWorkDialogFragment;-><init>()V

    const/16 v3, 0xc8

    .line 357
    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 358
    invoke-virtual {v2, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 364
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    .line 365
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 366
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->enableWorkSync()V

    :cond_f
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 345
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121a17

    .line 346
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121a16

    .line 347
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121a18

    .line 348
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040009

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
