.class Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 427
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 428
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 429
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 433
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_4d

    .line 451
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$700(Lcom/android/server/wm/DisplayPolicy;)V

    goto :goto_4d

    .line 448
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$600(Lcom/android/server/wm/DisplayPolicy;)V

    .line 449
    goto :goto_4d

    .line 445
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->access$500(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    .line 446
    goto :goto_4d

    .line 438
    :cond_28
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_33

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_39

    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 440
    .local v0, "targetBar":Lcom/android/server/wm/WindowState;
    :goto_39
    if-eqz v0, :cond_4d

    .line 441
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    goto :goto_4d

    .line 435
    .end local v0  # "targetBar":Lcom/android/server/wm/WindowState;
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_48

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 436
    nop

    .line 454
    :cond_4d
    :goto_4d
    return-void
.end method
