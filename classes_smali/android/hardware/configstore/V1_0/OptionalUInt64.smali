.class public final Landroid/hardware/configstore/V1_0/OptionalUInt64;
.super Ljava/lang/Object;
.source "OptionalUInt64.java"


# instance fields
.field public specified:Z

.field public value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/hardware/configstore/V1_0/OptionalUInt64;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 58
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 59
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 60
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 59
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 65
    new-instance v4, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    invoke-direct {v4}, Landroid/hardware/configstore/V1_0/OptionalUInt64;-><init>()V

    .line 66
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 71
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
            "Landroid/hardware/configstore/V1_0/OptionalUInt64;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 93
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 95
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    mul-int/lit8 v5, v2, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 97
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 10
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 11
    return v0

    .line 13
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 14
    return v1

    .line 16
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    if-eq v2, v3, :cond_11

    .line 17
    return v1

    .line 19
    :cond_11
    check-cast p1, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    .line 20
    iget-boolean v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    iget-boolean v3, p1, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    if-eq v2, v3, :cond_1a

    .line 21
    return v1

    .line 23
    :cond_1a
    iget-wide v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    iget-wide v4, p1, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_23

    .line 24
    return v1

    .line 26
    :cond_23
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 76
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    .line 77
    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    .line 78
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 49
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 50
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ".specified = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-wide v1, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 105
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->specified:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 106
    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    iget-wide v0, p0, Landroid/hardware/configstore/V1_0/OptionalUInt64;->value:J

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 107
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 81
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 82
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 84
    return-void
.end method