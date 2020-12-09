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

    .line 734
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3

    .line 734
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method static synthetic lambda$setDefaultBrowser$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 2

    .line 747
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 748
    :goto_5
    if-eqz p1, :cond_c

    .line 749
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_14

    .line 751
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 753
    :goto_14
    return-void
.end method

.method static synthetic lambda$setDefaultBrowserAsync$1(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 773
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 774
    :goto_5
    if-nez p1, :cond_1f

    .line 775
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set default browser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_1f
    return-void
.end method


# virtual methods
.method public getDefaultBrowser(I)Ljava/lang/String;
    .registers 3

    .line 739
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object p1

    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {p1, v0}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)Z
    .registers 8

    .line 745
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 746
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$hEu5ePDZ4NgTuveH0byeCRbh1RU;

    invoke-direct {v2, v0}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$hEu5ePDZ4NgTuveH0byeCRbh1RU;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 754
    const-string v2, "android.app.role.BROWSER"

    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    .line 755
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v4, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v3, v1}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_27

    .line 758
    :cond_1e
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v4, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p2

    invoke-virtual {p2, v2, v3, v1}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 762
    :goto_27
    const-wide/16 v1, 0x5

    :try_start_29
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_29 .. :try_end_2e} :catch_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_29 .. :try_end_2e} :catch_30

    .line 763
    const/4 p1, 0x1

    return p1

    .line 764
    :catch_30
    move-exception p2

    .line 765
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting default browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    return v3
.end method

.method public setDefaultBrowserAsync(Ljava/lang/String;I)V
    .registers 7

    .line 772
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;

    invoke-direct {v1, p1}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 778
    const/4 v1, 0x0

    const-string v2, "android.app.role.BROWSER"

    if-eqz p1, :cond_19

    .line 779
    iget-object v3, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v3, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1, v0}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_22

    .line 782
    :cond_19
    iget-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {p1, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 785
    :goto_22
    return-void
.end method
