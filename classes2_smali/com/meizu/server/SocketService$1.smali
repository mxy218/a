.class Lcom/meizu/server/SocketService$1;
.super Ljava/lang/Thread;
.source "SocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/SocketService;->connect2Sdcard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/SocketService;

.field final synthetic val$szCmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/server/SocketService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lcom/meizu/server/SocketService;

    .line 23
    iput-object p1, p0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    iput-object p2, p0, Lcom/meizu/server/SocketService$1;->val$szCmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 26
    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 27
    .local v1, "try_count":I
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 28
    .local v2, "socket":Landroid/net/LocalSocket;
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string v5, "sdcard"

    invoke-direct {v3, v5, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 30
    .local v3, "address":Landroid/net/LocalSocketAddress;
    :goto_11
    add-int/lit8 v4, v1, 0x1

    .end local v1  # "try_count":I
    .local v4, "try_count":I
    const/16 v5, 0xa

    if-ge v1, v5, :cond_26

    .line 32
    :try_start_17
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 33
    goto :goto_26

    .line 34
    :catch_1b
    move-exception v1

    .line 37
    const-wide/16 v5, 0x3e8

    :try_start_1e
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22

    .line 39
    :goto_21
    goto :goto_24

    .line 38
    :catch_22
    move-exception v1

    goto :goto_21

    .line 30
    :goto_24
    move v1, v4

    goto :goto_11

    .line 42
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/meizu/server/SocketService$1;->val$szCmd:Ljava/lang/String;

    .line 43
    .local v1, "cmd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 46
    .local v6, "ret":Ljava/lang/String;
    const-string v7, "timestamp"

    if-ge v4, v5, :cond_63

    .line 47
    const/16 v5, 0x1f4

    :try_start_2f
    invoke-virtual {v2, v5}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 48
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 49
    .local v5, "out":Ljava/io/OutputStream;
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 51
    .local v8, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 52
    const-string v9, "close_prot_box"

    move-object v1, v9

    .line 56
    :cond_43
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 57
    .local v9, "bytes":[B
    const/16 v10, 0x200

    new-array v10, v10, [B

    .line 58
    .local v10, "buf":[B
    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 60
    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_63

    .line 61
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 62
    .local v11, "size":I
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v13, v11, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v12

    move-object v6, v0

    .line 65
    .end local v5  # "out":Ljava/io/OutputStream;
    .end local v8  # "in":Ljava/io/InputStream;
    .end local v9  # "bytes":[B
    .end local v10  # "buf":[B
    .end local v11  # "size":I
    :cond_63
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_66} :catch_67

    .line 67
    goto :goto_68

    .line 66
    :catch_67
    move-exception v0

    .line 69
    :goto_68
    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9a

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    iget-object v5, v5, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    if-eqz v5, :cond_9a

    .line 73
    iget-object v5, p0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    iget-object v5, v5, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 75
    :try_start_83
    const-string v5, "SecurityCenter"

    const-string v7, "send back!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v5, p0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    iget-object v5, v5, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    iget-object v7, p0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    iget-object v7, v7, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    invoke-virtual {v5, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_95} :catch_96

    .line 79
    goto :goto_9a

    .line 77
    :catch_96
    move-exception v5

    .line 78
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    .end local v0  # "b":Landroid/os/Bundle;
    .end local v5  # "e":Landroid/os/RemoteException;
    :cond_9a
    :goto_9a
    return-void
.end method
