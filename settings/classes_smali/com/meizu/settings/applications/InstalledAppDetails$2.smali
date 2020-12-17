.class Lcom/meizu/settings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V
    .registers 2

    .line 1412
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$2;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1415
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails$2;->this$0:Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    invoke-static {p1, p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->access$1300(Lcom/meizu/settings/applications/InstalledAppDetails;Z)V

    return-void
.end method
