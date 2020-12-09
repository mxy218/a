.class final Lcom/android/server/hdmi/HdmiUtils;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiUtils$CodecSad;,
        Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;,
        Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
    }
.end annotation


# static fields
.field private static final ADDRESS_TO_TYPE:[I

.field private static final DEFAULT_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HdmiUtils"

.field static final TARGET_NOT_UNDER_LOCAL_DEVICE:I = -0x1

.field static final TARGET_SAME_PHYSICAL_ADDRESS:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 48
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    .line 66
    const-string v1, "TV"

    const-string v2, "Recorder_1"

    const-string v3, "Recorder_2"

    const-string v4, "Tuner_1"

    const-string v5, "Playback_1"

    const-string v6, "AudioSystem"

    const-string v7, "Tuner_2"

    const-string v8, "Tuner_3"

    const-string v9, "Playback_2"

    const-string v10, "Recorder_3"

    const-string v11, "Tuner_4"

    const-string v12, "Playback_3"

    const-string v13, "Reserved_1"

    const-string v14, "Reserved_2"

    const-string v15, "Secondary_TV"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    return-void

    :array_2e
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x4
        0x5
        0x3
        0x3
        0x4
        0x1
        0x3
        0x4
        0x2
        0x2
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asImmutableList([I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 215
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .registers 5

    .line 158
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p0

    .line 159
    if-eq p0, p1, :cond_29

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid source [Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Actual:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 p0, 0x0

    return p0

    .line 163
    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method static cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 11

    .line 338
    new-instance v8, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 339
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    .line 340
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    .line 338
    return-object v8
.end method

.method static dumpIterable(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 405
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 407
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 408
    invoke-virtual {p0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 409
    goto :goto_a

    .line 410
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 411
    return-void
.end method

.method static dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 384
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 386
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 387
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 389
    goto :goto_e

    .line 390
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 391
    return-void
.end method

.method static dumpSparseArray(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 356
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 358
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 359
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_22

    .line 360
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 361
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 365
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 366
    return-void
.end method

.method static getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    .line 194
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    .line 195
    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x7f

    .line 196
    if-ltz p0, :cond_f

    const/16 v0, 0x64

    if-ge v0, p0, :cond_10

    .line 197
    :cond_f
    const/4 p0, -0x1

    .line 199
    :cond_10
    return p0
.end method

.method static getDefaultDeviceName(I)Ljava/lang/String;
    .registers 2

    .line 127
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 130
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public static getLocalPortFromPhysicalAddress(II)I
    .registers 5

    .line 433
    if-ne p1, p0, :cond_4

    .line 434
    const/4 p0, 0x0

    return p0

    .line 437
    :cond_4
    nop

    .line 438
    nop

    .line 439
    const v0, 0xf000

    move v1, v0

    move v2, v1

    move v0, p1

    .line 441
    :goto_c
    if-eqz v0, :cond_14

    .line 442
    and-int v0, p1, v2

    .line 443
    or-int/2addr v1, v2

    .line 444
    shr-int/lit8 v2, v2, 0x4

    goto :goto_c

    .line 447
    :cond_14
    and-int/2addr p0, v1

    .line 448
    shl-int/lit8 v0, v1, 0x4

    and-int/2addr v0, p0

    if-eq v0, p1, :cond_1c

    .line 449
    const/4 p0, -0x1

    return p0

    .line 452
    :cond_1c
    shl-int/lit8 p1, v2, 0x4

    .line 453
    and-int/2addr p0, p1

    .line 454
    :goto_1f
    shr-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_25

    .line 455
    move p0, p1

    goto :goto_1f

    .line 457
    :cond_25
    return p0
.end method

.method static getTypeFromAddress(I)I
    .registers 2

    .line 112
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    aget p0, v0, p0

    return p0

    .line 115
    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method static isAffectingActiveRoutingPath(II)Z
    .registers 4

    .line 290
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xc

    if-gt v0, v1, :cond_15

    .line 291
    shr-int v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    .line 292
    if-eqz v1, :cond_12

    .line 293
    const v1, 0xfff0

    shl-int v0, v1, v0

    .line 294
    and-int/2addr p1, v0

    .line 295
    goto :goto_15

    .line 290
    :cond_12
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 298
    :cond_15
    :goto_15
    if-nez p1, :cond_19

    .line 299
    const/4 p0, 0x1

    return p0

    .line 301
    :cond_19
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result p0

    return p0
.end method

.method static isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3

    .line 183
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    .line 184
    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/16 v1, 0x80

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method static isInActiveRoutingPath(II)Z
    .registers 5

    .line 318
    const/16 v0, 0xc

    :goto_2
    if-ltz v0, :cond_19

    .line 319
    shr-int v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    .line 320
    if-nez v1, :cond_b

    .line 321
    goto :goto_19

    .line 323
    :cond_b
    shr-int v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    .line 324
    if-nez v2, :cond_12

    .line 325
    goto :goto_19

    .line 327
    :cond_12
    if-eq v1, v2, :cond_16

    .line 328
    const/4 p0, 0x0

    return p0

    .line 318
    :cond_16
    add-int/lit8 v0, v0, -0x4

    goto :goto_2

    .line 331
    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method static isValidAddress(I)Z
    .registers 2

    .line 101
    if-ltz p0, :cond_8

    const/16 v0, 0xe

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 258
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 261
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 262
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 264
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 265
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 267
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    move v0, v1

    :cond_b
    return v0
.end method

.method private static printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 369
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method static sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 252
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 254
    :cond_16
    return-object v0
.end method

.method static threeBytesToInt([B)I
    .registers 3

    .line 246
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static twoBytesToInt([B)I
    .registers 3

    .line 225
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static twoBytesToInt([BI)I
    .registers 3

    .line 236
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static verifyAddressType(II)V
    .registers 5

    .line 142
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result p0

    .line 143
    if-ne p0, p1, :cond_7

    .line 147
    return-void

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device type missmatch:[Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Actual:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
