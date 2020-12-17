.class public Lcom/meizu/settings/widget/CameraLoadingTextView;
.super Landroid/widget/TextView;
.source "CameraLoadingTextView.java"


# instance fields
.field private mBottom:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCx:F

.field private mCy:F

.field private mLeft:I

.field private mProvider:Landroid/view/ViewOutlineProvider;

.field private mRadius:F

.field private mRight:I

.field private mStrokeWidth:F

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, 0x41600000  # 14.0f

    .line 38
    iput p2, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mStrokeWidth:F

    .line 41
    new-instance p2, Lcom/meizu/settings/widget/CameraLoadingTextView$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/CameraLoadingTextView$1;-><init>(Lcom/meizu/settings/widget/CameraLoadingTextView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 64
    iput-object p1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/CameraLoadingTextView;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mLeft:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/CameraLoadingTextView;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mTop:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/CameraLoadingTextView;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mRight:I

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/CameraLoadingTextView;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mBottom:I

    return p0
.end method

.method private init()V
    .registers 3

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mCirclePaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mCirclePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mStrokeWidth:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 78
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mLeft:I

    iget v2, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mTop:I

    iget v3, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mRight:I

    iget v4, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, 0x40400000  # 3.0f

    .line 81
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x42480000  # 50.0f

    .line 82
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const v2, -0x555556

    .line 84
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/high16 v2, -0x1000000

    .line 86
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 88
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 90
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    iget-object p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f120d59

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v3

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCircleOutlineProvider()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClipToOutline(Z)V

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    .line 116
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_12
    return-void
.end method

.method public setCircleProperties(Lcom/meizu/settings/widget/CircleProperties;)V
    .registers 6

    const-string v0, "CameraLoadingTextView"

    if-nez p1, :cond_a

    const-string p0, "setCircleProperties: circleProperties == null"

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_a
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getRadius()F

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mStrokeWidth:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mRadius:F

    .line 100
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getCx()F

    move-result v1

    iput v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mCx:F

    .line 101
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getCy()F

    move-result v1

    iput v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mCy:F

    .line 104
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mStrokeWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mLeft:I

    .line 105
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mStrokeWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mTop:I

    .line 106
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getRight()I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mStrokeWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mRight:I

    .line 107
    invoke-virtual {p1}, Lcom/meizu/settings/widget/CircleProperties;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mStrokeWidth:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mBottom:I

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeft:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mLeft:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTop:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mTop:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRight:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mRight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBottom:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mBottom:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRadius:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView;->mRadius:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
