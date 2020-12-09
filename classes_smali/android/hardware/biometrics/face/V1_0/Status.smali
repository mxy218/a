.class public final Landroid/hardware/biometrics/face/V1_0/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final ILLEGAL_ARGUMENT:I = 0x1

.field public static final INTERNAL_ERROR:I = 0x3

.field public static final NOT_ENROLLED:I = 0x4

.field public static final OK:I = 0x0

.field public static final OPERATION_NOT_SUPPORTED:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    nop

    .line 48
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 50
    const-string v1, "ILLEGAL_ARGUMENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_17

    .line 49
    :cond_16
    const/4 v2, 0x0

    .line 53
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 54
    const-string v1, "OPERATION_NOT_SUPPORTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v2, v2, 0x2

    .line 57
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 58
    const-string v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v2, v2, 0x3

    .line 61
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 62
    const-string v1, "NOT_ENROLLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v2, v2, 0x4

    .line 65
    :cond_3b
    if-eq p0, v2, :cond_57

    .line 66
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

    .line 68
    :cond_57
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 27
    if-nez p0, :cond_5

    .line 28
    const-string p0, "OK"

    return-object p0

    .line 30
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 31
    const-string p0, "ILLEGAL_ARGUMENT"

    return-object p0

    .line 33
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 34
    const-string p0, "OPERATION_NOT_SUPPORTED"

    return-object p0

    .line 36
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 37
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    .line 39
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 40
    const-string p0, "NOT_ENROLLED"

    return-object p0

    .line 42
    :cond_1d
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
