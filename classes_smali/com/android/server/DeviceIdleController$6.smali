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
    .param p1, "this$0"  # Lcom/android/server/DeviceIdleController;

    .line 648
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 651
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 652
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 653
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
