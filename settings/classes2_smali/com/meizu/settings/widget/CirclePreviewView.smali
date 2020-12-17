.class public Lcom/meizu/settings/widget/CirclePreviewView;
.super Landroid/view/View;
.source "CirclePreviewView.java"


# instance fields
.field private mBottom:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mCx:F

.field private mCy:F

.field private mIsFirstScale:Z

.field private mLeft:I

.field private mMaskRect:Landroid/graphics/Rect;

.field private mProgress:I

.field private mRadius:F

.field private mRight:I

.field private mStrokeWidth:F

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/CirclePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/CirclePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/settings/widget/CirclePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mIsFirstScale:Z

    const/high16 p1, 0x41600000  # 14.0f

    .line 36
    iput p1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mStrokeWidth:F

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/widget/CirclePreviewView;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mClearPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mClearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mMaskRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getMaskRect(FF)Landroid/graphics/Rect;
    .registers 6

    .line 119
    iget-boolean v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mIsFirstScale:Z

    if-eqz v0, :cond_20

    .line 120
    iget v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mLeft:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 121
    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mTop:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    .line 122
    iget v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mRight:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 123
    iget v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mBottom:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int p2, v2

    .line 124
    iget-object v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mIsFirstScale:Z

    .line 127
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMaskRect:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CirclePreviewView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mMaskRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_62

    .line 81
    iget-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCx:F

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCy:F

    iget v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mRadius:F

    iget-object v3, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0xe67213

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mProgress:I

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float v8, v0, v1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sweepAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CirclePreviewView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mLeft:I

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mTop:I

    int-to-float v4, v0

    iget v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mRight:I

    int-to-float v5, v0

    iget v0, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mBottom:I

    int-to-float v6, v0

    const/high16 v7, -0x3d4c0000  # -90.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_62
    return-void
.end method

.method public setCircleProperties(Lcom/meizu/settings/widget/CircleProperties;)V
    .registers 6

    const-string v0, "CirclePreviewView"

    if-nez p1, :cond_a

    const-string p0, "setCircleProperties: circleProperties == null"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_a
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getRadius()F

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mStrokeWidth:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mRadius:F

    .line 102
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getCx()F

    move-result v1

    iput v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCx:F

    .line 103
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getCy()F

    move-result v1

    iput v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mCy:F

    .line 106
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mStrokeWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mLeft:I

    .line 107
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mStrokeWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mTop:I

    .line 108
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getRight()I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mStrokeWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mRight:I

    .line 109
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mStrokeWidth:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mBottom:I

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeft:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mLeft:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTop:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mTop:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRight:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mRight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBottom:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mBottom:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRadius:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mRadius:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_99

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_99
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 69
    iput p1, p0, Lcom/meizu/settings/widget/CirclePreviewView;->mProgress:I

    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_b

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method
