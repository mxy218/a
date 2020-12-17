.class public Lcom/meizu/settings/widget/SurfaceViewPreview;
.super Landroid/view/SurfaceView;
.source "SurfaceViewPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;
    }
.end annotation


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

.field private mHandler:Landroid/os/Handler;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOnSurfaceChangedListener:Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;

.field private mPreviewHeight:F

.field private mPreviewScale:F

.field private mPreviewScaleX:F

.field private mPreviewScaleY:F

.field private mPreviewWidth:F

.field private mRatioHeight:I

.field private mRatioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mMatrix:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x43f00000  # 480.0f

    .line 26
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewWidth:F

    const/high16 v0, 0x44200000  # 640.0f

    .line 27
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewHeight:F

    const/high16 v0, 0x3f400000  # 0.75f

    .line 29
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScale:F

    const/16 v0, 0x3c0

    .line 31
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mRatioWidth:I

    const/16 v0, 0x500

    .line 32
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mRatioHeight:I

    .line 53
    new-instance v0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/SurfaceViewPreview$1;-><init>(Lcom/meizu/settings/widget/SurfaceViewPreview;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->callback:Landroid/view/SurfaceHolder$Callback;

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/SurfaceViewPreview;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mMatrix:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x43f00000  # 480.0f

    .line 26
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewWidth:F

    const/high16 v0, 0x44200000  # 640.0f

    .line 27
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewHeight:F

    const/high16 v0, 0x3f400000  # 0.75f

    .line 29
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScale:F

    const/16 v0, 0x3c0

    .line 31
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mRatioWidth:I

    const/16 v0, 0x500

    .line 32
    iput v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mRatioHeight:I

    .line 53
    new-instance v0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/SurfaceViewPreview$1;-><init>(Lcom/meizu/settings/widget/SurfaceViewPreview;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/SurfaceViewPreview;)Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mOnSurfaceChangedListener:Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/SurfaceViewPreview;)F
    .registers 1

    .line 17
    iget p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScaleX:F

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/widget/SurfaceViewPreview;F)F
    .registers 2

    .line 17
    iput p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScaleX:F

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/SurfaceViewPreview;)F
    .registers 1

    .line 17
    iget p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewWidth:F

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/SurfaceViewPreview;)F
    .registers 1

    .line 17
    iget p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScaleY:F

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/widget/SurfaceViewPreview;F)F
    .registers 2

    .line 17
    iput p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScaleY:F

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/SurfaceViewPreview;)F
    .registers 1

    .line 17
    iget p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewHeight:F

    return p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/SurfaceViewPreview;)Landroid/graphics/Matrix;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 49
    new-instance p1, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iget-object p2, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    .line 50
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getPreviewScaleX()F
    .registers 1

    .line 96
    iget p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScaleX:F

    return p0
.end method

.method public getPreviewScaleY()F
    .registers 1

    .line 100
    iget p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScaleY:F

    return p0
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x3f400000  # 0.75f

    const/high16 v1, 0x3f800000  # 1.0f

    if-ge p1, p2, :cond_27

    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v1, p2

    div-float/2addr v2, v1

    .line 119
    iget v1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScale:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_19

    goto :goto_31

    :cond_19
    cmpl-float v0, v1, v0

    if-nez v0, :cond_22

    mul-int/lit8 v0, p1, 0x4

    .line 125
    div-int/lit8 v0, v0, 0x3

    goto :goto_41

    :cond_22
    mul-int/lit8 v0, p1, 0x10

    .line 128
    div-int/lit8 v0, v0, 0x9

    goto :goto_41

    :cond_27
    int-to-float v2, p2

    mul-float/2addr v2, v1

    int-to-float v1, p1

    div-float/2addr v2, v1

    .line 133
    iget v1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mPreviewScale:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_34

    :goto_31
    move v0, p1

    :goto_32
    move v1, p2

    goto :goto_43

    :cond_34
    cmpl-float v0, v1, v0

    if-nez v0, :cond_3d

    mul-int/lit8 v0, p2, 0x4

    .line 139
    div-int/lit8 v0, v0, 0x3

    goto :goto_32

    :cond_3d
    mul-int/lit8 v0, p1, 0x9

    .line 142
    div-int/lit8 v0, v0, 0x10

    :goto_41
    move v1, v0

    move v0, p1

    .line 147
    :goto_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originalWidth :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", originalHeight :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SurfaceViewPreview"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalWidth: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", finalHeight: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSurfaceChangedListener(Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview;->mOnSurfaceChangedListener:Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;

    return-void
.end method
