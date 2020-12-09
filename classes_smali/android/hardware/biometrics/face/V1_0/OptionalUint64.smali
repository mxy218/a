.class public final Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.super Ljava/lang/Object;
.source "OptionalUint64.java"


# instance fields
.field public status:I

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
            "Landroid/hardware/biometrics/face/V1_0/OptionalUint64;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 64
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 65
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 66
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 65
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 71
    new-instance v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v4}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 72
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 73
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 77
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
            "Landroid/hardware/biometrics/face/V1_0/OptionalUint64;",
            ">;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 97
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 98
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 99
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 100
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 101
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    mul-int/lit8 v5, v2, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 103
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 106
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 107
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 17
    return v0

    .line 19
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 20
    return v1

    .line 22
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    if-eq v2, v3, :cond_11

    .line 23
    return v1

    .line 25
    :cond_11
    check-cast p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 26
    iget v2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    iget v3, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    if-eq v2, v3, :cond_1a

    .line 27
    return v1

    .line 29
    :cond_1a
    iget-wide v2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    iget-wide v4, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_23

    .line 30
    return v1

    .line 32
    :cond_23
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 82
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 83
    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 84
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 55
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 56
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 57
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ".status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    invoke-static {v1}, Landroid/hardware/biometrics/face/V1_0/Status;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-wide v1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 111
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 112
    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    iget-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 113
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 87
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 88
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 90
    return-void
.end method
