.class public final Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "Usb10ACMixerUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ACMixerUnit"


# instance fields
.field private mChanNameID:B

.field private mChannelConfig:I

.field private mControls:[B

.field private mNameID:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;-><init>(IBBI)V

    .line 35
    return-void
.end method


# virtual methods
.method public getChanNameID()B
    .registers 2

    .line 42
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    return v0
.end method

.method public getChannelConfig()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    return v0
.end method

.method public getControls()[B
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    return-object v0
.end method

.method public getNameID()B
    .registers 2

    .line 50
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    .line 60
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNumInputs:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNumOutputs:B

    invoke-static {v0, v1}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->calcControlArraySize(II)I

    move-result v0

    .line 61
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    .line 62
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_29

    .line 63
    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 66
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    .line 68
    iget p1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mLength:I

    return p1
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 10

    .line 73
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 75
    const/4 v0, 0x0

    const-string v1, "Mixer Unit"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getUnitID()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getNumInputs()B

    move-result v1

    .line 80
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getInputIDs()[B

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num Inputs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 83
    move v3, v0

    :goto_4d
    const-string v5, " "

    const-string v6, ""

    if-ge v3, v1, :cond_75

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v3

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 85
    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_72

    .line 86
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 83
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 89
    :cond_75
    const-string v1, "]"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num Outputs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getNumOutputs()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel Config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getChannelConfig()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getControls()[B

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Controls: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 98
    nop

    :goto_d1
    array-length v3, v2

    if-ge v0, v3, :cond_f3

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 100
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f0

    .line 101
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 98
    :cond_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 104
    :cond_f3
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 106
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 107
    return-void
.end method
