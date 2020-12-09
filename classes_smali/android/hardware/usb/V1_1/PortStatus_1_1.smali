.class public final Landroid/hardware/usb/V1_1/PortStatus_1_1;
.super Ljava/lang/Object;
.source "PortStatus_1_1.java"


# instance fields
.field public currentMode:I

.field public status:Landroid/hardware/usb/V1_0/PortStatus;

.field public supportedModes:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/usb/V1_0/PortStatus;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortStatus;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

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
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 65
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 66
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 66
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 72
    new-instance v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    invoke-direct {v4}, Landroid/hardware/usb/V1_1/PortStatus_1_1;-><init>()V

    .line 73
    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 78
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
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 100
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x30

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 102
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 103
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    mul-int/lit8 v5, v2, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 105
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 109
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 11
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 12
    return v0

    .line 14
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 15
    return v1

    .line 17
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    if-eq v2, v3, :cond_11

    .line 18
    return v1

    .line 20
    :cond_11
    check-cast p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 21
    iget-object v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 22
    return v1

    .line 24
    :cond_1e
    iget v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 25
    return v1

    .line 27
    :cond_31
    iget v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget p1, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    if-eq v2, p1, :cond_38

    .line 28
    return v1

    .line 30
    :cond_38
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 36
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 83
    iget-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/usb/V1_0/PortStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 84
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 85
    const-wide/16 v0, 0x2c

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 86
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 56
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ".status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", .supportedModes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/V1_1/PortMode_1_1;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .currentMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    invoke-static {v1}, Landroid/hardware/usb/V1_1/PortMode_1_1;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 113
    iget-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/usb/V1_0/PortStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 115
    const-wide/16 v0, 0x2c

    add-long/2addr p2, v0

    iget v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 116
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 89
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 92
    return-void
.end method
