.class public Landroid/net/netlink/InetDiagMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "InetDiagMessage.java"


# static fields
.field private static final FAMILY:[I

.field public static final TAG:Ljava/lang/String; = "InetDiagMessage"

.field private static final TIMEOUT_MS:I = 0x1f4


# instance fields
.field public mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Landroid/net/netlink/InetDiagMessage;->FAMILY:[I

    return-void
.end method

.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 77
    new-instance p1, Landroid/net/netlink/StructInetDiagMsg;

    invoke-direct {p1}, Landroid/net/netlink/StructInetDiagMsg;-><init>()V

    iput-object p1, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 78
    return-void
.end method

.method public static InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B
    .registers 9

    .line 57
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    new-instance v2, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v2}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 62
    array-length v3, v0

    iput v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 63
    const/16 v3, 0x14

    iput-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 64
    iput-short p4, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 65
    invoke-virtual {v2, v1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 67
    new-instance p4, Landroid/net/netlink/StructInetDiagReqV2;

    invoke-direct {p4, p0, p1, p2, p3}, Landroid/net/netlink/StructInetDiagReqV2;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;I)V

    .line 69
    invoke-virtual {p4, v1}, Landroid/net/netlink/StructInetDiagReqV2;->pack(Ljava/nio/ByteBuffer;)V

    .line 70
    return-object v0
.end method

.method public static getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .registers 6

    .line 163
    const-string v0, "InetDiagMessage"

    .line 164
    nop

    .line 166
    const/4 v1, 0x0

    :try_start_4
    sget v2, Landroid/system/OsConstants;->NETLINK_INET_DIAG:I

    invoke-static {v2}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 168
    invoke-static {p0, p1, p2, v1}, Landroid/net/netlink/InetDiagMessage;->lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I

    move-result p0
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_11} :catch_22
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_11} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_11} :catch_22
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_11} :catch_22
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 173
    if-eqz v1, :cond_3a

    .line 175
    :try_start_13
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    .line 178
    :goto_16
    goto :goto_3a

    .line 176
    :catch_17
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 173
    :catchall_20
    move-exception p0

    goto :goto_3b

    .line 169
    :catch_22
    move-exception p0

    .line 171
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 173
    if-eqz v1, :cond_39

    .line 175
    :try_start_2c
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 178
    :goto_2f
    goto :goto_39

    .line 176
    :catch_30
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 181
    :cond_39
    :goto_39
    const/4 p0, -0x1

    :cond_3a
    :goto_3a
    return p0

    .line 173
    :goto_3b
    if-eqz v1, :cond_49

    .line 175
    :try_start_3d
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 178
    goto :goto_49

    .line 176
    :catch_41
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_49
    :goto_49
    throw p0
.end method

.method private static lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 112
    sget-object v0, Landroid/net/netlink/InetDiagMessage;->FAMILY:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    const/4 v4, -0x1

    if-ge v3, v1, :cond_27

    aget v8, v0, v3

    .line 118
    sget v5, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, v5, :cond_18

    .line 119
    const/4 v9, 0x1

    move v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v5

    goto :goto_21

    .line 121
    :cond_18
    const/4 v9, 0x1

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v5

    .line 123
    :goto_21
    if-eq v5, v4, :cond_24

    .line 124
    return v5

    .line 112
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 135
    :cond_27
    sget p2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, p2, :cond_68

    .line 137
    :try_start_2b
    new-instance v7, Ljava/net/InetSocketAddress;

    const-string p2, "::"

    .line 138
    invoke-static {p2}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v7, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 139
    sget v8, Landroid/system/OsConstants;->AF_INET6:I

    const/16 v9, 0x301

    move v5, p0

    move-object v6, p1

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result p2

    .line 141
    if-eq p2, v4, :cond_44

    .line 142
    return p2

    .line 144
    :cond_44
    new-instance v7, Ljava/net/InetSocketAddress;

    const-string p2, "0.0.0.0"

    invoke-static {p2}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v7, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 145
    sget v8, Landroid/system/OsConstants;->AF_INET:I

    const/16 v9, 0x301

    move v5, p0

    move-object v6, p1

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result p0
    :try_end_5a
    .catch Ljava/net/UnknownHostException; {:try_start_2b .. :try_end_5a} :catch_5e

    .line 147
    if-eq p0, v4, :cond_5d

    .line 148
    return p0

    .line 152
    :cond_5d
    goto :goto_68

    .line 150
    :catch_5e
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InetDiagMessage"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_68
    :goto_68
    return v4
.end method

.method private static lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/netlink/InetDiagMessage;->InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B

    move-result-object v1

    .line 91
    array-length v3, v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 92
    const/16 p0, 0x2000

    const-wide/16 p1, 0x1f4

    invoke-static {p5, p0, p1, p2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 94
    invoke-static {p0}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object p1

    .line 96
    iget-short p1, p1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 p2, -0x1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_23

    .line 97
    return p2

    .line 99
    :cond_23
    instance-of p1, p0, Landroid/net/netlink/InetDiagMessage;

    if-eqz p1, :cond_2e

    .line 100
    check-cast p0, Landroid/net/netlink/InetDiagMessage;

    iget-object p0, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    iget p0, p0, Landroid/net/netlink/StructInetDiagMsg;->idiag_uid:I

    return p0

    .line 102
    :cond_2e
    return p2
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/InetDiagMessage;
    .registers 3

    .line 81
    new-instance v0, Landroid/net/netlink/InetDiagMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/InetDiagMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 82
    invoke-static {p1}, Landroid/net/netlink/StructInetDiagMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructInetDiagMsg;

    move-result-object p0

    iput-object p0, v0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 83
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InetDiagMessage{ nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const-string v2, ""

    if-nez v1, :cond_12

    move-object v1, v2

    goto :goto_18

    :cond_12
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, inet_diag_msg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    if-nez v1, :cond_26

    goto :goto_2a

    :cond_26
    invoke-virtual {v1}, Landroid/net/netlink/StructInetDiagMsg;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    return-object v0
.end method
