.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 639
    sput-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    .line 642
    sget-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1c

    .line 644
    sget-object v2, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    :goto_1c
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_30

    .line 647
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x61

    .line 648
    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_30
    return-void
.end method

.method private static digit(C)I
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    .line 653
    sget-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    aget-byte p0, v0, p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public static indexOf([II)I
    .registers 4

    .line 158
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result p0

    return p0
.end method

.method private static indexOf([IIII)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_a

    .line 165
    aget v0, p0, p2

    if-ne v0, p1, :cond_7

    return p2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method public static saturatedCast(J)I
    .registers 4

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    const p0, 0x7fffffff

    return p0

    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    const/high16 p0, -0x80000000

    return p0

    :cond_15
    long-to-int p0, p0

    return p0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/16 v0, 0xa

    .line 679
    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 706
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    const/4 v0, 0x2

    if-lt p1, v0, :cond_6c

    const/16 v0, 0x24

    if-gt p1, v0, :cond_6c

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1f

    const/4 v0, 0x1

    .line 715
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_26

    return-object v1

    :cond_26
    add-int/lit8 v2, v0, 0x1

    .line 718
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v3

    if-ltz v3, :cond_6b

    if-lt v3, p1, :cond_35

    goto :goto_6b

    :cond_35
    neg-int v3, v3

    const/high16 v4, -0x80000000

    .line 724
    div-int v5, v4, p1

    .line 726
    :goto_3a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_5b

    add-int/lit8 v6, v2, 0x1

    .line 727
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v2

    if-ltz v2, :cond_5a

    if-ge v2, p1, :cond_5a

    if-ge v3, v5, :cond_51

    goto :goto_5a

    :cond_51
    mul-int/2addr v3, p1

    add-int v7, v2, v4

    if-ge v3, v7, :cond_57

    return-object v1

    :cond_57
    sub-int/2addr v3, v2

    move v2, v6

    goto :goto_3a

    :cond_5a
    :goto_5a
    return-object v1

    :cond_5b
    if-eqz v0, :cond_62

    .line 739
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_62
    if-ne v3, v4, :cond_65

    return-object v1

    :cond_65
    neg-int p0, v3

    .line 743
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6b
    :goto_6b
    return-object v1

    .line 710
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
