.class public Landroid/net/netlink/StructNdMsg;
.super Ljava/lang/Object;
.source "StructNdMsg.java"


# static fields
.field public static NTF_MASTER:B = 0x0t

.field public static NTF_PROXY:B = 0x0t

.field public static NTF_ROUTER:B = 0x0t

.field public static NTF_SELF:B = 0x0t

.field public static NTF_USE:B = 0x0t

.field public static final NUD_DELAY:S = 0x8s

.field public static final NUD_FAILED:S = 0x20s

.field public static final NUD_INCOMPLETE:S = 0x1s

.field public static final NUD_NOARP:S = 0x40s

.field public static final NUD_NONE:S = 0x0s

.field public static final NUD_PERMANENT:S = 0x80s

.field public static final NUD_PROBE:S = 0x10s

.field public static final NUD_REACHABLE:S = 0x2s

.field public static final NUD_STALE:S = 0x4s

.field public static final STRUCT_SIZE:I = 0xc


# instance fields
.field public ndm_family:B

.field public ndm_flags:B

.field public ndm_ifindex:I

.field public ndm_state:S

.field public ndm_type:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const/4 v0, 0x1

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    .line 73
    const/4 v0, 0x2

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    .line 74
    const/4 v0, 0x4

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    .line 75
    const/16 v0, 0x8

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    .line 76
    const/16 v0, -0x80

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 131
    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .registers 2

    .line 103
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v0, 0xc

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isNudStateConnected(S)Z
    .registers 1

    .line 63
    and-int/lit16 p0, p0, 0xc2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isNudStateValid(S)Z
    .registers 2

    .line 67
    invoke-static {p0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    if-nez v0, :cond_d

    and-int/lit8 p0, p0, 0x1c

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;
    .registers 3

    .line 107
    invoke-static {p0}, Landroid/net/netlink/StructNdMsg;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_8
    new-instance v0, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v0}, Landroid/net/netlink/StructNdMsg;-><init>()V

    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 115
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput-byte p0, v0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    .line 120
    return-object v0
.end method

.method public static stringForNudFlags(B)Ljava/lang/String;
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 81
    const-string v1, "NTF_USE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_f
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    and-int/2addr v1, p0

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_25

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_20
    const-string v1, "NTF_SELF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_25
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_38

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_33
    const-string v1, "NTF_MASTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_38
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_4b

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_46

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_46
    const-string v1, "NTF_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_4b
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    and-int/2addr p0, v1

    if-eqz p0, :cond_5e

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_59

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_59
    const-string p0, "NTF_ROUTER"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForNudState(S)Ljava/lang/String;
    .registers 3

    .line 47
    if-eqz p0, :cond_4e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_48

    const/4 v0, 0x4

    if-eq p0, v0, :cond_45

    const/16 v0, 0x8

    if-eq p0, v0, :cond_42

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x40

    if-eq p0, v0, :cond_39

    const/16 v0, 0x80

    if-eq p0, v0, :cond_36

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown NUD state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_36
    const-string p0, "NUD_PERMANENT"

    return-object p0

    .line 55
    :cond_39
    const-string p0, "NUD_NOARP"

    return-object p0

    .line 54
    :cond_3c
    const-string p0, "NUD_FAILED"

    return-object p0

    .line 53
    :cond_3f
    const-string p0, "NUD_PROBE"

    return-object p0

    .line 52
    :cond_42
    const-string p0, "NUD_DELAY"

    return-object p0

    .line 51
    :cond_45
    const-string p0, "NUD_STALE"

    return-object p0

    .line 50
    :cond_48
    const-string p0, "NUD_REACHABLE"

    return-object p0

    .line 49
    :cond_4b
    const-string p0, "NUD_INCOMPLETE"

    return-object p0

    .line 48
    :cond_4e
    const-string p0, "NUD_NONE"

    return-object p0
.end method


# virtual methods
.method public nudConnected()Z
    .registers 2

    .line 147
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    return v0
.end method

.method public nudValid()Z
    .registers 2

    .line 151
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateValid(S)Z

    move-result v0

    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 137
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 140
    iget v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 141
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 142
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-static {v1}, Landroid/net/netlink/StructNdMsg;->stringForNudFlags(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructNdMsg{ family{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 159
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, ifindex{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, state{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, flags{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, type{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0
.end method