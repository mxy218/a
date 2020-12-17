.class Lcom/android/server/StorageManagerService$UnmountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/StorageManagerService;
    .param p2, "obbState"  # Lcom/android/server/StorageManagerService$ObbState;
    .param p3, "force"  # Z

    .line 3685
    iput-object p1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3686
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3687
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    .line 3688
    return-void
.end method


# virtual methods
.method public handleExecute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation

    .line 3692
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$5300(Lcom/android/server/StorageManagerService;)V

    .line 3695
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 3696
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$5100(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3697
    .local v1, "existingState":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_9c

    .line 3699
    if-eqz v1, :cond_92

    .line 3703
    iget v0, v1, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    if-eq v0, v2, :cond_54

    .line 3704
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied to unmount OBB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (owned by GID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$UnmountObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 3707
    return-void

    .line 3711
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 3712
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 3713
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 3715
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7a} :catch_89

    .line 3716
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService;->access$5200(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3717
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_86

    .line 3719
    const/4 v0, 0x2

    :try_start_81
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$UnmountObbAction;->notifyObbStateChange(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_89

    .line 3722
    nop

    .line 3723
    return-void

    .line 3717
    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    .end local v1  # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    .end local p0  # "this":Lcom/android/server/StorageManagerService$UnmountObbAction;
    :try_start_88
    throw v2
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_89} :catch_89

    .line 3720
    .restart local v1  # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    .restart local p0  # "this":Lcom/android/server/StorageManagerService$UnmountObbAction;
    :catch_89
    move-exception v0

    .line 3721
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v3, 0x16

    invoke-direct {v2, v3, v0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 3700
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_92
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x17

    const-string v3, "Missing existingState"

    invoke-direct {v0, v2, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3697
    .end local v1  # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_9c
    move-exception v1

    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3728
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3729
    iget-object v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3730
    const-string v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3731
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3732
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
