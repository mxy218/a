.class public Landroid/net/netlink/StructNlMsgErr;
.super Ljava/lang/Object;
.source "StructNlMsgErr.java"


# static fields
.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field public error:I

.field public msg:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .registers 2

    .line 36
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v0, 0x14

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgErr;
    .registers 3

    .line 40
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgErr;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_8
    new-instance v0, Landroid/net/netlink/StructNlMsgErr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgErr;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNlMsgErr;->error:I

    .line 47
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object p0

    iput-object p0, v0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    .line 48
    return-object v0
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 58
    iget v0, p0, Landroid/net/netlink/StructNlMsgErr;->error:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    if-eqz v0, :cond_c

    .line 60
    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 62
    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructNlMsgErr{ error{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/netlink/StructNlMsgErr;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, msg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_1c

    const-string v1, ""

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method
