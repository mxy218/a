.class Lcom/meizu/server/FlymePermissionService$1;
.super Ljava/lang/Object;
.source "FlymePermissionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FlymePermissionService;->printPermissionTrace(IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FlymePermissionService;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$noticePkg:Ljava/lang/String;

.field final synthetic val$permName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/server/FlymePermissionService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"  # Lcom/meizu/server/FlymePermissionService;

    .line 166
    iput-object p1, p0, Lcom/meizu/server/FlymePermissionService$1;->this$0:Lcom/meizu/server/FlymePermissionService;

    iput-object p2, p0, Lcom/meizu/server/FlymePermissionService$1;->val$noticePkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/server/FlymePermissionService$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/server/FlymePermissionService$1;->val$permName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService$1;->this$0:Lcom/meizu/server/FlymePermissionService;

    invoke-static {v0}, Lcom/meizu/server/FlymePermissionService;->access$000(Lcom/meizu/server/FlymePermissionService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/server/FlymePermissionService$1;->val$noticePkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "请求权限："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/server/FlymePermissionService$1;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/server/FlymePermissionService$1;->val$permName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/server/FlymePermissionService;->access$100(Lcom/meizu/server/FlymePermissionService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
