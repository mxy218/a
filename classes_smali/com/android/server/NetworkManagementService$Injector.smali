.class Lcom/android/server/NetworkManagementService$Injector;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/NetworkManagementService;

    .line 2678
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 8

    .line 2704
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2705
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkManagementService$Injector;->setDataSaverMode(Z)V

    .line 2706
    const/4 v2, 0x3

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v4, v3, v1

    const/4 v5, 0x2

    aput v5, v3, v4

    aput v2, v3, v5

    move-object v2, v3

    .line 2711
    .local v2, "chains":[I
    array-length v3, v2

    move v4, v1

    :goto_19
    if-ge v4, v3, :cond_2c

    aget v5, v2, v4

    .line 2712
    .local v5, "chain":I
    invoke-virtual {p0, v5, v1}, Lcom/android/server/NetworkManagementService$Injector;->setFirewallChainState(IZ)V

    .line 2713
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v6, v5}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 2711
    .end local v5  # "chain":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 2715
    :cond_2c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2200(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2716
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2717
    .end local v2  # "chains":[I
    monitor-exit v0

    .line 2718
    return-void

    .line 2717
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_40

    throw v1
.end method

.method setDataSaverMode(Z)V
    .registers 3
    .param p1, "dataSaverMode"  # Z

    .line 2680
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1702(Lcom/android/server/NetworkManagementService;Z)Z

    .line 2681
    return-void
.end method

.method setFirewallChainState(IZ)V
    .registers 4
    .param p1, "chain"  # I
    .param p2, "state"  # Z

    .line 2684
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;IZ)V

    .line 2685
    return-void
.end method

.method setFirewallRule(III)V
    .registers 6
    .param p1, "chain"  # I
    .param p2, "uid"  # I
    .param p3, "rule"  # I

    .line 2688
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2689
    :try_start_7
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, p1}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2690
    monitor-exit v0

    .line 2691
    return-void

    .line 2690
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .registers 6
    .param p1, "blacklist"  # Z
    .param p2, "uid"  # I
    .param p3, "enable"  # Z

    .line 2694
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2695
    if-eqz p1, :cond_13

    .line 2696
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1c

    .line 2698
    :cond_13
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2200(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2700
    :goto_1c
    monitor-exit v0

    .line 2701
    return-void

    .line 2700
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v1
.end method
