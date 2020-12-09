.class public final Landroid/hardware/usb/V1_0/PortDataRole;
.super Ljava/lang/Object;
.source "PortDataRole.java"


# static fields
.field public static final DEVICE:I = 0x2

.field public static final HOST:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NUM_DATA_ROLES:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    nop

    .line 39
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 41
    const-string v1, "HOST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_17

    .line 40
    :cond_16
    const/4 v2, 0x0

    .line 44
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 45
    const-string v1, "DEVICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v2, v2, 0x2

    .line 48
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 49
    const-string v1, "NUM_DATA_ROLES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v2, v2, 0x3

    .line 52
    :cond_2f
    if-eq p0, v2, :cond_4b

    .line 53
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

    .line 55
    :cond_4b
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 21
    if-nez p0, :cond_5

    .line 22
    const-string p0, "NONE"

    return-object p0

    .line 24
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 25
    const-string p0, "HOST"

    return-object p0

    .line 27
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 28
    const-string p0, "DEVICE"

    return-object p0

    .line 30
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 31
    const-string p0, "NUM_DATA_ROLES"

    return-object p0

    .line 33
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
