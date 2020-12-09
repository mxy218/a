.class public final Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;
.super Ljava/lang/Object;
.source "IPv4AddrPortPair.java"


# instance fields
.field public addr:Ljava/lang/String;

.field public port:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 61
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 62
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 63
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 62
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 68
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    invoke-direct {v4}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;-><init>()V

    .line 69
    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 74
    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;",
            ">;)V"
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 100
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 101
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 102
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 103
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 104
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 106
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 110
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 13
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 14
    return v0

    .line 16
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 17
    return v1

    .line 19
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    if-eq v2, v3, :cond_11

    .line 20
    return v1

    .line 22
    :cond_11
    check-cast p1, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    .line 23
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 24
    return v1

    .line 26
    :cond_1e
    iget-short v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    iget-short p1, p1, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    if-eq v2, p1, :cond_25

    .line 27
    return v1

    .line 29
    :cond_25
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    .line 36
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 34
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 20

    .line 79
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    .line 81
    iget-object v6, v0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 81
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 86
    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v1

    iput-short v1, v0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    .line 87
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 52
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 53
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 54
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ".addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", .port = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-short v1, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 114
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 115
    const-wide/16 v0, 0x10

    add-long/2addr p2, v0

    iget-short v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 116
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 90
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 91
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 93
    return-void
.end method
