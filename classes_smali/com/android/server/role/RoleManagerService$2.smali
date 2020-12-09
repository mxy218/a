.class Lcom/android/server/role/RoleManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/role/RoleManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$2;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 195
    const-string p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 201
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 203
    return-void

    .line 205
    :cond_21
    iget-object p2, p0, Lcom/android/server/role/RoleManagerService$2;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {p2, p1}, Lcom/android/server/role/RoleManagerService;->access$600(Lcom/android/server/role/RoleManagerService;I)Ljava/util/concurrent/CompletableFuture;

    .line 206
    return-void
.end method
