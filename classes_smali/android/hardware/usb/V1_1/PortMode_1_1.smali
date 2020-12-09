.class public final Landroid/hardware/usb/V1_1/PortMode_1_1;
.super Ljava/lang/Object;
.source "PortMode_1_1.java"


# static fields
.field public static final AUDIO_ACCESSORY:I = 0x4

.field public static final DEBUG_ACCESSORY:I = 0x8

.field public static final DFP:I = 0x2

.field public static final DRP:I = 0x3

.field public static final NONE:I = 0x0

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_MODES_1_1:I = 0x10

.field public static final UFP:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 6

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    nop

    .line 58
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 60
    const-string v1, "UFP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_17

    .line 59
    :cond_16
    const/4 v2, 0x0

    .line 63
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 64
    const-string v1, "DFP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v2, v2, 0x2

    .line 67
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 68
    const-string v1, "DRP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v2, v2, 0x3

    .line 71
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 72
    const-string v4, "NUM_MODES"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v2, v2, 0x4

    .line 75
    :cond_3b
    if-ne v1, v3, :cond_44

    .line 76
    const-string v1, "AUDIO_ACCESSORY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/lit8 v2, v2, 0x4

    .line 79
    :cond_44
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_51

    .line 80
    const-string v1, "DEBUG_ACCESSORY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    or-int/lit8 v2, v2, 0x8

    .line 83
    :cond_51
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5e

    .line 84
    const-string v1, "NUM_MODES_1_1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    or-int/lit8 v2, v2, 0x10

    .line 87
    :cond_5e
    if-eq p0, v2, :cond_7a

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_7a
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 28
    if-nez p0, :cond_5

    .line 29
    const-string p0, "NONE"

    return-object p0

    .line 31
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 32
    const-string p0, "UFP"

    return-object p0

    .line 34
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 35
    const-string p0, "DFP"

    return-object p0

    .line 37
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 38
    const-string p0, "DRP"

    return-object p0

    .line 40
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 41
    const-string p0, "NUM_MODES"

    return-object p0

    .line 43
    :cond_1d
    if-ne p0, v0, :cond_22

    .line 44
    const-string p0, "AUDIO_ACCESSORY"

    return-object p0

    .line 46
    :cond_22
    const/16 v0, 0x8

    if-ne p0, v0, :cond_29

    .line 47
    const-string p0, "DEBUG_ACCESSORY"

    return-object p0

    .line 49
    :cond_29
    const/16 v0, 0x10

    if-ne p0, v0, :cond_30

    .line 50
    const-string p0, "NUM_MODES_1_1"

    return-object p0

    .line 52
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
