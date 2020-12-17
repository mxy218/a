.class Lcom/meizu/pps/observer/PPSClient$EventHandler;
.super Landroid/os/Handler;
.source "PPSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/PPSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/pps/observer/PPSClient;


# direct methods
.method public constructor <init>(Lcom/meizu/pps/observer/PPSClient;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 279
    iput-object p1, p0, Lcom/meizu/pps/observer/PPSClient$EventHandler;->this$0:Lcom/meizu/pps/observer/PPSClient;

    .line 280
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_58

    .line 294
    :cond_b
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$EventHandler;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSClient;->access$400(Lcom/meizu/pps/observer/PPSClient;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 296
    :try_start_13
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$EventHandler;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSClient;->access$300(Lcom/meizu/pps/observer/PPSClient;)V

    .line 297
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$EventHandler;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSClient;->access$500(Lcom/meizu/pps/observer/PPSClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/pps/observer/PPSClient$EventHandler;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-static {v1}, Lcom/meizu/pps/observer/PPSClient;->access$400(Lcom/meizu/pps/observer/PPSClient;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_28

    .line 300
    goto :goto_58

    .line 298
    :catch_28
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceiver fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PPSServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 290
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_44
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$EventHandler;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSClient;->access$300(Lcom/meizu/pps/observer/PPSClient;)V

    .line 291
    goto :goto_58

    .line 286
    :cond_4a
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$EventHandler;->this$0:Lcom/meizu/pps/observer/PPSClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/common/pps/event/Args;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/pps/observer/PPSClient;->access$200(Lcom/meizu/pps/observer/PPSClient;IILcom/meizu/common/pps/event/Args;)V

    .line 287
    nop

    .line 306
    :cond_58
    :goto_58
    return-void
.end method
