.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintMsgType;
.super Ljava/lang/Object;
.source "FingerprintMsgType.java"


# static fields
.field public static final ACQUIRED:I = 0x1

.field public static final AUTHENTICATED:I = 0x5

.field public static final ERROR:I = -0x1

.field public static final TEMPLATE_ENROLLING:I = 0x3

.field public static final TEMPLATE_ENUMERATING:I = 0x6

.field public static final TEMPLATE_REMOVED:I = 0x4


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
    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 37
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_12

    .line 36
    :cond_11
    const/4 v2, 0x0

    .line 40
    :goto_12
    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    .line 41
    const-string v1, "ACQUIRED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v2, v2, 0x1

    .line 44
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2a

    .line 45
    const-string v1, "TEMPLATE_ENROLLING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v2, v2, 0x3

    .line 48
    :cond_2a
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_36

    .line 49
    const-string v1, "TEMPLATE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v2, v2, 0x4

    .line 52
    :cond_36
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_42

    .line 53
    const-string v1, "AUTHENTICATED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v2, v2, 0x5

    .line 56
    :cond_42
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4e

    .line 57
    const-string v1, "TEMPLATE_ENUMERATING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v2, v2, 0x6

    .line 60
    :cond_4e
    if-eq p0, v2, :cond_6a

    .line 61
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

    .line 63
    :cond_6a
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 12
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 13
    const-string p0, "ERROR"

    return-object p0

    .line 15
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    .line 16
    const-string p0, "ACQUIRED"

    return-object p0

    .line 18
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 19
    const-string p0, "TEMPLATE_ENROLLING"

    return-object p0

    .line 21
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 22
    const-string p0, "TEMPLATE_REMOVED"

    return-object p0

    .line 24
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 25
    const-string p0, "AUTHENTICATED"

    return-object p0

    .line 27
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 28
    const-string p0, "TEMPLATE_ENUMERATING"

    return-object p0

    .line 30
    :cond_24
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
