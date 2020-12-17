.class Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$8;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .registers 2

    .line 1352
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$8;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1355
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$8;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/meizu/settings/applications/InstalledAppDetails;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$1200(Lcom/meizu/settings/applications/InstalledAppDetails;Z)V

    return-void
.end method
