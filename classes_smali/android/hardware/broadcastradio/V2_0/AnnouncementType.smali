.class public final Landroid/hardware/broadcastradio/V2_0/AnnouncementType;
.super Ljava/lang/Object;
.source "AnnouncementType.java"


# static fields
.field public static final EMERGENCY:B = 0x1t

.field public static final EVENT:B = 0x6t

.field public static final MISC:B = 0x8t

.field public static final NEWS:B = 0x5t

.field public static final SPORT:B = 0x7t

.field public static final TRAFFIC:B = 0x3t

.field public static final WARNING:B = 0x2t

.field public static final WEATHER:B = 0x4t


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    nop

    .line 68
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 69
    const-string v1, "EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    int-to-byte v1, v2

    goto :goto_13

    .line 68
    :cond_12
    const/4 v1, 0x0

    .line 72
    :goto_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 73
    const-string v2, "WARNING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 76
    :cond_20
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    .line 77
    const-string v2, "TRAFFIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    .line 80
    :cond_2d
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    .line 81
    const-string v2, "WEATHER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    .line 84
    :cond_3a
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 85
    const-string v2, "NEWS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    .line 88
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_54

    .line 89
    const-string v2, "EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    .line 92
    :cond_54
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_61

    .line 93
    const-string v2, "SPORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    .line 96
    :cond_61
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6f

    .line 97
    const-string v2, "MISC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 100
    :cond_6f
    if-eq p0, v1, :cond_90

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_90
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(B)Ljava/lang/String;
    .registers 3

    .line 38
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 39
    const-string p0, "EMERGENCY"

    return-object p0

    .line 41
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 42
    const-string p0, "WARNING"

    return-object p0

    .line 44
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 45
    const-string p0, "TRAFFIC"

    return-object p0

    .line 47
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 48
    const-string p0, "WEATHER"

    return-object p0

    .line 50
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 51
    const-string p0, "NEWS"

    return-object p0

    .line 53
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 54
    const-string p0, "EVENT"

    return-object p0

    .line 56
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 57
    const-string p0, "SPORT"

    return-object p0

    .line 59
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 60
    const-string p0, "MISC"

    return-object p0

    .line 62
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
