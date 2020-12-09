.class abstract Lcom/android/server/usb/descriptors/UsbACEndpoint;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACEndpoint"


# instance fields
.field protected final mSubclass:I

.field protected mSubtype:B


# direct methods
.method constructor <init>(IBI)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 34
    iput p3, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    .line 35
    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 4

    .line 54
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result p0

    .line 56
    const/4 v0, 0x1

    if-eq p0, v0, :cond_39

    const/4 v0, 0x2

    if-eq p0, v0, :cond_33

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2d

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown Audio Class Endpoint id:0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbACEndpoint"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_2d
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;-><init>(IBI)V

    return-object v0

    .line 61
    :cond_33
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;-><init>(IBI)V

    return-object v0

    .line 58
    :cond_39
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;-><init>(IBI)V

    return-object v0
.end method


# virtual methods
.method public getSubclass()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    return v0
.end method

.method public getSubtype()B
    .registers 2

    .line 42
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 2

    .line 47
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    .line 49
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mLength:I

    return p1
.end method
