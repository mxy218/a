.class public Landroid/net/netlink/NetlinkConstants;
.super Ljava/lang/Object;
.source "NetlinkConstants.java"


# static fields
.field public static final NLA_ALIGNTO:I = 0x4

.field public static final NLMSG_DONE:S = 0x3s

.field public static final NLMSG_ERROR:S = 0x2s

.field public static final NLMSG_MAX_RESERVED:S = 0xfs

.field public static final NLMSG_NOOP:S = 0x1s

.field public static final NLMSG_OVERRUN:S = 0x4s

.field public static final RTM_DELADDR:S = 0x15s

.field public static final RTM_DELLINK:S = 0x11s

.field public static final RTM_DELNEIGH:S = 0x1ds

.field public static final RTM_DELROUTE:S = 0x19s

.field public static final RTM_DELRULE:S = 0x21s

.field public static final RTM_GETADDR:S = 0x16s

.field public static final RTM_GETLINK:S = 0x12s

.field public static final RTM_GETNEIGH:S = 0x1es

.field public static final RTM_GETROUTE:S = 0x1as

.field public static final RTM_GETRULE:S = 0x22s

.field public static final RTM_NEWADDR:S = 0x14s

.field public static final RTM_NEWLINK:S = 0x10s

.field public static final RTM_NEWNDUSEROPT:S = 0x44s

.field public static final RTM_NEWNEIGH:S = 0x1cs

.field public static final RTM_NEWROUTE:S = 0x18s

.field public static final RTM_NEWRULE:S = 0x20s

.field public static final RTM_SETLINK:S = 0x13s

.field public static final SOCK_DIAG_BY_FAMILY:S = 0x14s


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alignedLengthOf(I)I
    .registers 1

    .line 46
    if-gtz p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_4
    add-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x4

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static final alignedLengthOf(S)I
    .registers 2

    .line 41
    const v0, 0xffff

    and-int/2addr p0, v0

    .line 42
    invoke-static {p0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result p0

    return p0
.end method

.method public static hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 3

    .line 69
    if-nez p0, :cond_5

    const-string p0, "(null)"

    return-object p0

    .line 70
    :cond_5
    nop

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 70
    invoke-static {v0, v1, p0}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexify([B)Ljava/lang/String;
    .registers 1

    .line 64
    if-nez p0, :cond_5

    const-string p0, "(null)"

    return-object p0

    .line 65
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForAddressFamily(I)Ljava/lang/String;
    .registers 2

    .line 51
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p0, v0, :cond_7

    const-string p0, "AF_INET"

    return-object p0

    .line 52
    :cond_7
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p0, v0, :cond_e

    const-string p0, "AF_INET6"

    return-object p0

    .line 53
    :cond_e
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    if-ne p0, v0, :cond_15

    const-string p0, "AF_NETLINK"

    return-object p0

    .line 54
    :cond_15
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForNlMsgType(S)Ljava/lang/String;
    .registers 3

    .line 103
    const/4 v0, 0x1

    if-eq p0, v0, :cond_6f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_69

    const/4 v0, 0x4

    if-eq p0, v0, :cond_66

    const/16 v0, 0x44

    if-eq p0, v0, :cond_63

    packed-switch p0, :pswitch_data_72

    packed-switch p0, :pswitch_data_84

    packed-switch p0, :pswitch_data_8e

    packed-switch p0, :pswitch_data_98

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown RTM type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :pswitch_33  #0x22
    const-string p0, "RTM_GETRULE"

    return-object p0

    .line 122
    :pswitch_36  #0x21
    const-string p0, "RTM_DELRULE"

    return-object p0

    .line 121
    :pswitch_39  #0x20
    const-string p0, "RTM_NEWRULE"

    return-object p0

    .line 120
    :pswitch_3c  #0x1e
    const-string p0, "RTM_GETNEIGH"

    return-object p0

    .line 119
    :pswitch_3f  #0x1d
    const-string p0, "RTM_DELNEIGH"

    return-object p0

    .line 118
    :pswitch_42  #0x1c
    const-string p0, "RTM_NEWNEIGH"

    return-object p0

    .line 117
    :pswitch_45  #0x1a
    const-string p0, "RTM_GETROUTE"

    return-object p0

    .line 116
    :pswitch_48  #0x19
    const-string p0, "RTM_DELROUTE"

    return-object p0

    .line 115
    :pswitch_4b  #0x18
    const-string p0, "RTM_NEWROUTE"

    return-object p0

    .line 114
    :pswitch_4e  #0x16
    const-string p0, "RTM_GETADDR"

    return-object p0

    .line 113
    :pswitch_51  #0x15
    const-string p0, "RTM_DELADDR"

    return-object p0

    .line 112
    :pswitch_54  #0x14
    const-string p0, "RTM_NEWADDR"

    return-object p0

    .line 111
    :pswitch_57  #0x13
    const-string p0, "RTM_SETLINK"

    return-object p0

    .line 110
    :pswitch_5a  #0x12
    const-string p0, "RTM_GETLINK"

    return-object p0

    .line 109
    :pswitch_5d  #0x11
    const-string p0, "RTM_DELLINK"

    return-object p0

    .line 108
    :pswitch_60  #0x10
    const-string p0, "RTM_NEWLINK"

    return-object p0

    .line 124
    :cond_63
    const-string p0, "RTM_NEWNDUSEROPT"

    return-object p0

    .line 107
    :cond_66
    const-string p0, "NLMSG_OVERRUN"

    return-object p0

    .line 106
    :cond_69
    const-string p0, "NLMSG_DONE"

    return-object p0

    .line 105
    :cond_6c
    const-string p0, "NLMSG_ERROR"

    return-object p0

    .line 104
    :cond_6f
    const-string p0, "NLMSG_NOOP"

    return-object p0

    :pswitch_data_72
    .packed-switch 0x10
        :pswitch_60  #00000010
        :pswitch_5d  #00000011
        :pswitch_5a  #00000012
        :pswitch_57  #00000013
        :pswitch_54  #00000014
        :pswitch_51  #00000015
        :pswitch_4e  #00000016
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x18
        :pswitch_4b  #00000018
        :pswitch_48  #00000019
        :pswitch_45  #0000001a
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1c
        :pswitch_42  #0000001c
        :pswitch_3f  #0000001d
        :pswitch_3c  #0000001e
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x20
        :pswitch_39  #00000020
        :pswitch_36  #00000021
        :pswitch_33  #00000022
    .end packed-switch
.end method

.method public static stringForProtocol(I)Ljava/lang/String;
    .registers 2

    .line 58
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_7

    const-string p0, "IPPROTO_TCP"

    return-object p0

    .line 59
    :cond_7
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, v0, :cond_e

    const-string p0, "IPPROTO_UDP"

    return-object p0

    .line 60
    :cond_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
