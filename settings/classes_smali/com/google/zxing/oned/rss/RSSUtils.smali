.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private static combins(II)I
    .registers 6

    sub-int v0, p0, p1

    if-le v0, p1, :cond_7

    move v3, v0

    move v0, p1

    move p1, v3

    :cond_7
    const/4 v1, 0x1

    move v2, v1

    :goto_9
    if-le p0, p1, :cond_14

    mul-int/2addr v1, p0

    if-gt v2, v0, :cond_11

    .line 118
    div-int/2addr v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_11
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_14
    :goto_14
    if-gt v2, v0, :cond_1a

    .line 123
    div-int/2addr v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1a
    return v1
.end method

.method public static getRSSvalue([IIZ)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 67
    array-length v2, v0

    .line 69
    array-length v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v5, v3, :cond_10

    aget v7, v0, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    move v7, v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_14
    add-int/lit8 v8, v2, -0x1

    if-ge v3, v8, :cond_75

    const/4 v9, 0x1

    shl-int v10, v9, v3

    or-int/2addr v6, v10

    move v11, v6

    move v6, v5

    move v5, v9

    .line 77
    :goto_1f
    aget v12, v0, v3

    if-ge v5, v12, :cond_6d

    sub-int v12, v7, v5

    add-int/lit8 v13, v12, -0x1

    sub-int v14, v2, v3

    add-int/lit8 v15, v14, -0x2

    .line 79
    invoke-static {v13, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v13

    if-eqz p2, :cond_40

    if-nez v11, :cond_40

    add-int/lit8 v4, v14, -0x1

    sub-int v9, v12, v4

    if-lt v9, v4, :cond_40

    sub-int v4, v12, v14

    .line 82
    invoke-static {v4, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v4

    sub-int/2addr v13, v4

    :cond_40
    add-int/lit8 v4, v14, -0x1

    const/4 v9, 0x1

    if-le v4, v9, :cond_60

    sub-int v4, v12, v15

    const/4 v15, 0x0

    :goto_48
    if-le v4, v1, :cond_5b

    sub-int v16, v12, v4

    add-int/lit8 v0, v16, -0x1

    add-int/lit8 v9, v14, -0x3

    .line 89
    invoke-static {v0, v9}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v0

    add-int/2addr v15, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    goto :goto_48

    :cond_5b
    sub-int v0, v8, v3

    mul-int/2addr v15, v0

    sub-int/2addr v13, v15

    goto :goto_64

    :cond_60
    if-le v12, v1, :cond_64

    add-int/lit8 v13, v13, -0x1

    :cond_64
    :goto_64
    add-int/2addr v6, v13

    add-int/lit8 v5, v5, 0x1

    not-int v0, v10

    and-int/2addr v11, v0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    goto :goto_1f

    :cond_6d
    sub-int/2addr v7, v5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move v5, v6

    move v6, v11

    goto :goto_14

    :cond_75
    return v5
.end method
