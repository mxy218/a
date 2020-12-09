.class public Landroid/net/netlink/StructNdaCacheInfo;
.super Ljava/lang/Object;
.source "StructNdaCacheInfo.java"


# static fields
.field private static final CLOCK_TICKS_PER_SECOND:J

.field public static final STRUCT_SIZE:I = 0x10


# instance fields
.field public ndm_confirmed:I

.field public ndm_refcnt:I

.field public ndm_updated:I

.field public ndm_used:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/net/netlink/StructNdaCacheInfo;->CLOCK_TICKS_PER_SECOND:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .registers 2

    .line 37
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;
    .registers 3

    .line 41
    invoke-static {p0}, Landroid/net/netlink/StructNdaCacheInfo;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_8
    new-instance v0, Landroid/net/netlink/StructNdaCacheInfo;

    invoke-direct {v0}, Landroid/net/netlink/StructNdaCacheInfo;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_used:I

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_confirmed:I

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_updated:I

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_refcnt:I

    .line 51
    return-object v0
.end method

.method private static ticksToMilliSeconds(I)J
    .registers 5

    .line 59
    int-to-long v0, p0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    .line 60
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-wide v2, Landroid/net/netlink/StructNdaCacheInfo;->CLOCK_TICKS_PER_SECOND:J

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public lastConfirmed()J
    .registers 3

    .line 101
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_confirmed:I

    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastUpdated()J
    .registers 3

    .line 105
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_updated:I

    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastUsed()J
    .registers 3

    .line 97
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_used:I

    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NdaCacheInfo{ ndm_used{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastUsed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, ndm_confirmed{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastConfirmed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, ndm_updated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastUpdated()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, ndm_refcnt{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_refcnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method
