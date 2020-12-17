.class public Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;
.super Landroid/widget/ImageView;
.source "GradientImageView.java"


# instance fields
.field private mColors:[I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mPaint:Landroid/graphics/Paint;

    .line 22
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mColors:[I

    const/high16 p1, 0x3f800000  # 1.0f

    .line 23
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mPaint:Landroid/graphics/Paint;

    .line 22
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mColors:[I

    const/high16 p1, 0x3f800000  # 1.0f

    .line 23
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mScale:F

    .line 32
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mPaint:Landroid/graphics/Paint;

    .line 22
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mColors:[I

    const/high16 p1, 0x3f800000  # 1.0f

    .line 23
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mScale:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mColors:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 45
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 46
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColors([I)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->mColors:[I

    return-void
.end method
