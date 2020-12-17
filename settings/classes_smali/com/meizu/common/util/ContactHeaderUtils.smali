.class public Lcom/meizu/common/util/ContactHeaderUtils;
.super Ljava/lang/Object;
.source "ContactHeaderUtils.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final colorArray:[I

.field private static sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_e

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    return-void

    nop

    :array_e
    .array-data 4
        -0x242c5
        -0x6a3d0
        -0x11d6cf
        -0x9fac16
        -0xda7016
        -0xde3f32
        -0xbd4092
    .end array-data
.end method

.method private static checkText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    goto :goto_2b

    .line 292
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2b

    :cond_14
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_2a

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2a

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_2a
    move-object v1, p0

    :goto_2b
    return-object v1
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;IILjava/lang/Object;Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    aput-object p4, v5, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p5

    .line 56
    invoke-static/range {v1 .. v6}, Lcom/meizu/common/util/ContactHeaderUtils;->createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .registers 36

    move-object/from16 v0, p3

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 73
    array-length v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    const/4 v3, 0x3

    if-le v2, v3, :cond_c

    move v2, v3

    .line 75
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move/from16 v5, p1

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    move/from16 v6, p2

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    float-to-int v4, v4

    add-int/2addr v4, v1

    if-ne v2, v1, :cond_21

    const/4 v4, 0x0

    .line 83
    :cond_21
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 84
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 85
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 86
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 87
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 88
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 89
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    move/from16 v8, p5

    if-eq v8, v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v8, v3

    .line 101
    :goto_4b
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 103
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    :try_start_56
    sget-object v19, Lcom/meizu/common/util/ContactHeaderUtils;->sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;

    if-nez v19, :cond_73

    .line 107
    const-class v1, Landroid/graphics/Canvas;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_88

    move-object/from16 v19, v3

    :try_start_5e
    const-string/jumbo v3, "setNightModeUseOf"
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_8a

    move-object/from16 v20, v9

    const/4 v0, 0x1

    :try_start_64
    new-array v9, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v0, v9, v17

    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;

    goto :goto_77

    :cond_73
    move-object/from16 v19, v3

    move-object/from16 v20, v9

    .line 109
    :goto_77
    sget-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_81} :catch_8c

    const/4 v1, 0x0

    :try_start_82
    aput-object v9, v3, v1

    invoke-virtual {v0, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_8d

    goto :goto_8d

    :catch_88
    move-object/from16 v19, v3

    :catch_8a
    move-object/from16 v20, v9

    :catch_8c
    const/4 v1, 0x0

    .line 114
    :catch_8d
    :goto_8d
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 115
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0xab51aa

    .line 116
    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v9, -0x1

    .line 121
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v8, v4

    .line 127
    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v9, 0x19000000

    .line 132
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v9, 0x3f800000  # 1.0f

    .line 133
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v2, v1, :cond_e0

    mul-int/lit8 v1, v5, 0x21

    .line 142
    div-int/lit8 v1, v1, 0x2e

    int-to-float v1, v1

    mul-int/lit8 v21, v6, 0x21

    div-int/lit8 v3, v21, 0x2e

    int-to-float v3, v3

    invoke-virtual {v10, v0, v0, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_e0
    const/4 v1, 0x2

    if-ne v2, v1, :cond_f1

    mul-int/lit8 v1, v5, 0x26

    .line 144
    div-int/lit8 v1, v1, 0x2e

    int-to-float v1, v1

    mul-int/lit8 v3, v6, 0x26

    div-int/lit8 v3, v3, 0x2e

    int-to-float v3, v3

    invoke-virtual {v10, v0, v0, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_101

    :cond_f1
    add-int/lit8 v1, v2, 0x1

    mul-int v3, v5, v1

    mul-int/lit8 v21, v2, 0x2

    .line 146
    div-int v3, v3, v21

    int-to-float v3, v3

    mul-int/2addr v1, v6

    div-int v1, v1, v21

    int-to-float v1, v1

    invoke-virtual {v10, v0, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    :goto_101
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v8

    sub-float/2addr v1, v9

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v21

    sub-float v21, v21, v8

    sub-float v21, v21, v9

    div-float v9, v21, v3

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move-object/from16 v9, v20

    .line 149
    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 150
    invoke-virtual {v9, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 151
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v3

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v10, 0x3

    if-ne v2, v10, :cond_138

    mul-int/lit8 v10, v5, 0xd

    .line 154
    div-int/lit8 v10, v10, 0x5c

    add-int/2addr v10, v4

    int-to-float v10, v10

    goto :goto_139

    :cond_138
    move v10, v0

    :goto_139
    const/4 v0, 0x2

    if-ne v2, v0, :cond_145

    mul-int/lit8 v0, v5, 0x8

    .line 155
    div-int/lit8 v0, v0, 0x5c

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v0, v10

    int-to-float v0, v0

    goto :goto_146

    :cond_145
    move v0, v10

    :goto_146
    const/4 v10, 0x1

    if-ne v2, v10, :cond_14a

    const/4 v0, 0x0

    :cond_14a
    sub-int/2addr v2, v10

    const/16 v16, 0x0

    const-string v18, ""

    move v10, v2

    move-object/from16 v21, v16

    move-object/from16 v23, v21

    move-object/from16 v24, v23

    const v22, -0xab51aa

    :goto_159
    if-ltz v10, :cond_400

    if-eqz p3, :cond_186

    .line 160
    aget-object v25, p3, v10

    if-eqz v25, :cond_186

    aget-object v3, p3, v10

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_168

    goto :goto_186

    .line 174
    :cond_168
    aget-object v3, p3, v10

    instance-of v3, v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_177

    .line 175
    aget-object v3, p3, v10

    check-cast v3, Landroid/graphics/Bitmap;

    :goto_172
    move/from16 p2, v2

    move-object/from16 p5, v18

    goto :goto_1af

    .line 176
    :cond_177
    aget-object v3, p3, v10

    instance-of v3, v3, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1a9

    .line 177
    aget-object v3, p3, v10

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_172

    :cond_186
    :goto_186
    if-eqz p3, :cond_19c

    .line 161
    aget-object v3, p3, v10

    if-eqz v3, :cond_19c

    .line 162
    aget-object v3, p3, v10

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/common/util/ContactHeaderUtils;->checkText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 163
    aget-object v3, p3, v10

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v22

    :cond_19c
    if-eqz p3, :cond_1b4

    .line 165
    aget-object v3, p3, v10

    if-eqz v3, :cond_1b4

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a9

    goto :goto_1b4

    :cond_1a9
    move/from16 p2, v2

    move-object/from16 p5, v18

    move-object/from16 v3, v21

    :goto_1af
    const/16 v18, 0x0

    move-object/from16 v2, p0

    goto :goto_1c6

    .line 167
    :cond_1b4
    :goto_1b4
    :try_start_1b4
    sget v3, Lcom/meizu/common/R$drawable;->mc_contact_list_picture:I

    move/from16 p2, v2

    move-object/from16 v2, p0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c2} :catch_3ff

    move-object/from16 p5, v18

    const/16 v18, 0x1

    :goto_1c6
    if-eqz p4, :cond_1d7

    .line 179
    aget-object v21, p4, v10

    if-eqz v21, :cond_1d7

    .line 180
    aget-object v21, p4, v10

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_1d9

    :cond_1d7
    move/from16 v2, v22

    :goto_1d9
    if-eqz v3, :cond_221

    move-object/from16 v21, v13

    .line 184
    new-instance v13, Landroid/graphics/BitmapShader;

    move/from16 v22, v1

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v13, v3, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 186
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v23

    mul-float v1, v1, v23

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v23

    move-object/from16 v25, v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v23, v23, v12

    cmpl-float v1, v1, v23

    if-lez v1, :cond_20b

    .line 187
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    goto :goto_213

    .line 189
    :cond_20b
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    :goto_213
    int-to-float v12, v12

    div-float/2addr v1, v12

    .line 191
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 192
    invoke-virtual {v12, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 193
    invoke-virtual {v13, v12}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_22b

    :cond_221
    move/from16 v22, v1

    move-object/from16 v25, v12

    move-object/from16 v21, v13

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    :goto_22b
    if-nez v10, :cond_2e6

    .line 196
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26a

    .line 198
    div-int/lit8 v1, v5, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    move/from16 v23, v2

    div-int/lit8 v2, v6, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2, v8, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v26, v10

    move-object/from16 v24, v11

    float-to-double v10, v8

    const-wide v27, 0x3feccccccccccccdL  # 0.9

    mul-double v10, v10, v27

    double-to-float v10, v10

    .line 199
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    invoke-virtual {v15}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 201
    iget v11, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v10, v11, v10

    const/high16 v27, 0x40000000  # 2.0f

    div-float v10, v10, v27

    sub-float/2addr v10, v11

    add-float/2addr v2, v10

    sub-float v2, v2, v27

    move-object/from16 v10, p5

    .line 204
    invoke-virtual {v7, v10, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2a9

    :cond_26a
    move/from16 v23, v2

    move/from16 v26, v10

    move-object/from16 v24, v11

    const/high16 v27, 0x40000000  # 2.0f

    move-object/from16 v10, p5

    if-eqz v3, :cond_2a9

    int-to-float v1, v5

    .line 206
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    div-float v1, v1, v27

    sub-float/2addr v1, v0

    int-to-float v2, v6

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float/2addr v2, v11

    div-float v2, v2, v27

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    invoke-virtual {v13, v12}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v1, v24

    .line 208
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v18, :cond_29e

    .line 210
    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v2, v11, v8, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 212
    :cond_29e
    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v2, v11, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2ab

    :cond_2a9
    :goto_2a9
    move-object/from16 v1, v24

    :goto_2ab
    if-eqz v4, :cond_2c2

    .line 216
    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    move-object/from16 v24, v10

    move-object/from16 v10, v25

    move/from16 v29, v22

    move-object/from16 v22, v15

    move/from16 v15, v29

    invoke-virtual {v7, v2, v11, v15, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2cc

    :cond_2c2
    move-object/from16 v24, v10

    move-object/from16 v10, v25

    move/from16 v29, v22

    move-object/from16 v22, v15

    move/from16 v15, v29

    .line 218
    :goto_2cc
    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    move-object/from16 v25, v10

    move-object/from16 v10, v21

    invoke-virtual {v7, v2, v11, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 p5, v3

    move/from16 v21, v4

    move/from16 v2, v23

    move-object/from16 v4, v25

    :goto_2e2
    const/high16 v18, 0x40000000  # 2.0f

    goto/16 :goto_3e1

    :cond_2e6
    move-object/from16 v24, p5

    move/from16 v23, v2

    move-object v1, v11

    move/from16 v2, p2

    move v11, v10

    move-object/from16 v10, v21

    move/from16 v29, v22

    move-object/from16 v22, v15

    move/from16 v15, v29

    if-ne v11, v2, :cond_379

    if-eqz v3, :cond_343

    if-eqz v18, :cond_312

    move/from16 p2, v2

    move/from16 v2, v23

    .line 222
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v26, v11

    .line 223
    div-int/lit8 v11, v5, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v0

    move-object/from16 p5, v3

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    invoke-virtual {v7, v11, v3, v8, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_358

    :cond_312
    move/from16 p2, v2

    move-object/from16 p5, v3

    move/from16 v26, v11

    move/from16 v2, v23

    int-to-float v3, v5

    .line 225
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v3, v11

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v3, v11

    add-float/2addr v3, v0

    int-to-float v11, v6

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v18

    sub-float v11, v11, v18

    const/high16 v18, 0x40000000  # 2.0f

    div-float v11, v11, v18

    invoke-virtual {v12, v3, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    invoke-virtual {v13, v12}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 227
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 228
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_358

    :cond_343
    move/from16 p2, v2

    move-object/from16 p5, v3

    move/from16 v26, v11

    move/from16 v2, v23

    .line 231
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v8, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_358
    if-eqz v4, :cond_369

    .line 235
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    move/from16 v21, v4

    move-object/from16 v4, v25

    invoke-virtual {v7, v3, v11, v15, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_36d

    :cond_369
    move/from16 v21, v4

    move-object/from16 v4, v25

    .line 237
    :goto_36d
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2e2

    :cond_379
    move/from16 p2, v2

    move-object/from16 p5, v3

    move/from16 v21, v4

    move/from16 v26, v11

    move/from16 v2, v23

    move-object/from16 v4, v25

    if-eqz p5, :cond_3bf

    if-eqz v18, :cond_398

    .line 241
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v8, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v18, 0x40000000  # 2.0f

    goto :goto_3cd

    :cond_398
    int-to-float v3, v5

    .line 244
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v3, v11

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v3, v11

    int-to-float v11, v6

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v18

    sub-float v11, v11, v18

    const/high16 v18, 0x40000000  # 2.0f

    div-float v11, v11, v18

    invoke-virtual {v12, v3, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    invoke-virtual {v13, v12}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 246
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 247
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3cd

    :cond_3bf
    const/high16 v18, 0x40000000  # 2.0f

    .line 250
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v8, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3cd
    if-eqz v21, :cond_3d8

    .line 254
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v15, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    :cond_3d8
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    invoke-virtual {v7, v3, v11, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3e1
    add-int/lit8 v3, v26, -0x1

    move-object v11, v1

    move-object/from16 v23, v12

    move v1, v15

    move-object/from16 v15, v22

    move/from16 v22, v2

    move-object v12, v4

    move/from16 v4, v21

    move/from16 v2, p2

    move-object/from16 v21, p5

    move-object/from16 v29, v10

    move v10, v3

    move/from16 v3, v18

    move-object/from16 v18, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v29

    goto/16 :goto_159

    :catch_3ff
    return-object v16

    :cond_400
    return-object v19
.end method

.method private static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 313
    :cond_4
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_f

    .line 314
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 320
    :cond_f
    :try_start_f
    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1b

    .line 321
    sget-object p0, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_29

    .line 323
    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    sget-object v2, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_29} :catch_2a

    :goto_29
    return-object p0

    :catch_2a
    const-string p0, "ContactHeaderUtils "

    const-string v1, "getBitmapFromDrawable  OutOfMemoryError !"

    .line 328
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getColorByText(Ljava/lang/String;)I
    .registers 3

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v0, v0

    rem-int/2addr p0, v0

    goto :goto_14

    :cond_13
    const/4 p0, 0x5

    .line 275
    :goto_14
    sget-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v1, v0

    if-ge p0, v1, :cond_1c

    .line 276
    aget p0, v0, p0

    goto :goto_1f

    :cond_1c
    const p0, -0xab51aa

    :goto_1f
    return p0
.end method
