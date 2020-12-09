.class public Lcom/android/server/connectivity/TcpKeepaliveController;
.super Ljava/lang/Object;
.source "TcpKeepaliveController.java"


# static fields
.field private static final DBG:Z = false

.field private static final FD_EVENTS:I = 0x5

.field private static final SIOCINQ:I

.field private static final SIOCOUTQ:I

.field private static final TAG:Ljava/lang/String; = "TcpKeepaliveController"

.field private static final TCP_NO_QUEUE:I = 0x0

.field private static final TCP_QUEUE_SEQ:I = 0x15

.field private static final TCP_RECV_QUEUE:I = 0x1

.field private static final TCP_REPAIR:I = 0x13

.field private static final TCP_REPAIR_OFF:I = 0x0

.field private static final TCP_REPAIR_ON:I = 0x1

.field private static final TCP_REPAIR_QUEUE:I = 0x14

.field private static final TCP_SEND_QUEUE:I = 0x2


# instance fields
.field private final mFdHandlerQueue:Landroid/os/MessageQueue;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    sget v0, Landroid/system/OsConstants;->FIONREAD:I

    sput v0, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCINQ:I

    .line 96
    sget v0, Landroid/system/OsConstants;->TIOCOUTQ:I

    sput v0, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCOUTQ:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    .line 107
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mFdHandlerQueue:Landroid/os/MessageQueue;

    .line 108
    return-void
.end method

