.class public final Landroid/hardware/contexthub/V1_0/HubMemoryFlag;
.super Ljava/lang/Object;
.source "HubMemoryFlag.java"


# static fields
.field public static final EXEC:I = 0x4

.field public static final READ:I = 0x1

.field public static final WRITE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    nop

    .line 24
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 25
    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_12

    .line 24
    :cond_11
    const/4 v2, 0x0

    .line 28
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 29
    const-string v1, "WRITE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    or-int/lit8 v2, v2, 0x2

    .line 32
    :cond_1e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2a

    .line 33
    const-string v1, "EXEC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit8 v2, v2, 0x4

    .line 36
    :cond_2a
    if-eq p0, v2, :cond_46

    .line 37
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

    .line 39
    :cond_46
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 9
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 10
    const-string p0, "READ"

    return-object p0

    .line 12
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 13
    const-string p0, "WRITE"

    return-object p0

    .line 15
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 16
    const-string p0, "EXEC"

    return-object p0

    .line 18
    :cond_12
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
