.class public Lcom/android/systemui/stackdivider/MinimizedDockShadow;
.super Landroid/view/View;
.source "MinimizedDockShadow.java"


# instance fields
.field private mDockSide:I

.field private final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    return-void
.end method

.method private updatePaint(IIII)V
    .registers 24

    move-object/from16 v0, p0

    .line 54
    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->minimize_dock_shadow_start:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 56
    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$color;->minimize_dock_shadow_end:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 59
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    const/4 v5, 0x0

    .line 58
    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3e800000  # 0.25f

    mul-float/2addr v6, v7

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f400000  # 0.75f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 60
    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 63
    iget v7, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x4

    if-ne v7, v4, :cond_70

    .line 64
    iget-object v0, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v11, p4, p2

    int-to-float v15, v11

    new-array v11, v10, [I

    aput v1, v11, v5

    aput v3, v11, v9

    aput v6, v11, v4

    aput v2, v11, v8

    new-array v1, v10, [F

    fill-array-data v1, :array_c4

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v11

    move-object v11, v7

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_c3

    :cond_70
    if-ne v7, v9, :cond_9a

    .line 69
    iget-object v0, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sub-int v11, p3, p1

    int-to-float v14, v11

    const/4 v15, 0x0

    new-array v11, v10, [I

    aput v1, v11, v5

    aput v3, v11, v9

    aput v6, v11, v4

    aput v2, v11, v8

    new-array v1, v10, [F

    fill-array-data v1, :array_d0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v11

    move-object v11, v7

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_c3

    :cond_9a
    if-ne v7, v8, :cond_c3

    .line 74
    iget-object v0, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/LinearGradient;

    sub-int v11, p3, p1

    int-to-float v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v11, v10, [I

    aput v1, v11, v5

    aput v3, v11, v9

    aput v6, v11, v4

    aput v2, v11, v8

    new-array v1, v10, [F

    fill-array-data v1, :array_dc

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v11

    move-object v11, v7

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_c3
    :goto_c3
    return-void

    :array_c4
    .array-data 4
        0x0
        0x3eb33333  # 0.35f
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data

    :array_d0
    .array-data 4
        0x0
        0x3eb33333  # 0.35f
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data

    :array_dc
    .array-data 4
        0x0
        0x3eb33333  # 0.35f
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 83
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_b

    .line 85
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public setDockSide(I)V
    .registers 5

    .line 46
    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    if-eq p1, v0, :cond_1c

    .line 47
    iput p1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1c
    return-void
.end method
