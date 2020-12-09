.class public final Landroid/hardware/usb/V1_2/ContaminantProtectionStatus;
.super Ljava/lang/Object;
.source "ContaminantProtectionStatus.java"


# static fields
.field public static final DISABLED:I = 0x8

.field public static final FORCE_DISABLE:I = 0x4

.field public static final FORCE_SINK:I = 0x1

.field public static final FORCE_SOURCE:I = 0x2

.field public static final NONE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    nop

    .line 55
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 57
    const-string v1, "FORCE_SINK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_17

    .line 56
    :cond_16
    const/4 v2, 0x0

    .line 60
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 61
    const-string v1, "FORCE_SOURCE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v2, v2, 0x2

    .line 64
    :cond_23
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2f

    .line 65
    const-string v1, "FORCE_DISABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v2, v2, 0x4

    .line 68
    :cond_2f
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3c

    .line 69
    const-string v1, "DISABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v2, v2, 0x8

    .line 72
    :cond_3c
    if-eq p0, v2, :cond_58

    .line 73
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

    .line 75
    :cond_58
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 34
    if-nez p0, :cond_5

    .line 35
    const-string p0, "NONE"

    return-object p0

    .line 37
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 38
    const-string p0, "FORCE_SINK"

    return-object p0

    .line 40
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 41
    const-string p0, "FORCE_SOURCE"

    return-object p0

    .line 43
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 44
    const-string p0, "FORCE_DISABLE"

    return-object p0

    .line 46
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 47
    const-string p0, "DISABLED"

    return-object p0

    .line 49
    :cond_1e
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
