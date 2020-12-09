.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;
.super Ljava/lang/Object;
.source "FingerprintAcquired.java"


# instance fields
.field public acquiredInfo:I


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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 54
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 55
    mul-int/lit8 v3, v2, 0x4

    int-to-long v5, v3

    .line 56
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 55
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 61
    new-instance v4, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    invoke-direct {v4}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;-><init>()V

    .line 62
    mul-int/lit8 v5, v3, 0x4

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 63
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 67
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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;",
            ">;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 86
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 87
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 88
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 89
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 90
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    mul-int/lit8 v5, v2, 0x4

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 92
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 95
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 96
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 13
    return v0

    .line 15
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 16
    return v1

    .line 18
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    if-eq v2, v3, :cond_11

    .line 19
    return v1

    .line 21
    :cond_11
    check-cast p1, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    .line 22
    iget v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    iget p1, p1, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    if-eq v2, p1, :cond_1a

    .line 23
    return v1

    .line 25
    :cond_1a
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 72
    const-wide/16 v0, 0x0

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    .line 73
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 45
    const-wide/16 v0, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 46
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 47
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ".acquiredInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    invoke-static {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquiredInfo;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 6

    .line 100
    const-wide/16 v0, 0x0

    add-long/2addr p2, v0

    iget v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 101
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 76
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 77
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 79
    return-void
.end method
