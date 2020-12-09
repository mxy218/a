.class Lcom/android/server/DeviceIdleController$6;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 680
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 683
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 684
    :try_start_3
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p2}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 685
    monitor-exit p1

    .line 686
    return-void

    .line 685
    :catchall_a
    move-exception p2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p2
.end method
