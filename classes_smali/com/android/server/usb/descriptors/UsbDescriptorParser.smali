.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DESCRIPTORS_ALLOC_SIZE:I = 0x80

.field private static final IN_HEADSET_TRIGGER:F = 0.75f

.field private static final OUT_HEADSET_TRIGGER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "UsbDescriptorParser"


# instance fields
.field private mACInterfacesSpec:I

.field private mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field private mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field private final mDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceAddr:Ljava/lang/String;

.field private mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 51
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 54
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 62
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    .line 65
    return-void
.end method

.method private allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    .line 115
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    .line 118
    nop

    .line 119
    const/4 v2, 0x1

    const-string v3, "UsbDescriptorParser"

    if-eq v1, v2, :cond_96

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_43

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x21

    if-eq v1, v2, :cond_37

    const/16 v2, 0x24

    if-eq v1, v2, :cond_32

    const/16 p1, 0x25

    if-eq v1, p1, :cond_2d

    const/4 p1, 0x0

    goto/16 :goto_9e

    .line 184
    :cond_2d
    invoke-static {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p1

    .line 185
    goto :goto_9e

    .line 180
    :cond_32
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p1

    .line 181
    goto :goto_9e

    .line 166
    :cond_37
    new-instance p1, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    .line 167
    goto :goto_9e

    .line 173
    :cond_3d
    new-instance p1, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    .line 174
    goto :goto_9e

    .line 150
    :cond_43
    new-instance p1, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    .line 151
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v2, :cond_53

    .line 152
    move-object v4, p1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v2, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_9e

    .line 155
    :cond_53
    const-string p1, "Endpoint Descriptor found with no associated Interface Descriptor!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_5e
    new-instance p1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 140
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz v2, :cond_6f

    .line 141
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v2, v4}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_9e

    .line 143
    :cond_6f
    const-string p1, "Interface Descriptor found with no associated Config Descriptor!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_7a
    new-instance p1, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 129
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v2, :cond_8b

    .line 130
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-virtual {v2, v4}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_9e

    .line 132
    :cond_8b
    const-string p1, "Config Descriptor found with no associated Device Descriptor!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_96
    new-instance p1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 125
    nop

    .line 191
    :goto_9e
    if-nez p1, :cond_c5

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Descriptor len: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance p1, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    .line 198
    :cond_c5
    return-object p1
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public getACInterfaceDescriptors(BI)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 328
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_60

    .line 330
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v3, :cond_36

    .line 331
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 332
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_35

    .line 333
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v3

    if-ne v3, p2, :cond_35

    .line 334
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_35
    goto :goto_60

    .line 337
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Audio Interface l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_60
    :goto_60
    goto :goto_b

    .line 342
    :cond_61
    return-object v0
.end method

.method public getACInterfaceSpec()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return v0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object v0
.end method

.method public getDescriptorString(I)Ljava/lang/String;
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescriptors(B)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 293
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    if-ne v3, p1, :cond_20

    .line 294
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_20
    goto :goto_b

    .line 297
    :cond_21
    return-object v0
.end method

.method public getDeviceAddr()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object v0
.end method

.method public getInputHeadsetProbability()F
    .registers 4

    .line 529
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 530
    return v1

    .line 533
    :cond_8
    nop

    .line 536
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMic()Z

    move-result v0

    .line 539
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasSpeaker()Z

    move-result v2

    .line 541
    if-eqz v0, :cond_17

    if-eqz v2, :cond_17

    .line 542
    const/high16 v1, 0x3f400000  # 0.75f

    .line 545
    :cond_17
    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 546
    const/high16 v0, 0x3e800000  # 0.25f

    add-float/2addr v1, v0

    .line 549
    :cond_22
    return v1
.end method

.method public getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 307
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_59

    .line 308
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_2f

    .line 309
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 310
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v3

    if-ne v3, p1, :cond_2e

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_2e
    goto :goto_59

    .line 314
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Interface l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_59
    :goto_59
    goto :goto_b

    .line 319
    :cond_5a
    return-object v0
.end method

.method public getOutputHeadsetProbability()F
    .registers 8

    .line 566
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 567
    return v1

    .line 570
    :cond_8
    nop

    .line 574
    const/4 v0, 0x0

    .line 575
    const/4 v2, 0x3

    .line 576
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 579
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_43

    .line 580
    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 581
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x301

    if-eq v5, v6, :cond_40

    .line 582
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x302

    if-eq v5, v6, :cond_40

    .line 584
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v4

    const/16 v5, 0x402

    if-ne v4, v5, :cond_3f

    goto :goto_40

    .line 588
    :cond_3f
    goto :goto_6d

    .line 585
    :cond_40
    :goto_40
    nop

    .line 586
    move v0, v3

    goto :goto_6e

    .line 589
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Output terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 589
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_6d
    goto :goto_14

    .line 594
    :cond_6e
    :goto_6e
    if-eqz v0, :cond_72

    .line 595
    const/high16 v1, 0x3f400000  # 0.75f

    .line 598
    :cond_72
    if-eqz v0, :cond_7d

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 599
    const/high16 v0, 0x3e800000  # 0.25f

    add-float/2addr v1, v0

    .line 602
    :cond_7d
    return v1
.end method

