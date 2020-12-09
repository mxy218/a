.class public final Landroid/hardware/biometrics/face/V1_0/FaceError;
.super Ljava/lang/Object;
.source "FaceError.java"


# static fields
.field public static final CANCELED:I = 0x5

.field public static final HW_UNAVAILABLE:I = 0x1

.field public static final LOCKOUT:I = 0x7

.field public static final LOCKOUT_PERMANENT:I = 0x9

.field public static final NO_SPACE:I = 0x4

.field public static final TIMEOUT:I = 0x3

.field public static final UNABLE_TO_PROCESS:I = 0x2

.field public static final UNABLE_TO_REMOVE:I = 0x6

.field public static final VENDOR:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    nop

    .line 92
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 93
    const-string v1, "HW_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_12

    .line 92
    :cond_11
    const/4 v2, 0x0

    .line 96
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 97
    const-string v1, "UNABLE_TO_PROCESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v2, v2, 0x2

    .line 100
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2a

    .line 101
    const-string v1, "TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v2, v2, 0x3

    .line 104
    :cond_2a
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_36

    .line 105
    const-string v1, "NO_SPACE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v2, v2, 0x4

    .line 108
    :cond_36
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_42

    .line 109
    const-string v1, "CANCELED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v2, v2, 0x5

    .line 112
    :cond_42
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4e

    .line 113
    const-string v1, "UNABLE_TO_REMOVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v2, v2, 0x6

    .line 116
    :cond_4e
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5a

    .line 117
    const-string v1, "LOCKOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v2, v2, 0x7

    .line 120
    :cond_5a
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_67

    .line 121
    const-string v1, "VENDOR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v2, v2, 0x8

    .line 124
    :cond_67
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_74

    .line 125
    const-string v1, "LOCKOUT_PERMANENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v2, v2, 0x9

    .line 128
    :cond_74
    if-eq p0, v2, :cond_90

    .line 129
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

    .line 131
    :cond_90
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 59
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 60
    const-string p0, "HW_UNAVAILABLE"

    return-object p0

    .line 62
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 63
    const-string p0, "UNABLE_TO_PROCESS"

    return-object p0

    .line 65
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 66
    const-string p0, "TIMEOUT"

    return-object p0

    .line 68
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 69
    const-string p0, "NO_SPACE"

    return-object p0

    .line 71
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 72
    const-string p0, "CANCELED"

    return-object p0

    .line 74
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 75
    const-string p0, "UNABLE_TO_REMOVE"

    return-object p0

    .line 77
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 78
    const-string p0, "LOCKOUT"

    return-object p0

    .line 80
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 81
    const-string p0, "VENDOR"

    return-object p0

    .line 83
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 84
    const-string p0, "LOCKOUT_PERMANENT"

    return-object p0

    .line 86
    :cond_38
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
