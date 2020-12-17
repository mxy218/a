.class public Lcom/meizu/server/SocketService;
.super Ljava/lang/Object;
.source "SocketService.java"


# instance fields
.field obtainMsg:Landroid/os/Message;

.field replyTo:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    .line 107
    iput-object v0, p0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    return-void
.end method

.method private connect2Sdcard(Ljava/lang/String;)V
    .registers 3
    .param p1, "szCmd"  # Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/meizu/server/SocketService$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/server/SocketService$1;-><init>(Lcom/meizu/server/SocketService;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/meizu/server/SocketService$1;->start()V

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 87
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    .line 88
    iget-object v0, p0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_45

    .line 89
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SecurityCenter"

    if-eqz v0, :cond_3b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    goto :goto_45

    .line 96
    :cond_19
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "szToken":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/server/SocketService;->connect2Sdcard(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketService::token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_45

    .line 92
    .end local v0  # "szToken":Ljava/lang/String;
    :cond_3b
    const-string v0, "timestamp"

    invoke-direct {p0, v0}, Lcom/meizu/server/SocketService;->connect2Sdcard(Ljava/lang/String;)V

    .line 93
    const-string v0, "SocketService::timestamp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_45
    :goto_45
    return-void
.end method
