.class Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;
.super Ljava/lang/Object;
.source "RoleManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultBrowserProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 733
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"  # Lcom/android/server/role/RoleManagerService$1;

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method static synthetic lambda$setDefaultBrowser$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "future"  # Ljava/util/concurrent/CompletableFuture;
    .param p1, "result"  # Landroid/os/Bundle;

    .line 746
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 747
    .local v0, "successful":Z
    :goto_5
    if-eqz v0, :cond_c

    .line 748
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_14

    .line 750
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 752
    :goto_14
    return-void
.end method

.method static synthetic lambda$setDefaultBrowserAsync$1(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "result"  # Landroid/os/Bundle;

    .line 772
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 773
    .local v0, "successful":Z
    :goto_5
    if-nez v0, :cond_1f

    .line 774
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default browser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_1f
    return-void
.end method


# virtual methods
.method public getDefaultBrowser(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"  # I

    .line 738
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    const-string v1, "android.app.role.BROWSER"

    invoke-virtual {v0, v1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 744
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 745
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$hEu5ePDZ4NgTuveH0byeCRbh1RU;

    invoke-direct {v2, v0}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$hEu5ePDZ4NgTuveH0byeCRbh1RU;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 753
    .local v1, "callback":Landroid/os/RemoteCallback;
    const-string v2, "android.app.role.BROWSER"

    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    .line 754
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v4, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v4

    invoke-virtual {v4, v2, p1, v3, v1}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_27

    .line 757
    :cond_1e
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v4, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 761
    :goto_27
    const-wide/16 v4, 0x5

    :try_start_29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_29 .. :try_end_2e} :catch_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_29 .. :try_end_2e} :catch_30

    .line 762
    const/4 v2, 0x1

    return v2

    .line 763
    :catch_30
    move-exception v2

    .line 764
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while setting default browser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    return v3
.end method

.method public setDefaultBrowserAsync(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 771
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;

    invoke-direct {v1, p1}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 777
    .local v0, "callback":Landroid/os/RemoteCallback;
    const/4 v1, 0x0

    const-string v2, "android.app.role.BROWSER"

    if-eqz p1, :cond_19

    .line 778
    iget-object v3, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v3, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1, v0}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_22

    .line 781
    :cond_19
    iget-object v3, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v3, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 784
    :goto_22
    return-void
.end method
