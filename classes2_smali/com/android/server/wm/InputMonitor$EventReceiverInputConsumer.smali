.class final Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
.super Lcom/android/server/wm/InputConsumerImpl;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventReceiverInputConsumer"
.end annotation


# instance fields
.field private final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Lcom/android/server/wm/InputMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/InputMonitor;Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;ILandroid/os/UserHandle;I)V
    .registers 18
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "monitor"  # Lcom/android/server/wm/InputMonitor;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "inputEventReceiverFactory"  # Landroid/view/InputEventReceiver$Factory;
    .param p6, "clientPid"  # I
    .param p7, "clientUser"  # Landroid/os/UserHandle;
    .param p8, "displayId"  # I

    .line 98
    move-object v8, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V

    .line 100
    move-object v0, p2

    iput-object v0, v8, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 101
    iget-object v1, v8, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->mClientChannel:Landroid/view/InputChannel;

    move-object v2, p3

    move-object v3, p5

    invoke-interface {p5, v1, p3}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 103
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v2, v2, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 111
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    return-void

    .line 111
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
