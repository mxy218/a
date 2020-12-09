.class Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;
.super Ljava/lang/Object;
.source "RoleManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultHomeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 798
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3

    .line 798
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method static synthetic lambda$setDefaultHomeAsync$0(Ljava/lang/String;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 6

    .line 811
    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    .line 812
    :goto_5
    if-nez p2, :cond_1f

    .line 813
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set default home: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_1f
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 816
    return-void
.end method


# virtual methods
.method public getDefaultHome(I)Ljava/lang/String;
    .registers 3

    .line 803
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object p1

    const-string v0, "android.app.role.HOME"

    invoke-virtual {p1, v0}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setDefaultHomeAsync(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 810
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;

    invoke-direct {v1, p1, p3}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 817
    const/4 p3, 0x0

    const-string v1, "android.app.role.HOME"

    if-eqz p1, :cond_19

    .line 818
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v2, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p2

    invoke-virtual {p2, v1, p1, p3, v0}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_22

    .line 821
    :cond_19
    iget-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {p1, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p1

    invoke-virtual {p1, v1, p3, v0}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 824
    :goto_22
    return-void
.end method
