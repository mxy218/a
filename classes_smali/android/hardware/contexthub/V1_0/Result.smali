.class public final Landroid/hardware/contexthub/V1_0/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field public static final BAD_PARAMS:I = 0x2

.field public static final NOT_INIT:I = 0x3

.field public static final OK:I = 0x0

.field public static final TRANSACTION_FAILED:I = 0x4

.field public static final TRANSACTION_PENDING:I = 0x5

.field public static final UNKNOWN_FAILURE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    nop

    .line 36
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 38
    const-string v1, "UNKNOWN_FAILURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_17

    .line 37
    :cond_16
    const/4 v2, 0x0

    .line 41
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 42
    const-string v1, "BAD_PARAMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v2, v2, 0x2

    .line 45
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 46
    const-string v1, "NOT_INIT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v2, v2, 0x3

    .line 49
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 50
    const-string v1, "TRANSACTION_FAILED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v2, v2, 0x4

    .line 53
    :cond_3b
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_47

    .line 54
    const-string v1, "TRANSACTION_PENDING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v2, v2, 0x5

    .line 57
    :cond_47
    if-eq p0, v2, :cond_63

    .line 58
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

    .line 60
    :cond_63
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 12
    if-nez p0, :cond_5

    .line 13
    const-string p0, "OK"

    return-object p0

    .line 15
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 16
    const-string p0, "UNKNOWN_FAILURE"

    return-object p0

    .line 18
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 19
    const-string p0, "BAD_PARAMS"

    return-object p0

    .line 21
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 22
    const-string p0, "NOT_INIT"

    return-object p0

    .line 24
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 25
    const-string p0, "TRANSACTION_FAILED"

    return-object p0

    .line 27
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 28
    const-string p0, "TRANSACTION_PENDING"

    return-object p0

    .line 30
    :cond_23
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
