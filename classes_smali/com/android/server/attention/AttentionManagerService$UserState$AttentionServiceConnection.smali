.class Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService$UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttentionServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService$UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/server/attention/AttentionManagerService$1;)V
    .registers 3

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    return-void
.end method

.method private init(Landroid/service/attention/IAttentionService;)V
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1500(Lcom/android/server/attention/AttentionManagerService$UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 572
    :try_start_7
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    iput-object p1, v1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    .line 573
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1602(Lcom/android/server/attention/AttentionManagerService$UserState;Z)Z

    .line 574
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1700(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 575
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p1
.end method


# virtual methods
.method cleanupService()V
    .registers 2

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 568
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 558
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    .line 559
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 563
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    .line 564
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 548
    invoke-static {p2}, Landroid/service/attention/IAttentionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionService;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 549
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 553
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    .line 554
    return-void
.end method
