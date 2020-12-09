.class public final Landroid/hardware/biometrics/face/V1_0/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static final REQUIRE_ATTENTION:I = 0x1

.field public static final REQUIRE_DIVERSITY:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    nop

    .line 29
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 30
    const-string v1, "REQUIRE_ATTENTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_12

    .line 29
    :cond_11
    const/4 v2, 0x0

    .line 33
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 34
    const-string v1, "REQUIRE_DIVERSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    or-int/lit8 v2, v2, 0x2

    .line 37
    :cond_1e
    if-eq p0, v2, :cond_3a

    .line 38
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

    .line 40
    :cond_3a
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 17
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 18
    const-string p0, "REQUIRE_ATTENTION"

    return-object p0

    .line 20
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 21
    const-string p0, "REQUIRE_DIVERSITY"

    return-object p0

    .line 23
    :cond_c
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
