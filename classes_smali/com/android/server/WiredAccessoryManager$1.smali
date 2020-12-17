.class Lcom/android/server/WiredAccessoryManager$1;
.super Landroid/os/Handler;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/WiredAccessoryManager;
    .param p2, "x0"  # Landroid/os/Looper;
    .param p3, "x1"  # Landroid/os/Handler$Callback;
    .param p4, "x2"  # Z

    .line 363
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    const/4 v2, 0x2

    if-eq v0, v2, :cond_47

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    goto :goto_6d

    .line 384
    :cond_f
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;Z)V

    .line 385
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6d

    .line 377
    :cond_1f
    const-string/jumbo v0, "ro.product.mobile.name"

    const-string v2, "default"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "value":Ljava/lang/String;
    const-string v2, "2081"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "2091"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 379
    :cond_38
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v2, v1}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;Z)V

    .line 381
    :cond_3d
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 382
    goto :goto_6d

    .line 372
    .end local v0  # "value":Ljava/lang/String;
    :cond_47
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 374
    goto :goto_6d

    .line 368
    :cond_56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 370
    nop

    .line 389
    :goto_6d
    return-void
.end method
