.class public final Lcom/android/server/usb/descriptors/Usb10ACHeader;
.super Lcom/android/server/usb/descriptors/UsbACHeaderInterface;
.source "Usb10ACHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ACHeader"


# instance fields
.field private mControls:B

.field private mInterfaceNums:[B

.field private mNumInterfaces:B


# direct methods
.method public constructor <init>(IBBII)V
    .registers 6

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;-><init>(IBBII)V

    .line 28
    const/4 p1, 0x0

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    .line 31
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getControls()B
    .registers 2

    .line 48
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mControls:B

    return v0
.end method

.method public getInterfaceNums()[B
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    return-object v0
.end method

.method public getNumInterfaces()B
    .registers 2

    .line 40
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mTotalLength:I

    .line 55
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mADCRelease:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_13

    .line 56
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mControls:B

    goto :goto_2f

    .line 58
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    .line 59
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    .line 60
    const/4 v0, 0x0

    :goto_20
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    if-ge v0, v1, :cond_2f

    .line 61
    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 65
    :cond_2f
    :goto_2f
    iget p1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mLength:I

    return p1
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 9

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 72
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getNumInterfaces()B

    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Interfaces"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    if-lez v0, :cond_5d

    .line 77
    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getInterfaceNums()[B

    move-result-object v2

    .line 79
    if-eqz v2, :cond_58

    .line 80
    const/4 v4, 0x0

    :goto_36
    if-ge v4, v0, :cond_58

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_55

    .line 83
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 87
    :cond_58
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getControls()B

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 92
    return-void
.end method
