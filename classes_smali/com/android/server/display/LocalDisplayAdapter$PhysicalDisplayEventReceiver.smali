.class final Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhysicalDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .registers 4

    .line 858
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 859
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 860
    return-void
.end method


# virtual methods
.method public onConfigChanged(JJI)V
    .registers 6

    .line 881
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 882
    :try_start_7
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/LocalDisplayAdapter;->access$500(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 883
    if-nez p2, :cond_17

    .line 888
    monitor-exit p1

    return-void

    .line 890
    :cond_17
    invoke-virtual {p2, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActivePhysicalDisplayModeChangedLocked(I)V

    .line 891
    monitor-exit p1

    .line 892
    return-void

    .line 891
    :catchall_1c
    move-exception p2

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p2
.end method

.method public onHotplug(JJZ)V
    .registers 6

    .line 864
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 865
    if-eqz p5, :cond_f

    .line 866
    :try_start_9
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;J)V

    goto :goto_14

    .line 868
    :cond_f
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$400(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 870
    :goto_14
    monitor-exit p1

    .line 871
    return-void

    .line 870
    :catchall_16
    move-exception p2

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p2
.end method
