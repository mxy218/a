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

    .line 292
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_2f

    .line 301
    :cond_9
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)V

    .line 302
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2f

    .line 297
    :cond_18
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/WiredAccessoryManager;->access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 299
    nop

    .line 305
    :goto_2f
    return-void
.end method
