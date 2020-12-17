.class Lcom/android/server/net/NetworkPolicyManagerService$1;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 827
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 2

    .line 830
    const/4 v0, 0x6

    return v0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 5
    .param p1, "result"  # Landroid/os/PowerSaveState;

    .line 835
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 837
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLowPowerModeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    :try_start_23
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eq v2, v0, :cond_32

    .line 841
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean v0, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 842
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 844
    :cond_32
    monitor-exit v1

    .line 845
    return-void

    .line 844
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_34

    throw v2
.end method
