.class public Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "RunningServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 609
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newConfirmStop(ILandroid/content/ComponentName;)Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;
    .registers 5

    .line 612
    new-instance v0, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;-><init>()V

    .line 613
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 614
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "comp"

    .line 615
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 616
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method getOwner()Lcom/meizu/settings/applications/RunningServiceDetails;
    .registers 1

    .line 621
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/RunningServiceDetails;

    return-object p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    .line 626
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_64

    .line 629
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "comp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 630
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getOwner()Lcom/meizu/settings/applications/RunningServiceDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    return-object v1

    .line 634
    :cond_25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 635
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12120e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 636
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12120d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120732

    new-instance v3, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;-><init>(Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V

    .line 637
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120725

    .line 646
    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 647
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 650
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
