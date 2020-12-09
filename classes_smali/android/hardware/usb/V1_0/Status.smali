.class public final Landroid/hardware/usb/V1_0/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final ERROR:I = 0x1

.field public static final INVALID_ARGUMENT:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNRECOGNIZED_ROLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    nop

    .line 37
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 39
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_17

    .line 38
    :cond_16
    const/4 v2, 0x0

    .line 42
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 43
    const-string v1, "INVALID_ARGUMENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    or-int/lit8 v2, v2, 0x2

    .line 46
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 47
    const-string v1, "UNRECOGNIZED_ROLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    or-int/lit8 v2, v2, 0x3

    .line 50
    :cond_2f
    if-eq p0, v2, :cond_4b

    .line 51
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

    .line 53
    :cond_4b
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 19
    if-nez p0, :cond_5

    .line 20
    const-string p0, "SUCCESS"

    return-object p0

    .line 22
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 23
    const-string p0, "ERROR"

    return-object p0

    .line 25
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 26
    const-string p0, "INVALID_ARGUMENT"

    return-object p0

    .line 28
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 29
    const-string p0, "UNRECOGNIZED_ROLE"

    return-object p0

    .line 31
    :cond_17
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
