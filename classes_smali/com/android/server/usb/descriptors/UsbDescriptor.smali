.class public abstract Lcom/android/server/usb/descriptors/UsbDescriptor;
.super Ljava/lang/Object;
.source "UsbDescriptor.java"

# interfaces
.implements Lcom/android/server/usb/descriptors/report/Reporting;


# static fields
.field public static final AUDIO_AUDIOCONTROL:I = 0x1

.field public static final AUDIO_AUDIOSTREAMING:I = 0x2

.field public static final AUDIO_MIDISTREAMING:I = 0x3

.field public static final AUDIO_SUBCLASS_UNDEFINED:I = 0x0

.field public static final CLASSID_APPSPECIFIC:I = 0xfe

.field public static final CLASSID_AUDIO:I = 0x1

.field public static final CLASSID_AUDIOVIDEO:I = 0x10

.field public static final CLASSID_BILLBOARD:I = 0x11

.field public static final CLASSID_CDC_CONTROL:I = 0xa

.field public static final CLASSID_COM:I = 0x2

.field public static final CLASSID_DEVICE:I = 0x0

.field public static final CLASSID_DIAGNOSTIC:I = 0xdc

.field public static final CLASSID_HEALTHCARE:I = 0xf

.field public static final CLASSID_HID:I = 0x3

.field public static final CLASSID_HUB:I = 0x9

.field public static final CLASSID_IMAGE:I = 0x6

.field public static final CLASSID_MISC:I = 0xef

.field public static final CLASSID_PHYSICAL:I = 0x5

.field public static final CLASSID_PRINTER:I = 0x7

.field public static final CLASSID_SECURITY:I = 0xd

.field public static final CLASSID_SMART_CARD:I = 0xb

.field public static final CLASSID_STORAGE:I = 0x8

.field public static final CLASSID_TYPECBRIDGE:I = 0x12

.field public static final CLASSID_VENDSPECIFIC:I = 0xff

.field public static final CLASSID_VIDEO:I = 0xe

.field public static final CLASSID_WIRELESS:I = 0xe0

.field public static final DESCRIPTORTYPE_AUDIO_ENDPOINT:B = 0x25t

.field public static final DESCRIPTORTYPE_AUDIO_INTERFACE:B = 0x24t

.field public static final DESCRIPTORTYPE_BOS:B = 0xft

.field public static final DESCRIPTORTYPE_CAPABILITY:B = 0x10t

.field public static final DESCRIPTORTYPE_CONFIG:B = 0x2t

.field public static final DESCRIPTORTYPE_DEVICE:B = 0x1t

.field public static final DESCRIPTORTYPE_ENDPOINT:B = 0x5t

.field public static final DESCRIPTORTYPE_ENDPOINT_COMPANION:B = 0x30t

.field public static final DESCRIPTORTYPE_HID:B = 0x21t

.field public static final DESCRIPTORTYPE_HUB:B = 0x29t

.field public static final DESCRIPTORTYPE_INTERFACE:B = 0x4t

.field public static final DESCRIPTORTYPE_INTERFACEASSOC:B = 0xbt

.field public static final DESCRIPTORTYPE_PHYSICAL:B = 0x23t

.field public static final DESCRIPTORTYPE_REPORT:B = 0x22t

.field public static final DESCRIPTORTYPE_STRING:B = 0x3t

.field public static final DESCRIPTORTYPE_SUPERSPEED_HUB:B = 0x2at

.field public static final REQUEST_CLEAR_FEATURE:I = 0x1

.field public static final REQUEST_GET_ADDRESS:I = 0x5

.field public static final REQUEST_GET_CONFIGURATION:I = 0x8

.field public static final REQUEST_GET_DESCRIPTOR:I = 0x6

.field public static final REQUEST_GET_STATUS:I = 0x0

.field public static final REQUEST_SET_CONFIGURATION:I = 0x9

.field public static final REQUEST_SET_DESCRIPTOR:I = 0x7

.field public static final REQUEST_SET_FEATURE:I = 0x3

