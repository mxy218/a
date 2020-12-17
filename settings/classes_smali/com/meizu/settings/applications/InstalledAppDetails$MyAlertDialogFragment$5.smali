.class Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;
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

    .line 1324
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1327
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/meizu/settings/applications/InstalledAppDetails;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/meizu/settings/applications/InstalledAppDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$100(Lcom/meizu/settings/applications/InstalledAppDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$1000(Lcom/meizu/settings/applications/InstalledAppDetails;Ljava/lang/String;)V

    return-void
.end method
