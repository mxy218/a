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
    .registers 6
    .param p0, "is"  # [I
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
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 213
    .local v3, "type":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v3  # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 215
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .registers 6
    .param p0, "cmd"  # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p1, "expectedAddress"  # I
    .param p2, "tag"  # Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 159
    .local v0, "src":I
    if-eq v0, p1, :cond_29

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source [Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    return v1

    .line 163
    :cond_29
    const/4 v1, 0x1

    return v1
.end method

.method static cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 11
    .param p0, "info"  # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p1, "newPowerStatus"  # I

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
    .registers 5
    .param p0, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"  # Ljava/lang/String;
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
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 407
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 409
    .end local v1  # "value":Ljava/lang/Object;, "TT;"
    goto :goto_a

    .line 410
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 411
    return-void
.end method

.method static dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p0, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"  # Ljava/lang/String;
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
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 386
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 387
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 389
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_e

    .line 390
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 391
    return-void
.end method

.method static dumpSparseArray(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 8
    .param p0, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"  # Ljava/lang/String;
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
    .local p2, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 358
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 359
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_22

    .line 360
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 361
    .local v2, "key":I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 362
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 359
    .end local v2  # "key":I
    .end local v3  # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 365
    .end local v1  # "i":I
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 366
    return-void
.end method

.method static getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .param p0, "cmd"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 195
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x7f

    .line 196
    .local v1, "volume":I
    if-ltz v1, :cond_f

    const/16 v2, 0x64

    if-ge v2, v1, :cond_10

    .line 197
    :cond_f
    const/4 v1, -0x1

    .line 199
    :cond_10
    return v1
.end method

.method static getDefaultDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "address"  # I

    .line 127
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 130
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static getLocalPortFromPhysicalAddress(II)I
    .registers 8
    .param p0, "targetPhysicalAddress"  # I
    .param p1, "myPhysicalAddress"  # I

    .line 433
    if-ne p1, p0, :cond_4

    .line 434
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_4
    const v0, 0xf000

    .line 438
    .local v0, "mask":I
    const v1, 0xf000

    .line 439
    .local v1, "finalMask":I
    move v2, p1

    .line 441
    .local v2, "maskedAddress":I
    :goto_b
    if-eqz v2, :cond_13

    .line 442
    and-int v2, p1, v0

    .line 443
    or-int/2addr v1, v0

    .line 444
    shr-int/lit8 v0, v0, 0x4

    goto :goto_b

    .line 447
    :cond_13
    and-int v3, p0, v1

    .line 448
    .local v3, "portAddress":I
    shl-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v3

    if-eq v4, p1, :cond_1c

    .line 449
    const/4 v4, -0x1

    return v4

    .line 452
    :cond_1c
    shl-int/lit8 v0, v0, 0x4

    .line 453
    and-int v4, v3, v0

    .line 454
    .local v4, "port":I
    :goto_20
    shr-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_27

    .line 455
    shr-int/lit8 v4, v4, 0x4

    goto :goto_20

    .line 457
    :cond_27
    return v4
.end method

.method static getTypeFromAddress(I)I
    .registers 2
    .param p0, "address"  # I

    .line 112
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    aget v0, v0, p0

    return v0

    .line 115
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method static isAffectingActiveRoutingPath(II)Z
    .registers 5
    .param p0, "activePath"  # I
    .param p1, "newPath"  # I

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xc

    if-gt v0, v1, :cond_14

    .line 291
    shr-int v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    .line 292
    .local v1, "nibble":I
    if-eqz v1, :cond_11

    .line 293
    const v2, 0xfff0

    shl-int/2addr v2, v0

    .line 294
    .local v2, "mask":I
    and-int/2addr p1, v2

    .line 295
    goto :goto_14

    .line 290
    .end local v1  # "nibble":I
    .end local v2  # "mask":I
    :cond_11
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 298
    .end local v0  # "i":I
    :cond_14
    :goto_14
    if-nez p1, :cond_18

    .line 299
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_18
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v0

    return v0
.end method

.method static isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "cmd"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 184
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method static isInActiveRoutingPath(II)Z
    .registers 6
    .param p0, "activePath"  # I
    .param p1, "newPath"  # I

    .line 318
    const/16 v0, 0xc

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_19

    .line 319
    shr-int v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    .line 320
    .local v1, "nibbleActive":I
    if-nez v1, :cond_b

    .line 321
    goto :goto_19

    .line 323
    :cond_b
    shr-int v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    .line 324
    .local v2, "nibbleNew":I
    if-nez v2, :cond_12

    .line 325
    goto :goto_19

    .line 327
    :cond_12
    if-eq v1, v2, :cond_16

    .line 328
    const/4 v3, 0x0

    return v3

    .line 318
    .end local v1  # "nibbleActive":I
    .end local v2  # "nibbleNew":I
    :cond_16
    add-int/lit8 v0, v0, -0x4

    goto :goto_2

    .line 331
    .end local v0  # "i":I
    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method static isValidAddress(I)Z
    .registers 2
    .param p0, "address"  # I

    .line 101
    if-ltz p0, :cond_8

    const/16 v0, 0xe

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
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
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 261
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 262
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 264
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 265
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 267
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p0, "cmd"  # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method private static printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"  # Ljava/lang/String;

    .line 369
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, p1

    goto :goto_e

    :cond_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

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
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
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
    .end local v1  # "i":I
    :cond_16
    return-object v0
.end method

.method static threeBytesToInt([B)I
    .registers 3
    .param p0, "data"  # [B

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

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([B)I
    .registers 3
    .param p0, "data"  # [B

    .line 225
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([BI)I
    .registers 4
    .param p0, "data"  # [B
    .param p1, "offset"  # I

    .line 236
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static verifyAddressType(II)V
    .registers 6
    .param p0, "logicalAddress"  # I
    .param p1, "deviceType"  # I

    .line 142
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    .line 143
    .local v0, "actualDeviceType":I
    if-ne v0, p1, :cond_7

    .line 147
    return-void

    .line 144
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device type missmatch:[Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
