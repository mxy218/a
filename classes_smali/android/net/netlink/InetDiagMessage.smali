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

    .line 108
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
    .registers 3
    .param p1, "header"  # Landroid/net/netlink/StructNlMsgHdr;

    .line 79
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 80
    new-instance v0, Landroid/net/netlink/StructInetDiagMsg;

    invoke-direct {v0}, Landroid/net/netlink/StructInetDiagMsg;-><init>()V

    iput-object v0, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 81
    return-void
.end method

.method public static InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B
    .registers 9
    .param p0, "protocol"  # I
    .param p1, "local"  # Ljava/net/InetSocketAddress;
    .param p2, "remote"  # Ljava/net/InetSocketAddress;
    .param p3, "family"  # I
    .param p4, "flags"  # S

    .line 60
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 61
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 62
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    new-instance v2, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v2}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 65
    .local v2, "nlMsgHdr":Landroid/net/netlink/StructNlMsgHdr;
    array-length v3, v0

    iput v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 66
    const/16 v3, 0x14

    iput-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 67
    iput-short p4, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 68
    invoke-virtual {v2, v1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 70
    new-instance v3, Landroid/net/netlink/StructInetDiagReqV2;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/net/netlink/StructInetDiagReqV2;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;I)V

    .line 72
    .local v3, "inetDiagReqV2":Landroid/net/netlink/StructInetDiagReqV2;
    invoke-virtual {v3, v1}, Landroid/net/netlink/StructInetDiagReqV2;->pack(Ljava/nio/ByteBuffer;)V

    .line 73
    return-object v0
.end method

.method public static getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .registers 6
    .param p0, "protocol"  # I
    .param p1, "local"  # Ljava/net/InetSocketAddress;
    .param p2, "remote"  # Ljava/net/InetSocketAddress;

    .line 167
    :try_start_0
    sget v0, Landroid/system/OsConstants;->NETLINK_INET_DIAG:I

    invoke-static {v0}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 168
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 170
    invoke-static {p0, p1, p2, v0}, Landroid/net/netlink/InetDiagMessage;->lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I

    move-result v1
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_d} :catch_e

    return v1

    .line 172
    .end local v0  # "fd":Ljava/io/FileDescriptor;
    :catch_e
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InetDiagMessage"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0  # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method private static lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I
    .registers 17
    .param p0, "protocol"  # I
    .param p1, "local"  # Ljava/net/InetSocketAddress;
    .param p2, "remote"  # Ljava/net/InetSocketAddress;
    .param p3, "fd"  # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 115
    move v7, p0

    sget-object v0, Landroid/net/netlink/InetDiagMessage;->FAMILY:[I

    array-length v8, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_6
    const/4 v11, -0x1

    if-ge v10, v8, :cond_2c

    aget v12, v0, v10

    .line 121
    .local v12, "family":I
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v7, v1, :cond_1b

    .line 122
    const/4 v5, 0x1

    move v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, v12

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v1

    .local v1, "uid":I
    goto :goto_26

    .line 124
    .end local v1  # "uid":I
    :cond_1b
    const/4 v5, 0x1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v12

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v1

    .line 126
    .restart local v1  # "uid":I
    :goto_26
    if-eq v1, v11, :cond_29

    .line 127
    return v1

    .line 115
    .end local v12  # "family":I
    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 138
    .end local v1  # "uid":I
    :cond_2c
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v7, v0, :cond_71

    .line 140
    :try_start_30
    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v0, "::"

    .line 141
    invoke-static {v0}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v3, v0, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 142
    .local v3, "wildcard":Ljava/net/InetSocketAddress;
    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    const/16 v5, 0x301

    move v1, p0

    move-object v2, p1

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v0

    .line 144
    .local v0, "uid":I
    if-eq v0, v11, :cond_4a

    .line 145
    return v0

    .line 147
    :cond_4a
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "0.0.0.0"

    invoke-static {v2}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v3, v1

    .line 148
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    const/16 v5, 0x301

    move v1, p0

    move-object v2, p1

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v1
    :try_end_62
    .catch Ljava/net/UnknownHostException; {:try_start_30 .. :try_end_62} :catch_67

    move v0, v1

    .line 150
    if-eq v0, v11, :cond_66

    .line 151
    return v0

    .line 155
    .end local v3  # "wildcard":Ljava/net/InetSocketAddress;
    :cond_66
    goto :goto_71

    .line 153
    .end local v0  # "uid":I
    :catch_67
    move-exception v0

    .line 154
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InetDiagMessage"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0  # "e":Ljava/net/UnknownHostException;
    :cond_71
    :goto_71
    return v11
.end method

.method private static lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I
    .registers 13
    .param p0, "protocol"  # I
    .param p1, "local"  # Ljava/net/InetSocketAddress;
    .param p2, "remote"  # Ljava/net/InetSocketAddress;
    .param p3, "family"  # I
    .param p4, "flags"  # S
    .param p5, "fd"  # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/netlink/InetDiagMessage;->InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B

    move-result-object v6

    .line 94
    .local v6, "msg":[B
    array-length v3, v6

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v0, p5

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 95
    const/16 v0, 0x2000

    const-wide/16 v1, 0x1f4

    invoke-static {p5, v0, v1, v2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "response":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v1

    .line 98
    .local v1, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    .line 99
    .local v2, "hdr":Landroid/net/netlink/StructNlMsgHdr;
    iget-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_24

    .line 100
    return v4

    .line 102
    :cond_24
    instance-of v3, v1, Landroid/net/netlink/InetDiagMessage;

    if-eqz v3, :cond_30

    .line 103
    move-object v3, v1

    check-cast v3, Landroid/net/netlink/InetDiagMessage;

    iget-object v3, v3, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    iget v3, v3, Landroid/net/netlink/StructInetDiagMsg;->idiag_uid:I

    return v3

    .line 105
    :cond_30
    return v4
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/InetDiagMessage;
    .registers 4
    .param p0, "header"  # Landroid/net/netlink/StructNlMsgHdr;
    .param p1, "byteBuffer"  # Ljava/nio/ByteBuffer;

    .line 84
    new-instance v0, Landroid/net/netlink/InetDiagMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/InetDiagMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 85
    .local v0, "msg":Landroid/net/netlink/InetDiagMessage;
    invoke-static {p1}, Landroid/net/netlink/StructInetDiagMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructInetDiagMsg;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 86
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InetDiagMessage{ nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
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

    .line 184
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

    .line 181
    return-object v0
.end method
