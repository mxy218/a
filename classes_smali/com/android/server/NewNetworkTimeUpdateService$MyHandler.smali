.class Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;
.super Landroid/os/Handler;
.source "NewNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NewNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NewNetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "l"  # Landroid/os/Looper;

    .line 356
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    .line 357
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 358
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    goto :goto_2c

    .line 367
    :cond_25
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService;->access$300(Lcom/android/server/NewNetworkTimeUpdateService;I)V

    .line 370
    :goto_2c
    return-void
.end method
