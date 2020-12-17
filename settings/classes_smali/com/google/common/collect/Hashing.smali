.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method static closedTableSize(ID)I
    .registers 6

    const/4 v0, 0x2

    .line 59
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    int-to-double v1, v0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    if-le p0, p1, :cond_16

    shl-int/lit8 p0, v0, 0x1

    if-lez p0, :cond_13

    goto :goto_15

    .line 64
    :cond_13
    sget p0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    :goto_15
    return p0

    :cond_16
    return v0
.end method

.method static needsResizing(IID)Z
    .registers 8

    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr p2, v2

    cmpl-double p0, v0, p2

    if-lez p0, :cond_d

    .line 70
    sget p0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    if-ge p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method static smear(I)I
    .registers 2

    const v0, -0x3361d2af  # -8.2930312E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    .line 47
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr p0, v0

    return p0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .registers 1
    .param p0  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 51
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    invoke-static {p0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result p0

    return p0
.end method
