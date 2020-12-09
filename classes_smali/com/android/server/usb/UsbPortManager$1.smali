.class Lcom/android/server/usb/UsbPortManager$1;
.super Landroid/os/Handler;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V
    .registers 3

    .line 1100
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_36

    .line 1113
    :cond_9
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    .line 1114
    invoke-static {p1}, Lcom/android/server/usb/UsbPortManager;->access$800(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1113
    invoke-static {p1, v0}, Lcom/android/server/usb/UsbPortManager;->access$702(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    goto :goto_36

    .line 1105
    :cond_1c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 1106
    const-string/jumbo v0, "port_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1107
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$300(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1108
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/android/server/usb/UsbPortManager;->access$600(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 1109
    monitor-exit v0

    .line 1110
    nop

    .line 1118
    :goto_36
    return-void

    .line 1109
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_37

    throw p1
.end method
