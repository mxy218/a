.class Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 4495
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V
    .registers 3

    .line 4495
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    .line 4502
    :try_start_0
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    const/16 p5, 0x2000

    invoke-virtual {p4, p1, p5, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p1

    .line 4504
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_2d

    .line 4505
    :try_start_15
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleStateChanged(IZ)V

    .line 4506
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4507
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4508
    monitor-exit p2

    .line 4510
    goto :goto_2e

    .line 4508
    :catchall_2a
    move-exception p1

    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p1
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_2d} :catch_2d

    .line 4509
    :catch_2d
    move-exception p1

    .line 4511
    :goto_2e
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 4

    .line 4515
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4516
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->paroleStateChanged(Z)V

    .line 4517
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    .line 4518
    monitor-exit v0

    .line 4519
    return-void

    .line 4518
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method
