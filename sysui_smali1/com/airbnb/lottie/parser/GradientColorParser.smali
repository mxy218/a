.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_b

    return-void

    .line 108
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 109
    new-array v2, v1, [D

    .line 110
    new-array v1, v1, [D

    const/4 v3, 0x0

    move v4, v3

    .line 112
    :goto_18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_42

    .line 113
    rem-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_30

    .line 114
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v2, v4

    goto :goto_3f

    .line 116
    :cond_30
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 121
    :cond_42
    :goto_42
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result p2

    if-ge v3, p2, :cond_72

    .line 122
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object p2

    aget p2, p2, v3

    .line 124
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v0

    aget v0, v0, v3

    float-to-double v4, v0

    invoke-direct {p0, v4, v5, v2, v1}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v0

    .line 125
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 126
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 127
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    .line 123
    invoke-static {v0, v4, v5, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 129
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v0

    aput p2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_72
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .registers 24
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x1

    move v3, v2

    .line 135
    :goto_6
    array-length v4, v0

    const-wide v5, 0x406fe00000000000L  # 255.0

    if-ge v3, v4, :cond_2d

    add-int/lit8 v4, v3, -0x1

    .line 136
    aget-wide v7, v0, v4

    .line 137
    aget-wide v9, v0, v3

    .line 138
    aget-wide v11, v0, v3

    cmpl-double v11, v11, p1

    if-ltz v11, :cond_2a

    sub-double v11, p1, v7

    sub-double/2addr v9, v7

    div-double v17, v11, v9

    .line 140
    aget-wide v13, v1, v4

    aget-wide v15, v1, v3

    invoke-static/range {v13 .. v18}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v0

    :goto_27
    mul-double/2addr v0, v5

    double-to-int v0, v0

    return v0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 143
    :cond_2d
    array-length v0, v1

    sub-int/2addr v0, v2

    aget-wide v0, v1, v0

    goto :goto_27
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v3

    :goto_12
    if-eqz v0, :cond_17

    .line 50
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 52
    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 53
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2a
    if-eqz v0, :cond_2f

    .line 56
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 58
    :cond_2f
    iget p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3c

    .line 59
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 62
    :cond_3c
    iget p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v0, p1, [F

    .line 63
    new-array p1, p1, [I

    move v1, v3

    move v4, v1

    .line 67
    :goto_44
    iget v5, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v5, v5, 0x4

    if-ge v3, v5, :cond_80

    .line 68
    div-int/lit8 v5, v3, 0x4

    .line 69
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    .line 70
    rem-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_7a

    const-wide v9, 0x406fe00000000000L  # 255.0

    if-eq v8, v2, :cond_77

    const/4 v11, 0x2

    if-eq v8, v11, :cond_74

    const/4 v11, 0x3

    if-eq v8, v11, :cond_69

    goto :goto_7d

    :cond_69
    mul-double/2addr v6, v9

    double-to-int v6, v6

    const/16 v7, 0xff

    .line 83
    invoke-static {v7, v1, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, p1, v5

    goto :goto_7d

    :cond_74
    mul-double/2addr v6, v9

    double-to-int v4, v6

    goto :goto_7d

    :cond_77
    mul-double/2addr v6, v9

    double-to-int v1, v6

    goto :goto_7d

    :cond_7a
    double-to-float v6, v6

    .line 73
    aput v6, v0, v5

    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 88
    :cond_80
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v1, v0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 89
    invoke-direct {p0, v1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p0

    return-object p0
.end method
