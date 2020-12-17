.class Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 4

    .line 267
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-static {p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$400(Lcom/meizu/settings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x2

    .line 268
    :goto_f
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 269
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$400(Lcom/meizu/settings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
