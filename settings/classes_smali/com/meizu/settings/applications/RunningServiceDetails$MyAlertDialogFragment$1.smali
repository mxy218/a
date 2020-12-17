.class Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

.field final synthetic val$comp:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V
    .registers 3

    .line 638
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    iput-object p2, p0, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->val$comp:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 640
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->this$0:Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getOwner()Lcom/meizu/settings/applications/RunningServiceDetails;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->val$comp:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p1, 0x1

    .line 642
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    :cond_12
    return-void
.end method
