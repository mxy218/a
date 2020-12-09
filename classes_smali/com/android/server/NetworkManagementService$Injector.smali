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

    .line 2480
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 8

    .line 2506
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2507
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkManagementService$Injector;->setDataSaverMode(Z)V

    .line 2508
    const/4 v2, 0x4

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v4, v3, v1

    const/4 v5, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v4, v3, v5

    aput v2, v3, v4

    .line 2514
    array-length v2, v3

    move v4, v1

    :goto_1b
    if-ge v4, v2, :cond_2e

    aget v5, v3, v4

    .line 2515
    invoke-virtual {p0, v5, v1}, Lcom/android/server/NetworkManagementService$Injector;->setFirewallChainState(IZ)V

    .line 2516
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v6, v5}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 2514
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 2518
    :cond_2e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2300(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2519
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2200(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2520
    monitor-exit v0

    .line 2521
    return-void

    .line 2520
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw v1
.end method

.method setDataSaverMode(Z)V
    .registers 3

    .line 2482
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1802(Lcom/android/server/NetworkManagementService;Z)Z

    .line 2483
    return-void
.end method

.method setFirewallChainState(IZ)V
    .registers 4

    .line 2486
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;IZ)V

    .line 2487
    return-void
.end method

.method setFirewallRule(III)V
    .registers 6

    .line 2490
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2491
    :try_start_7
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, p1}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2492
    monitor-exit v0

    .line 2493
    return-void

    .line 2492
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .registers 5

    .line 2496
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2497
    if-eqz p1, :cond_13

    .line 2498
    :try_start_9
    iget-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->access$2200(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1c

    .line 2500
    :cond_13
    iget-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->access$2300(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2502
    :goto_1c
    monitor-exit v0

    .line 2503
    return-void

    .line 2502
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw p1
.end method
