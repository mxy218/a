.class Lcom/meizu/settings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/UsbSettings;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 100
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/UsbSettings;

    const/4 v1, 0x0

    const-string v2, "accessory"

    .line 101
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 100
    invoke-static {p1, v2}, Lcom/meizu/settings/deviceinfo/UsbSettings;->access$002(Lcom/meizu/settings/deviceinfo/UsbSettings;Z)Z

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/UsbSettings;

    const-string v2, "connected"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/meizu/settings/deviceinfo/UsbSettings;->access$102(Lcom/meizu/settings/deviceinfo/UsbSettings;Z)Z

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UsbAccessoryMode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/UsbSettings;

    invoke-static {p2}, Lcom/meizu/settings/deviceinfo/UsbSettings;->access$000(Lcom/meizu/settings/deviceinfo/UsbSettings;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", connected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/UsbSettings;

    invoke-static {p2}, Lcom/meizu/settings/deviceinfo/UsbSettings;->access$100(Lcom/meizu/settings/deviceinfo/UsbSettings;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/meizu/settings/deviceinfo/UsbSettings;

    invoke-static {p0, v0}, Lcom/meizu/settings/deviceinfo/UsbSettings;->access$200(Lcom/meizu/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    :cond_5a
    return-void
.end method
