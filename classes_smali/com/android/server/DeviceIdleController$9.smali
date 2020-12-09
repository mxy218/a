.class Lcom/android/server/DeviceIdleController$9;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


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

    .line 1947
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAwakeStateChanged(Z)V
    .registers 2

    .line 1949
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 4

    .line 1953
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1954
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, p1}, Lcom/android/server/DeviceIdleController;->keyguardShowingLocked(Z)V

    .line 1955
    monitor-exit v0

    .line 1956
    return-void

    .line 1955
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
