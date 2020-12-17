.class Lcom/meizu/server/FlymePermissionDialog$1;
.super Landroid/os/Handler;
.source "FlymePermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FlymePermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FlymePermissionDialog;


# direct methods
.method constructor <init>(Lcom/meizu/server/FlymePermissionDialog;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/server/FlymePermissionDialog;

    .line 35
    iput-object p1, p0, Lcom/meizu/server/FlymePermissionDialog$1;->this$0:Lcom/meizu/server/FlymePermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "mess"  # Landroid/os/Message;

    .line 38
    const/4 v0, 0x1

    .line 39
    .local v0, "keepIt":Z
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    .line 47
    const/4 v1, 0x1

    .line 48
    .local v1, "runSet":I
    const/4 v0, 0x0

    goto :goto_f

    .line 44
    .end local v1  # "runSet":I
    :cond_b
    const/4 v1, 0x1

    .line 45
    .restart local v1  # "runSet":I
    goto :goto_f

    .line 41
    .end local v1  # "runSet":I
    :cond_d
    const/4 v1, 0x0

    .line 42
    .restart local v1  # "runSet":I
    nop

    .line 50
    :goto_f
    iget-object v2, p0, Lcom/meizu/server/FlymePermissionDialog$1;->this$0:Lcom/meizu/server/FlymePermissionDialog;

    invoke-static {v2}, Lcom/meizu/server/FlymePermissionDialog;->access$200(Lcom/meizu/server/FlymePermissionDialog;)Lcom/meizu/server/FLymeAppOpsHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/server/FlymePermissionDialog$1;->this$0:Lcom/meizu/server/FlymePermissionDialog;

    invoke-static {v3}, Lcom/meizu/server/FlymePermissionDialog;->access$000(Lcom/meizu/server/FlymePermissionDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/server/FlymePermissionDialog$1;->this$0:Lcom/meizu/server/FlymePermissionDialog;

    invoke-static {v4}, Lcom/meizu/server/FlymePermissionDialog;->access$100(Lcom/meizu/server/FlymePermissionDialog;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/meizu/server/FLymeAppOpsHandle;->notifyOperation(IIIZ)V

    .line 51
    iget-object v2, p0, Lcom/meizu/server/FlymePermissionDialog$1;->this$0:Lcom/meizu/server/FlymePermissionDialog;

    invoke-virtual {v2}, Lcom/meizu/server/FlymePermissionDialog;->dismiss()V

    .line 52
    return-void
.end method
