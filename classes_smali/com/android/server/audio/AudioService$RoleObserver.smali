.class Lcom/android/server/audio/AudioService$RoleObserver;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 933
    iput-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 935
    return-void
.end method


# virtual methods
.method public getAssistantRoleHolder()Ljava/lang/String;
    .registers 4

    .line 953
    nop

    .line 954
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    const-string v1, ""

    if-eqz v0, :cond_1c

    .line 955
    const-string v2, "android.app.role.ASSISTANT"

    invoke-virtual {v0, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 956
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1c

    :cond_14
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 958
    :cond_1c
    :goto_1c
    return-object v1
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    .line 947
    const-string p2, "android.app.role.ASSISTANT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 948
    iget-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->access$700(Lcom/android/server/audio/AudioService;Z)V

    .line 950
    :cond_e
    return-void
.end method

.method public register()V
    .registers 4

    .line 938
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 939
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    if-eqz v0, :cond_22

    .line 940
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 941
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$700(Lcom/android/server/audio/AudioService;Z)V

    .line 943
    :cond_22
    return-void
.end method
