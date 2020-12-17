.class Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeFileTransferDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "connected"

    .line 29
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1e
    return-void
.end method
