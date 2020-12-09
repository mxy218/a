.class public Landroid/net/netlink/StructInetDiagReqV2;
.super Ljava/lang/Object;
.source "StructInetDiagReqV2.java"


# static fields
.field public static final STRUCT_SIZE:I = 0x38


# instance fields
.field private final INET_DIAG_REQ_V2_ALL_STATES:I

.field private final id:Landroid/net/netlink/StructInetDiagSockId;

.field private final sdiag_family:B

.field private final sdiag_protocol:B


# direct methods
.method public constructor <init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;I)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->INET_DIAG_REQ_V2_ALL_STATES:I

    .line 51
    int-to-byte p4, p4

    iput-byte p4, p0, Landroid/net/netlink/StructInetDiagReqV2;->sdiag_family:B

    .line 52
    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/netlink/StructInetDiagReqV2;->sdiag_protocol:B

    .line 53
    new-instance p1, Landroid/net/netlink/StructInetDiagSockId;

    invoke-direct {p1, p2, p3}, Landroid/net/netlink/StructInetDiagSockId;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iput-object p1, p0, Landroid/net/netlink/StructInetDiagReqV2;->id:Landroid/net/netlink/StructInetDiagSockId;

    .line 54
    return-void
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 58
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->sdiag_family:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 59
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->sdiag_protocol:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->id:Landroid/net/netlink/StructInetDiagSockId;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructInetDiagSockId;->pack(Ljava/nio/ByteBuffer;)V

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 68
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->sdiag_family:B

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-byte v1, p0, Landroid/net/netlink/StructInetDiagReqV2;->sdiag_protocol:B

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructInetDiagReqV2{ sdiag_family{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, sdiag_protocol{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, idiag_ext{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")}, pad{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, idiag_states{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->id:Landroid/net/netlink/StructInetDiagSockId;

    .line 77
    invoke-virtual {v0}, Landroid/net/netlink/StructInetDiagSockId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method