.field private static final SIZE_STRINGBUFFER:I = 0x100

.field public static final STATUS_PARSED_OK:I = 0x1

.field public static final STATUS_PARSED_OVERRUN:I = 0x3

.field public static final STATUS_PARSED_UNDERRUN:I = 0x2

.field public static final STATUS_PARSE_EXCEPTION:I = 0x4

.field public static final STATUS_UNPARSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbDescriptor"

.field public static final USB_CONTROL_TRANSFER_TIMEOUT_MS:I = 0xc8

.field private static sStatusStrings:[Ljava/lang/String;

.field private static sStringBuffer:[B


# instance fields
.field protected mHierarchyLevel:I

.field protected final mLength:I

.field private mOverUnderRunCount:I

.field private mRawData:[B

.field private mStatus:I

.field protected final mType:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    .line 63
    const-string v0, "UNPARSED"

    const-string v1, "PARSED - OK"

    const-string v2, "PARSED - UNDERRUN"

    const-string v3, "PARSED - OVERRUN"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IB)V
    .registers 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 138
    const/4 v0, 0x2

    if-lt p1, v0, :cond_e

    .line 143
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 144
    iput-byte p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 145
    return-void

    .line 140
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static getUsbDescriptorString(Landroid/hardware/usb/UsbDeviceConnection;B)Ljava/lang/String;
    .registers 10

    .line 220
    nop

    .line 221
    if-eqz p1, :cond_2d

    .line 223
    const/16 v1, 0x80

    const/4 v2, 0x6

    or-int/lit16 v3, p1, 0x300

    const/4 v4, 0x0

    :try_start_9
    sget-object v5, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    const/16 v6, 0xff

    const/16 v7, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p0

    .line 231
    if-ltz p0, :cond_22

    .line 232
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    const/4 v1, 0x2

    sub-int/2addr p0, v1

    const-string v2, "UTF-16LE"

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_24

    .line 234
    :cond_22
    const-string p1, "?"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_25

    .line 238
    :goto_24
    goto :goto_2f

    .line 236
    :catch_25
    move-exception p0

    .line 237
    const-string p1, "UsbDescriptor"

    const-string v0, "Can not communicate with USB device"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :cond_2d
    const-string p1, ""

    :goto_2f
    return-object p1
.end method

.method private reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 5

    .line 244
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v0

    .line 245
    const/4 v1, 0x1

    if-eqz v0, :cond_11

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    goto :goto_3b

    .line 247
    :cond_10
    goto :goto_3b

    .line 252
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getOverUnderRunCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 256
    :goto_3b
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return v0
.end method

.method public getOverUnderRunCount()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    return v0
.end method

.method public getRawData()[B
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    return v0
.end method

.method public getStatusString()Ljava/lang/String;
    .registers 3

    .line 168
    sget-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getType()B
    .registers 2

    .line 152
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    .line 205
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v0

    .line 206
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr v1, v0

    .line 207
    if-lez v1, :cond_1b

    .line 208
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    .line 209
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_1b

    .line 210
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 213
    :cond_1b
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p1
.end method

.method public postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    .registers 6

    .line 180
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v0

    .line 181
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    const-string v2, " r: "

    const-string v3, "UsbDescriptor"

    if-ge v0, v1, :cond_43

    .line 183
    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    .line 184
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 185
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDERRUN t:0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < l: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 188
    :cond_43
    if-le v0, v1, :cond_7e

    .line 190
    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->reverse(I)V

    .line 191
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 192
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int p1, v0, p1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OVERRRUN t:0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > l: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 197
    :cond_7e
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 199
    :goto_81
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 4

    .line 260
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Len: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    if-eqz v1, :cond_38

    .line 264
    invoke-virtual {p1, v1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeHeader(ILjava/lang/String;)V

    goto :goto_3c

    .line 266
    :cond_38
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 269
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 272
    :cond_46
    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 161
    return-void
.end method

.method public shortReport(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 4

    .line 276
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Len: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method
