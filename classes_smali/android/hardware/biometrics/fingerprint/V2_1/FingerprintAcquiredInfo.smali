.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquiredInfo;
.super Ljava/lang/Object;
.source "FingerprintAcquiredInfo.java"


# static fields
.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final ACQUIRED_PARTIAL:I = 0x1

.field public static final ACQUIRED_TOO_FAST:I = 0x5

.field public static final ACQUIRED_TOO_SLOW:I = 0x4

.field public static final ACQUIRED_VENDOR:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    nop

    .line 58
    const-string v1, "ACQUIRED_GOOD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 60
    const-string v1, "ACQUIRED_PARTIAL"

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
    const-string v1, "ACQUIRED_INSUFFICIENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v2, v2, 0x2

    .line 67
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 68
    const-string v1, "ACQUIRED_IMAGER_DIRTY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v2, v2, 0x3

    .line 71
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 72
    const-string v1, "ACQUIRED_TOO_SLOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v2, v2, 0x4

    .line 75
    :cond_3b
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_47

    .line 76
    const-string v1, "ACQUIRED_TOO_FAST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/lit8 v2, v2, 0x5

    .line 79
    :cond_47
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_53

    .line 80
    const-string v1, "ACQUIRED_VENDOR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    or-int/lit8 v2, v2, 0x6

    .line 83
    :cond_53
    if-eq p0, v2, :cond_6f

    .line 84
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

    .line 86
    :cond_6f
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 31
    if-nez p0, :cond_5

    .line 32
    const-string p0, "ACQUIRED_GOOD"

    return-object p0

    .line 34
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 35
    const-string p0, "ACQUIRED_PARTIAL"

    return-object p0

    .line 37
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 38
    const-string p0, "ACQUIRED_INSUFFICIENT"

    return-object p0

    .line 40
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 41
    const-string p0, "ACQUIRED_IMAGER_DIRTY"

    return-object p0

    .line 43
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 44
    const-string p0, "ACQUIRED_TOO_SLOW"

    return-object p0

    .line 46
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 47
    const-string p0, "ACQUIRED_TOO_FAST"

    return-object p0

    .line 49
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 50
    const-string p0, "ACQUIRED_VENDOR"

    return-object p0

    .line 52
    :cond_29
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