.method public getParsingSpec()I
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getRawDescriptors()[B
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getUsbSpec()I
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_9

    .line 79
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    return v0

    .line 81
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public hasAudioInterface()Z
    .registers 3

    .line 481
    nop

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public hasHIDInterface()Z
    .registers 2

    .line 490
    nop

    .line 491
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasInput()Z
    .registers 6

    .line 355
    nop

    .line 356
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 358
    nop

    .line 359
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 360
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v3, :cond_2f

    .line 361
    check-cast v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 363
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    .line 367
    and-int/lit16 v2, v2, -0x100

    .line 368
    const/16 v3, 0x100

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x300

    if-eq v2, v3, :cond_2e

    .line 371
    nop

    .line 372
    goto :goto_5b

    .line 374
    :cond_2e
    goto :goto_59

    .line 375
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined Audio Input terminal l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_59
    goto :goto_c

    .line 359
    :cond_5a
    const/4 v0, 0x0

    .line 383
    :goto_5b
    return v0
.end method

.method public hasMIDIInterface()Z
    .registers 6

    .line 508
    nop

    .line 509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 512
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_25

    .line 513
    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 514
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_24

    .line 515
    return v0

    .line 517
    :cond_24
    goto :goto_4f

    .line 518
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined Audio Class Interface l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_4f
    goto :goto_a

    .line 522
    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public hasMic()Z
    .registers 6

    .line 427
    nop

    .line 429
    nop

    .line 430
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 433
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v3, :cond_42

    .line 434
    check-cast v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 435
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v3

    const/16 v4, 0x201

    if-eq v3, v4, :cond_40

    .line 436
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v3

    const/16 v4, 0x402

    if-eq v3, v4, :cond_40

    .line 437
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v3

    const/16 v4, 0x400

    if-eq v3, v4, :cond_40

    .line 438
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    const/16 v3, 0x603

    if-ne v2, v3, :cond_3f

    goto :goto_40

    .line 442
    :cond_3f
    goto :goto_6c

    .line 439
    :cond_40
    :goto_40
    nop

    .line 440
    goto :goto_6e

    .line 443
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined Audio Input terminal l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_6c
    goto :goto_c

    .line 432
    :cond_6d
    const/4 v0, 0x0

    .line 447
    :goto_6e
    return v0
.end method

.method public hasOutput()Z
    .registers 6

    .line 393
    nop

    .line 394
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 396
    nop

    .line 397
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 398
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v3, :cond_2f

    .line 399
    check-cast v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 401
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    .line 405
    and-int/lit16 v2, v2, -0x100

    .line 406
    const/16 v3, 0x100

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x200

    if-eq v2, v3, :cond_2e

    .line 409
    nop

    .line 410
    goto :goto_5b

    .line 412
    :cond_2e
    goto :goto_59

    .line 413
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined Audio Input terminal l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_59
    goto :goto_c

    .line 397
    :cond_5a
    const/4 v0, 0x0

    .line 420
    :goto_5b
    return v0
.end method

.method public hasSpeaker()Z
    .registers 6

    .line 454
    nop

    .line 456
    nop

    .line 457
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 460
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v3, :cond_3a

    .line 461
    check-cast v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 462
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v3

    const/16 v4, 0x301

    if-eq v3, v4, :cond_38

    .line 463
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v3

    const/16 v4, 0x302

    if-eq v3, v4, :cond_38

    .line 464
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v2

    const/16 v3, 0x402

    if-ne v2, v3, :cond_37

    goto :goto_38

    .line 468
    :cond_37
    goto :goto_64

    .line 465
    :cond_38
    :goto_38
    nop

    .line 466
    goto :goto_66

    .line 469
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined Audio Output terminal l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_64
    goto :goto_c

    .line 459
    :cond_65
    const/4 v0, 0x0

    .line 474
    :goto_66
    return v0
.end method

.method public hasStorageInterface()Z
    .registers 2

    .line 499
    nop

    .line 500
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInputHeadset()Z
    .registers 3

    .line 559
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000  # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOutputHeadset()Z
    .registers 3

    .line 612
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000  # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public parseDescriptors([B)V
    .registers 6

    .line 217
    const-string v0, "UsbDescriptorParser"

    new-instance v1, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 218
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result p1

    if-lez p1, :cond_3b

    .line 219
    const/4 p1, 0x0

    .line 221
    :try_start_e
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    .line 224
    goto :goto_19

    .line 222
    :catch_13
    move-exception v2

    .line 223
    const-string v3, "Exception allocating USB descriptor."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_19
    if-eqz p1, :cond_3a

    .line 229
    :try_start_1b
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 232
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_29
    .catchall {:try_start_1b .. :try_end_21} :catchall_27

    .line 239
    :goto_21
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    goto :goto_3a

    .line 239
    :catchall_27
    move-exception v0

    goto :goto_34

    .line 233
    :catch_29
    move-exception v2

    .line 234
    :try_start_2a
    const-string v3, "Exception parsing USB descriptors."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_27

    goto :goto_21

    .line 239
    :goto_34
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v0

    .line 242
    :cond_3a
    :goto_3a
    goto :goto_7

    .line 246
    :cond_3b
    return-void
.end method

.method public setACInterfaceSpec(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 87
    return-void
.end method

.method public toAndroidUsbDevice()Landroid/hardware/usb/UsbDevice$Builder;
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    const-string v1, "UsbDescriptorParser"

    if-nez v0, :cond_e

    .line 276
    const-string/jumbo v0, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object v0

    .line 281
    if-nez v0, :cond_1a

    .line 282
    const-string/jumbo v2, "toAndroidUsbDevice() ERROR Creating Device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1a
    return-object v0
.end method
