.class final Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaRouterServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    .line 714
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 717
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 718
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 719
    iget-object p2, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p2}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 720
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-object p1, v0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 721
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput-boolean p1, v0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 722
    monitor-exit p2

    goto :goto_2d

    :catchall_2a
    move-exception p1

    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw p1

    .line 724
    :cond_2d
    :goto_2d
    return-void
.end method
