.class Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Lflyme/view/WindowManagerExt$MoveWinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/WindowMoveHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 41
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imeWillHide()V
    .registers 3

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "windowmove imeWillHide"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method public imeWillShow(I)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public movedWinHasBeenReset()V
    .registers 3

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "windowmove movedWinHasBeenReset"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$2;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method public toResetMovedWin()V
    .registers 3

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "windowmove toResetMovedWin"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$1;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method
