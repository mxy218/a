.class public Landroid/net/netlink/NetlinkMessage;
.super Ljava/lang/Object;
.source "NetlinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkMessage"


# instance fields
.field protected mHeader:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    .line 89
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .registers 6

    .line 46
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 47
    :cond_5
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 49
    return-object v1

    .line 52
    :cond_d
    iget v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v2

    .line 53
    add-int/lit8 v2, v2, -0x10

    .line 54
    if-ltz v2, :cond_5f

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1e

    goto :goto_5f

    .line 60
    :cond_1e
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x14

    if-eq v3, v4, :cond_47

    packed-switch v3, :pswitch_data_68

    .line 75
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v4, 0xf

    if-gt v3, v4, :cond_41

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    new-instance p0, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object p0

    .line 81
    :cond_41
    return-object v1

    .line 71
    :pswitch_42  #0x1c, 0x1d, 0x1e
    invoke-static {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;

    move-result-object p0

    return-object p0

    .line 73
    :cond_47
    invoke-static {v0, p0}, Landroid/net/netlink/InetDiagMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/InetDiagMessage;

    move-result-object p0

    return-object p0

    .line 65
    :cond_4c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    new-instance p0, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object p0

    .line 63
    :cond_5a
    invoke-static {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;

    move-result-object p0

    return-object p0

    .line 56
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    return-object v1

    nop

    :pswitch_data_68
    .packed-switch 0x1c
        :pswitch_42  #0000001c
        :pswitch_42  #0000001d
        :pswitch_42  #0000001e
    .end packed-switch
.end method


# virtual methods
.method public getHeader()Landroid/net/netlink/StructNlMsgHdr;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_11

    const-string v1, ""

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
