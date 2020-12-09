.class public Landroid/net/netlink/NetlinkErrorMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "NetlinkErrorMessage.java"


# instance fields
.field private mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;


# direct methods
.method constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 47
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    .line 48
    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;
    .registers 3

    .line 33
    new-instance v0, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 35
    invoke-static {p1}, Landroid/net/netlink/StructNlMsgErr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgErr;

    move-result-object p0

    iput-object p0, v0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    .line 36
    iget-object p0, v0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    if-nez p0, :cond_11

    .line 37
    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_11
    return-object v0
.end method


# virtual methods
.method public getNlMsgError()Landroid/net/netlink/StructNlMsgErr;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkErrorMessage{ nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Landroid/net/netlink/NetlinkErrorMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const-string v2, ""

    if-nez v1, :cond_12

    move-object v1, v2

    goto :goto_18

    :cond_12
    iget-object v1, p0, Landroid/net/netlink/NetlinkErrorMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nlmsgerr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    if-nez v1, :cond_26

    goto :goto_2a

    :cond_26
    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgErr;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method
