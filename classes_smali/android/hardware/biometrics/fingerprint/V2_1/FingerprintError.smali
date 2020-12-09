.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintError;
.super Ljava/lang/Object;
.source "FingerprintError.java"


# static fields
.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_LOCKOUT:I = 0x7

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final ERROR_VENDOR:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    nop

    .line 75
    const-string v1, "ERROR_NO_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 77
    const-string v1, "ERROR_HW_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_17

    .line 76
    :cond_16
    const/4 v2, 0x0

    .line 80
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 81
    const-string v1, "ERROR_UNABLE_TO_PROCESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v2, v2, 0x2

    .line 84
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 85
    const-string v1, "ERROR_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v2, v2, 0x3

    .line 88
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 89
    const-string v1, "ERROR_NO_SPACE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v2, v2, 0x4

    .line 92
    :cond_3b
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_47

    .line 93
    const-string v1, "ERROR_CANCELED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v2, v2, 0x5

    .line 96
    :cond_47
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_53

    .line 97
    const-string v1, "ERROR_UNABLE_TO_REMOVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v2, v2, 0x6

    .line 100
    :cond_53
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5f

    .line 101
    const-string v1, "ERROR_LOCKOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v2, v2, 0x7

    .line 104
    :cond_5f
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6c

    .line 105
    const-string v1, "ERROR_VENDOR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v2, v2, 0x8

    .line 108
    :cond_6c
    if-eq p0, v2, :cond_88

    .line 109
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

    .line 111
    :cond_88
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 42
    if-nez p0, :cond_5

    .line 43
    const-string p0, "ERROR_NO_ERROR"

    return-object p0

    .line 45
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 46
    const-string p0, "ERROR_HW_UNAVAILABLE"

    return-object p0

    .line 48
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 49
    const-string p0, "ERROR_UNABLE_TO_PROCESS"

    return-object p0

    .line 51
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 52
    const-string p0, "ERROR_TIMEOUT"

    return-object p0

    .line 54
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 55
    const-string p0, "ERROR_NO_SPACE"

    return-object p0

    .line 57
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 58
    const-string p0, "ERROR_CANCELED"

    return-object p0

    .line 60
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 61
    const-string p0, "ERROR_UNABLE_TO_REMOVE"

    return-object p0

    .line 63
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 64
    const-string p0, "ERROR_LOCKOUT"

    return-object p0

    .line 66
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 67
    const-string p0, "ERROR_VENDOR"

    return-object p0

    .line 69
    :cond_36
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
