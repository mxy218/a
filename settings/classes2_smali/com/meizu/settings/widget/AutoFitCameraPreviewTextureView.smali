.class public Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;
.super Landroid/view/TextureView;
.source "AutoFitCameraPreviewTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;
    }
.end annotation


# instance fields
.field private mBottom:I

.field private mContext:Landroid/content/Context;

.field private mCx:F

.field private mCy:F

.field private mLeft:I

.field private mPreviewHeight:I

.field private mPreviewScaleX:F

.field private mPreviewScaleY:F

.field private mPreviewWidth:I

.field private mProvider:Landroid/view/ViewOutlineProvider;

.field private mRadius:F

.field private mRatioHeight:I

.field private mRatioWidth:I

.field private mRight:I

.field private mSurfaceTextureAvailableListener:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    .line 40
    iput p2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRatioWidth:I

    const/4 p2, 0x4

    .line 41
    iput p2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRatioHeight:I

    const/16 p2, 0x280

    .line 42
    iput p2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewWidth:I

    const/16 p2, 0x1e0

    .line 43
    iput p2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewHeight:I

    .line 56
    new-instance p2, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$1;-><init>(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 74
    new-instance p2, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$2;-><init>(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 136
    iput-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mContext:Landroid/content/Context;

    .line 137
    iget-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mLeft:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mTop:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRight:I

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mBottom:I

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mSurfaceTextureAvailableListener:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F
    .registers 2

    .line 38
    iput p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewScaleX:F

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;F)F
    .registers 2

    .line 38
    iput p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewScaleY:F

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewHeight:I

    return p0
.end method

.method private initMaskArea()V
    .registers 5

    .line 175
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRadius:F

    .line 176
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mCx:F

    .line 177
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mCy:F

    .line 179
    iget v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mCx:F

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRadius:F

    sub-float v2, v0, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mLeft:I

    .line 180
    iget v2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mCy:F

    sub-float v3, v2, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mTop:I

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 181
    iput v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRight:I

    add-float/2addr v2, v1

    float-to-int v0, v2

    .line 182
    iput v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mBottom:I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRadius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraPreviewTexture"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCircleProperties()Lcom/meizu/settings/widget/CircleProperties;
    .registers 10

    .line 189
    new-instance v8, Lcom/meizu/settings/widget/CircleProperties;

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mLeft:I

    iget v2, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mTop:I

    iget v3, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRight:I

    iget v4, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mBottom:I

    iget v5, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRadius:F

    iget v6, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mCx:F

    iget v7, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mCy:F

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/meizu/settings/widget/CircleProperties;-><init>(IIIIFFF)V

    return-object v8
.end method

.method public getPreviewScaleX()F
    .registers 1

    .line 209
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewScaleX:F

    return p0
.end method

.method public getPreviewScaleY()F
    .registers 1

    .line 213
    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewScaleY:F

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 167
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",top:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",right:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",bottom:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",changed:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CameraPreviewTexture"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3e

    .line 170
    invoke-direct {p0}, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->initMaskArea()V

    :cond_3e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 151
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 154
    iget v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRatioWidth:I

    if-eqz v0, :cond_25

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mRatioHeight:I

    if-nez v1, :cond_14

    goto :goto_25

    :cond_14
    mul-int v2, p2, v0

    .line 157
    div-int/2addr v2, v1

    if-ge p1, v2, :cond_1f

    mul-int/2addr v1, p1

    .line 158
    div-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    goto :goto_28

    :cond_1f
    mul-int/2addr v0, p2

    .line 160
    div-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    goto :goto_28

    .line 155
    :cond_25
    :goto_25
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    :goto_28
    return-void
.end method

.method public setAspectRatio()V
    .registers 1

    .line 146
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public setCircleOutlineProvider()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setClipToOutline(Z)V

    return-void
.end method

.method public setSurfaceTextureAvailableListener(Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mSurfaceTextureAvailableListener:Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView$OnSurfaceTextureAvailableListener;

    return-void
.end method

.method public setSurfaceTextureDefaultBufferSize()V
    .registers 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SurfaceTexture is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 204
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewWidth:I

    iget p0, p0, Lcom/meizu/settings/widget/AutoFitCameraPreviewTextureView;->mPreviewHeight:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_30
    return-void
.end method
