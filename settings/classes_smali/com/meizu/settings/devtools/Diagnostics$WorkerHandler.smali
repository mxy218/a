.class final Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;
.super Landroid/os/Handler;
.source "Diagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/devtools/Diagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/devtools/Diagnostics;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/devtools/Diagnostics;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/devtools/Diagnostics;Lcom/meizu/settings/devtools/Diagnostics$1;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;-><init>(Lcom/meizu/settings/devtools/Diagnostics;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_8

    goto/16 :goto_98

    .line 51
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 52
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    const-string v4, "Error communicating with UsbManager: "

    const-string v5, "Diagnostics"

    if-ne p1, v1, :cond_40

    .line 54
    :try_start_15
    iget-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    iget-object p1, p1, Lcom/meizu/settings/devtools/Diagnostics;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    const-wide/16 v6, 0x100

    invoke-interface {p1, v6, v7}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_32

    :catch_1f
    move-exception p1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_32
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$1;-><init>(Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;I)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_98

    :cond_40
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6e

    .line 74
    :try_start_43
    iget-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    iget-object p1, p1, Lcom/meizu/settings/devtools/Diagnostics;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    const-wide/16 v6, 0x200

    invoke-interface {p1, v6, v7}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4d

    goto :goto_60

    :catch_4d
    move-exception p1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;-><init>(Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;I)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_98

    .line 94
    :cond_6e
    :try_start_6e
    iget-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    iget-object p1, p1, Lcom/meizu/settings/devtools/Diagnostics;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    const-wide/16 v6, 0x400

    invoke-interface {p1, v6, v7}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_77} :catch_78

    goto :goto_8b

    :catch_78
    move-exception p1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_8b
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$3;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$3;-><init>(Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;I)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_98
    return-void
.end method
