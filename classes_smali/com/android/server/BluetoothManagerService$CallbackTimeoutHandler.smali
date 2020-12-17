.class Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackTimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 2936
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2937
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2938
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 2942
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_6d

    .line 2944
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_b

    return-void

    .line 2945
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2946
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2947
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_CALLBACK_TIMEOUT pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BluetoothManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    const/16 v2, 0x2710

    if-lt v1, v2, :cond_6d

    .line 2950
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/BluetoothManagerService;->access$5100(Lcom/android/server/BluetoothManagerService;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Freeze: MESSAGE_CALLBACK_TIMEOUT will unfreeze pid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$CallbackTimeoutHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/BluetoothManagerService;->access$5200(Lcom/android/server/BluetoothManagerService;II)V

    goto :goto_6d

    .line 2955
    :cond_6a
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2962
    .end local v0  # "pid":I
    .end local v1  # "uid":I
    :cond_6d
    :goto_6d
    return-void
.end method
