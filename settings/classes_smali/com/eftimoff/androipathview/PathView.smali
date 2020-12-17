.class public Lcom/eftimoff/androipathview/PathView;
.super Landroid/view/View;
.source "PathView.java"

# interfaces
.implements Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;,
        Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    }
.end annotation


# instance fields
.field private animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

.field private animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

.field private fill:Z

.field private fillAfter:Z

.field private fillColor:I

.field private height:I

.field private mLoader:Ljava/lang/Thread;

.field private final mSvgLock:Ljava/lang/Object;

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mTempCanvas:Landroid/graphics/Canvas;

.field private naturalColors:Z

.field private paint:Landroid/graphics/Paint;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eftimoff/androipathview/SvgUtils$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F

.field private svgResourceId:I

.field private final svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/eftimoff/androipathview/PathView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2, v0}, Lcom/eftimoff/androipathview/PathView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    .line 50
    new-instance p3, Lcom/eftimoff/androipathview/SvgUtils;

    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Lcom/eftimoff/androipathview/SvgUtils;-><init>(Landroid/graphics/Paint;)V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

    .line 54
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    .line 59
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 80
    iput p3, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    .line 145
    iget-object p3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/eftimoff/androipathview/PathView;->getFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eftimoff/androipathview/PathView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    return p0
.end method

.method static synthetic access$100(Lcom/eftimoff/androipathview/PathView;)Lcom/eftimoff/androipathview/SvgUtils;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eftimoff/androipathview/PathView;)Ljava/lang/Object;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eftimoff/androipathview/PathView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->width:I

    return p0
.end method