.method private static dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    .line 331
    if-eqz p1, :cond_6

    .line 332
    :try_start_2
    invoke-static {p0}, Landroid/net/NetworkUtils;->attachDropAllBPFFilter(Ljava/io/FileDescriptor;)V

    goto :goto_9

    .line 334
    :cond_6
    invoke-static {p0}, Landroid/net/NetworkUtils;->detachBPFFilter(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_9} :catch_b

    .line 339
    :goto_9
    nop

    .line 340
    return-void

    .line 336
    :catch_b
    move-exception p0

    .line 337
    const-string p1, "TcpKeepaliveController"

    const-string v0, "Socket Exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    new-instance p1, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 v0, -0x19

    invoke-direct {p1, v0, p0}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private static getAddress(Ljava/net/InetSocketAddress;)[B
    .registers 1

    .line 295
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    return-object p0
.end method

.method private static getPort(Ljava/net/InetSocketAddress;)I
    .registers 1

    .line 299
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    return p0
.end method

.method public static getTcpKeepalivePacket(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidPacketException;,
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->switchToRepairMode(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/net/TcpKeepalivePacketData;->tcpKeepalivePacket(Landroid/net/TcpKeepalivePacketDataParcelable;)Landroid/net/TcpKeepalivePacketData;

    move-result-object p0
    :try_end_8
    .catch Landroid/net/SocketKeepalive$InvalidPacketException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 116
    :catch_9
    move-exception v0

    .line 117
    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->switchOutOfRepairMode(Ljava/io/FileDescriptor;)V

    .line 118
    throw v0
.end method

.method private static isReceiveQueueEmpty(Ljava/io/FileDescriptor;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 308
    new-instance v0, Landroid/system/Int32Ref;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/system/Int32Ref;-><init>(I)V

    .line 309
    sget v1, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCINQ:I

    invoke-static {p0, v1, v0}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/system/Int32Ref;)I

    .line 310
    iget p0, v0, Landroid/system/Int32Ref;->value:I

    if-eqz p0, :cond_18

    .line 311
    const-string p0, "TcpKeepaliveController"

    const-string v0, "Read queue has data"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 p0, 0x0

    return p0

    .line 314
    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method private static isSendQueueEmpty(Ljava/io/FileDescriptor;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 319
    new-instance v0, Landroid/system/Int32Ref;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/system/Int32Ref;-><init>(I)V

    .line 320
    sget v1, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCOUTQ:I

    invoke-static {p0, v1, v0}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/system/Int32Ref;)I

    .line 321
    iget p0, v0, Landroid/system/Int32Ref;->value:I

    if-eqz p0, :cond_18

    .line 322
    const-string p0, "TcpKeepaliveController"

    const-string v0, "Write queue has data"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 p0, 0x0

    return p0

    .line 325
    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method private static isSocketIdle(Ljava/io/FileDescriptor;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 303
    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isReceiveQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isSendQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static synthetic lambda$startSocketMonitor$0(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;Ljava/io/FileDescriptor;I)I
    .registers 3

    .line 264
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_7

    .line 265
    const/16 p1, -0x19

    goto :goto_8

    .line 267
    :cond_7
    const/4 p1, -0x2

    .line 269
    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->onFileDescriptorInitiatedStop(I)V

    .line 272
    const/4 p0, 0x0

    return p0
.end method

.method private static switchOutOfRepairMode(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 232
    :try_start_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    .line 236
    goto :goto_11

    .line 233
    :catch_9
    move-exception p0

    .line 234
    const-string v0, "TcpKeepaliveController"

    const-string v1, "Cannot switch socket out of repair mode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :goto_11
    return-void
.end method

.method private static switchToRepairMode(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketDataParcelable;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    .line 131
    const-string v0, "TcpKeepaliveController"

    new-instance v1, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v1}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 138
    const/16 v2, -0x19

    :try_start_9
    invoke-static {p0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_d} :catch_10c

    .line 142
    nop

    .line 143
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_101

    .line 144
    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Lcom/android/server/connectivity/TcpKeepaliveController;->getAddress(Ljava/net/InetSocketAddress;)[B

    move-result-object v4

    iput-object v4, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 145
    invoke-static {v3}, Lcom/android/server/connectivity/TcpKeepaliveController;->getPort(Ljava/net/InetSocketAddress;)I

    move-result v3

    iput v3, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 152
    :try_start_20
    invoke-static {p0}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_20 .. :try_end_24} :catch_f5

    .line 156
    nop

    .line 157
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_ea

    .line 158
    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Lcom/android/server/connectivity/TcpKeepaliveController;->getAddress(Ljava/net/InetSocketAddress;)[B

    move-result-object v4

    iput-object v4, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 159
    invoke-static {v3}, Lcom/android/server/connectivity/TcpKeepaliveController;->getPort(Ljava/net/InetSocketAddress;)I

    move-result v3

    iput v3, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 166
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/server/connectivity/TcpKeepaliveController;->dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V

    .line 169
    const/4 v4, 0x0

    :try_start_3c
    sget v5, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/16 v6, 0x13

    invoke-static {p0, v5, v6, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 172
    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isSocketIdle(Ljava/io/FileDescriptor;)Z

    move-result v5
    :try_end_47
    .catch Landroid/system/ErrnoException; {:try_start_3c .. :try_end_47} :catch_cc
    .catchall {:try_start_3c .. :try_end_47} :catchall_ca

    const/16 v6, -0x1a

    const-string v7, "Socket is not idle"

    if-eqz v5, :cond_c1

    .line 177
    :try_start_4d
    sget v5, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/4 v8, 0x2

    const/16 v9, 0x14

    invoke-static {p0, v5, v9, v8}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 178
    sget v5, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/16 v8, 0x15

    invoke-static {p0, v5, v8}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v5

    iput v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 180
    sget v5, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v5, v9, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 181
    sget v5, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v5, v8}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v5

    iput v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 183
    sget v5, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v5, v9, v4}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 186
    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isReceiveQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 190
    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isSendQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 196
    invoke-static {p0}, Landroid/net/NetworkUtils;->getTcpRepairWindow(Ljava/io/FileDescriptor;)Landroid/net/TcpRepairWindow;

    move-result-object v5

    .line 197
    iget v6, v5, Landroid/net/TcpRepairWindow;->rcvWnd:I

    iput v6, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 198
    iget v5, v5, Landroid/net/TcpRepairWindow;->rcvWndScale:I

    iput v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 199
    iget-object v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a3

    .line 201
    sget v5, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v6, Landroid/system/OsConstants;->IP_TOS:I

    invoke-static {p0, v5, v6}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v5

    iput v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 203
    sget v5, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v6, Landroid/system/OsConstants;->IP_TTL:I

    invoke-static {p0, v5, v6}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v5

    iput v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I
    :try_end_a3
    .catch Landroid/system/ErrnoException; {:try_start_4d .. :try_end_a3} :catch_cc
    .catchall {:try_start_4d .. :try_end_a3} :catchall_ca

    .line 215
    :cond_a3
    invoke-static {p0, v4}, Lcom/android/server/connectivity/TcpKeepaliveController;->dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V

    .line 216
    nop

    .line 220
    iget p0, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    sub-int/2addr p0, v3

    iput p0, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 222
    return-object v1

    .line 191
    :cond_ad
    :try_start_ad
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v1, v6}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v1

    .line 187
    :cond_b6
    const-string v1, "Fatal: receive queue of this socket is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v1, v2}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v1

    .line 173
    :cond_c1
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v1, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v1, v6}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v1
    :try_end_ca
    .catch Landroid/system/ErrnoException; {:try_start_ad .. :try_end_ca} :catch_cc
    .catchall {:try_start_ad .. :try_end_ca} :catchall_ca

    .line 215
    :catchall_ca
    move-exception v0

    goto :goto_e6

    .line 205
    :catch_cc
    move-exception v1

    .line 206
    :try_start_cd
    const-string v3, "Exception reading TCP state from socket"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    iget v0, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOPROTOOPT:I

    if-ne v0, v3, :cond_e0

    .line 210
    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 v2, -0x1e

    invoke-direct {v0, v2, v1}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 212
    :cond_e0
    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2, v1}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_e6
    .catchall {:try_start_cd .. :try_end_e6} :catchall_ca

    .line 215
    :goto_e6
    invoke-static {p0, v4}, Lcom/android/server/connectivity/TcpKeepaliveController;->dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V

    throw v0

    .line 161
    :cond_ea
    const-string p0, "Invalid or mismatched peer SocketAddress"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance p0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {p0, v2}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw p0

    .line 153
    :catch_f5
    move-exception p0

    .line 154
    const-string v1, "Get peername fail: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2, p0}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 147
    :cond_101
    const-string p0, "Invalid or mismatched SocketAddress"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {p0, v2}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw p0

    .line 139
    :catch_10c
    move-exception p0

    .line 140
    const-string v1, "Get sockname fail: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2, p0}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public startSocketMonitor(Ljava/io/FileDescriptor;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_44

    .line 253
    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 254
    iget-object v2, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 255
    :cond_23
    const-string p1, "TcpKeepaliveController"

    const-string p2, "This fd is already registered."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance p1, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 p2, -0x19

    invoke-direct {p1, p2}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw p1

    .line 259
    :cond_32
    iget-object v1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mFdHandlerQueue:Landroid/os/MessageQueue;

    const/4 v2, 0x5

    new-instance v3, Lcom/android/server/connectivity/-$$Lambda$TcpKeepaliveController$mLZJWrEAOnfgV5N3ZSa2J3iTmxE;

    invoke-direct {v3, p2}, Lcom/android/server/connectivity/-$$Lambda$TcpKeepaliveController$mLZJWrEAOnfgV5N3ZSa2J3iTmxE;-><init>(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 274
    iget-object p2, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 251
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This slot is already taken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public stopSocketMonitor(I)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 285
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;

    .line 286
    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    .line 287
    :cond_f
    iget-object v2, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 288
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1e

    .line 289
    iget-object p1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mFdHandlerQueue:Landroid/os/MessageQueue;

    invoke-virtual {p1, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 291
    invoke-static {v1}, Lcom/android/server/connectivity/TcpKeepaliveController;->switchOutOfRepairMode(Ljava/io/FileDescriptor;)V

    .line 292
    return-void

    .line 288
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method
