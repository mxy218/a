.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 651
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 654
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Security State Changed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string/jumbo v0, "securityLock"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 659
    .local v2, "lock":Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "security lock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 661
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V

    goto :goto_4b

    .line 664
    :cond_36
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 663
    const-string v3, "adb_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_44

    .line 664
    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    nop

    :goto_45
    move v0, v1

    .line 665
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V

    .line 667
    .end local v0  # "enable":Z
    :goto_4b
    return-void
.end method
