.class Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;
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

    .line 1337
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1340
    new-instance p1, Lcom/meizu/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {p2}, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/meizu/settings/applications/InstalledAppDetails;

    move-result-object p2

    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/meizu/settings/applications/InstalledAppDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$100(Lcom/meizu/settings/applications/InstalledAppDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x3

    invoke-direct {p1, p2, p0, v0}, Lcom/meizu/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 v0, 0x0

    aput-object v0, p0, p2

    .line 1342
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