.method static synthetic access$302(Lcom/eftimoff/androipathview/PathView;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->width:I

    return p1
.end method

.method static synthetic access$400(Lcom/eftimoff/androipathview/PathView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->height:I

    return p0
.end method

.method static synthetic access$402(Lcom/eftimoff/androipathview/PathView;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->height:I

    return p1
.end method

.method static synthetic access$500(Lcom/eftimoff/androipathview/PathView;)Ljava/util/List;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/eftimoff/androipathview/PathView;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/eftimoff/androipathview/PathView;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    return-void
.end method

.method private applySolidColor(Landroid/graphics/Bitmap;)V
    .registers 9

    .line 292
    iget-boolean v0, p0, Lcom/eftimoff/androipathview/PathView;->fill:Z

    if-eqz v0, :cond_46

    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->fillColor:I

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    if-eq v0, v2, :cond_46

    if-eqz p1, :cond_46

    move v0, v1

    .line 294
    :goto_10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_46

    move v2, v1

    .line 296
    :goto_17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 298
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 299
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_40

    .line 302
    iget v4, p0, Lcom/eftimoff/androipathview/PathView;->fillColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 303
    iget v5, p0, Lcom/eftimoff/androipathview/PathView;->fillColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 304
    iget v6, p0, Lcom/eftimoff/androipathview/PathView;->fillColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 305
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 306
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_46
    return-void
.end method

.method private fill(Landroid/graphics/Canvas;)V
    .registers 4

    .line 281
    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/eftimoff/androipathview/PathView;->fill:Z

    if-eqz v0, :cond_11

    .line 282
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView;->width:I

    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->height:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/eftimoff/androipathview/SvgUtils;->drawSvgAfter(Landroid/graphics/Canvas;II)V

    :cond_11
    return-void
.end method

.method private fillAfter(Landroid/graphics/Canvas;)V
    .registers 6

    .line 270
    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/eftimoff/androipathview/PathView;->fillAfter:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3e45798ee2308c3aL  # 1.0E-8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_24

    .line 271
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView;->width:I

    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->height:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/eftimoff/androipathview/SvgUtils;->drawSvgAfter(Landroid/graphics/Canvas;II)V

    :cond_24
    return-void
.end method

.method private getFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 156
    sget-object v0, Lcom/eftimoff/mylibrary/R$styleable;->PathView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 159
    :try_start_8
    iget-object p2, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    sget v0, Lcom/eftimoff/mylibrary/R$styleable;->PathView_pathColor:I

    const v1, -0xff0100

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object p2, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    sget v0, Lcom/eftimoff/mylibrary/R$styleable;->PathView_pathWidth:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    sget p2, Lcom/eftimoff/mylibrary/R$styleable;->PathView_svg:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    .line 162
    sget p2, Lcom/eftimoff/mylibrary/R$styleable;->PathView_naturalColors:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/eftimoff/androipathview/PathView;->naturalColors:Z

    .line 163
    sget p2, Lcom/eftimoff/mylibrary/R$styleable;->PathView_fill:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/eftimoff/androipathview/PathView;->fill:Z

    .line 164
    sget p2, Lcom/eftimoff/mylibrary/R$styleable;->PathView_fillColor:I

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/eftimoff/androipathview/PathView;->fillColor:I
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_4a

    goto :goto_54

    :catchall_4a
    move-exception p2

    if-eqz p1, :cond_50

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    :cond_50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    throw p2

    :cond_54
    :goto_54
    if-eqz p1, :cond_59

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updatePathsPhaseLocked()V
    .registers 9

    .line 222
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2c

    .line 224
    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    .line 225
    iget-object v3, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 226
    iget-object v3, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->measure:Landroid/graphics/PathMeasure;

    iget v4, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->length:F

    iget v5, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    mul-float/2addr v4, v5

    iget-object v5, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 228
    iget-object v2, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .registers 1

    .line 456
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    if-nez v0, :cond_b

    .line 420
    new-instance v0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    invoke-direct {v0, p0}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;-><init>(Lcom/eftimoff/androipathview/PathView;)V

    iput-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    .line 422
    :cond_b
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    return-object p0
.end method

.method public getPathColor()I
    .registers 1

    .line 443
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public getPathWidth()F
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    return p0
.end method

.method public getSequentialPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    if-nez v0, :cond_b

    .line 432
    new-instance v0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    invoke-direct {v0, p0}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;-><init>(Lcom/eftimoff/androipathview/PathView;)V

    iput-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    .line 434
    :cond_b
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    return-object p0
.end method

.method public getSvgResource()I
    .registers 1

    .line 483
    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 234
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 236
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_36

    .line 238
    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/eftimoff/androipathview/PathView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 239
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/eftimoff/androipathview/PathView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 242
    :cond_36
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 243
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3f
    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 245
    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Lcom/eftimoff/androipathview/PathView;->fill(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_5e
    if-ge v1, v2, :cond_7b

    .line 249
    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    .line 250
    iget-object v4, v3, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    .line 251
    iget-boolean v5, p0, Lcom/eftimoff/androipathview/PathView;->naturalColors:Z

    if-eqz v5, :cond_71

    iget-object v3, v3, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->paint:Landroid/graphics/Paint;

    goto :goto_73

    :cond_71
    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    .line 252
    :goto_73
    iget-object v5, p0, Lcom/eftimoff/androipathview/PathView;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 255
    :cond_7b
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/eftimoff/androipathview/PathView;->fillAfter(Landroid/graphics/Canvas;)V

    .line 257
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 259
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/eftimoff/androipathview/PathView;->applySolidColor(Landroid/graphics/Bitmap;)V

    .line 261
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 262
    monitor-exit v0

    return-void

    :catchall_93
    move-exception p0

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3f .. :try_end_95} :catchall_93

    throw p0
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 345
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 346
    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    if-eqz v0, :cond_13

    .line 347
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 348
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 349
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 355
    :cond_13
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 356
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    int-to-float v2, v2

    .line 357
    iget-object v5, v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v6, v5

    int-to-float v5, v6

    add-float/2addr v5, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    .line 358
    iget-object v4, v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    add-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_24

    .line 360
    :cond_4d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 361
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 362
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 363
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_62

    move v0, v2

    :cond_62
    if-ne p1, v4, :cond_65

    move p2, v3

    .line 379
    :cond_65
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 317
    iget-object p3, p0, Lcom/eftimoff/androipathview/PathView;->mLoader:Ljava/lang/Thread;

    if-eqz p3, :cond_13

    .line 319
    :try_start_7
    invoke-virtual {p3}, Ljava/lang/Thread;->join()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p3

    const-string p4, "PathView"

    const-string v0, "Unexpected error"

    .line 321
    invoke-static {p4, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :cond_13
    :goto_13
    iget p3, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    if-eqz p3, :cond_2a

    .line 325
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/eftimoff/androipathview/PathView$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/eftimoff/androipathview/PathView$1;-><init>(Lcom/eftimoff/androipathview/PathView;II)V

    const-string p1, "SVG Loader"

    invoke-direct {p3, p4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->mLoader:Ljava/lang/Thread;

    .line 339
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->mLoader:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2a
    return-void
.end method

.method public setFill(Z)V
    .registers 2

    .line 396
    iput-boolean p1, p0, Lcom/eftimoff/androipathview/PathView;->fill:Z

    return-void
.end method

.method public setFillAfter(Z)V
    .registers 2

    .line 388
    iput-boolean p1, p0, Lcom/eftimoff/androipathview/PathView;->fillAfter:Z

    return-void
.end method

.method public setFillColor(I)V
    .registers 2

    .line 404
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->fillColor:I

    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    new-instance v1, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-direct {v1, p1, v2}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter p1

    .line 197
    :try_start_f
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    .line 198
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw p0
.end method

.method public setPathColor(I)V
    .registers 2

    .line 452
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPathWidth(F)V
    .registers 2

    .line 474
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setPaths(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 182
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    new-instance v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-direct {v2, v0, v3}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 184
    :cond_1d
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter p1

    .line 185
    :try_start_20
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    .line 186
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setPercentage(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1b

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1b

    .line 211
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    .line 212
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_10
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    .line 214
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :catchall_18
    move-exception p0

    .line 214
    :try_start_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0

    .line 209
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "setPercentage not between 0.0f and 1.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSvgResource(I)V
    .registers 2

    .line 492
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    return-void
.end method
