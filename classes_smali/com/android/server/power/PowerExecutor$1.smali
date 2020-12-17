.class Lcom/android/server/power/PowerExecutor$1;
.super Landroid/os/Handler;
.source "PowerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerExecutor;->initialize(Lcom/android/server/power/PowerManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerExecutor;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerExecutor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/power/PowerExecutor;

    .line 45
    iput-object p1, p0, Lcom/android/server/power/PowerExecutor$1;->this$0:Lcom/android/server/power/PowerExecutor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 51
    .local v1, "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 52
    .local v2, "disable":Z
    :goto_12
    iget-object v3, p0, Lcom/android/server/power/PowerExecutor$1;->this$0:Lcom/android/server/power/PowerExecutor;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/power/PowerExecutor;->access$000(Lcom/android/server/power/PowerExecutor;Ljava/lang/String;IZ)V

    .line 53
    return-void
.end method
