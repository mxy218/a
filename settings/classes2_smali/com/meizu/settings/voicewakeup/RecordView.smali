.class public Lcom/meizu/settings/voicewakeup/RecordView;
.super Landroid/view/SurfaceView;
.source "RecordView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;,
        Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;
    }
.end annotation


# static fields
.field public static DM_DENSITY:F = 2.5f


# instance fields
.field private CIRCLE_RADIUS:F

.field private MAX_HEIGHT:F

.field private POINT_WIDTH_WITHOUT_PADDING:F

.field private POINT_WIDTH_WITH_PADDING:F

.field private STROKE_SIZE:F

.field private VIEW_HEIGHT:F

.field private VIEW_WIDTH:F

.field private circleRadius:F

.field private isRun:Z

.field private mAniPaitn:Landroid/graphics/Paint;

.field private mAniPointNum:I

.field private mAniPoints:[F

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCirclePointNum:I

.field private mComposePathEffect:Landroid/graphics/ComposePathEffect;

.field private mForePaint:Landroid/graphics/Paint;

.field private mKeyPosCircleAngle:I

.field private mKeyPosToCirclePi:Ljava/lang/Double;

.field private mKeyPosToCircleToY:Ljava/lang/Double;

.field private mKeyPosToOutCirclePi:Ljava/lang/Double;

.field private mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

.field private mOutCircleRadius:Ljava/lang/Double;

.field private mOutCircleX:F

.field private mOutCircleY:F

.field private mOutRect:Landroid/graphics/RectF;

.field private mPathChange:F

.field private mPoints:[F

.field private mRecordRunnable:Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;

.field private mRect:Landroid/graphics/Rect;

.field private mRotate:F

.field private mSpectrumNum:I

.field private mState:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThread:Lcom/meizu/settings/voicewakeup/LockThread;

.field private mUpToCircleX:I

.field private mUptoCircleY:I

.field private mVolumes:[F

.field private model:[F

.field private pointColor:I

.field private pointInterval:F

.field private pointRadius:F

.field private scale:F

.field private visualine_corner_width:F

.field private visualine_direction:I

.field private visualine_interval:F

.field private visualine_max_height:F

.field private visualine_min_height:F

.field private visualine_width:F

.field private width_dis:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/voicewakeup/RecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 27

    move-object/from16 v0, p0

    .line 104
    invoke-direct/range {p0 .. p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget v1, Lcom/meizu/settings/voicewakeup/RecordView;->DM_DENSITY:F

    const/high16 v2, 0x43790000  # 249.0f

    mul-float v3, v1, v2

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_WIDTH:F

    float-to-double v3, v1

    const-wide v5, 0x4054600000000000L  # 81.5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    .line 40
    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_HEIGHT:F

    float-to-double v3, v1

    const-wide/high16 v7, 0x3ff8000000000000L  # 1.5

    mul-double/2addr v3, v7

    double-to-float v3, v3

    .line 41
    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->STROKE_SIZE:F

    const/high16 v3, 0x40800000  # 4.0f

    mul-float v4, v1, v3

    .line 42
    iput v4, v0, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITHOUT_PADDING:F

    const/high16 v4, 0x41400000  # 12.0f

    mul-float v9, v1, v4

    .line 43
    iput v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITH_PADDING:F

    const/high16 v9, 0x41f00000  # 30.0f

    mul-float/2addr v1, v9

    .line 44
    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    const/high16 v1, 0x418f0000  # 17.875f

    .line 45
    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->MAX_HEIGHT:F

    .line 51
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mRect:Landroid/graphics/Rect;

    .line 53
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    .line 54
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    .line 55
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v10, 0x25

    .line 56
    iput v10, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    const/16 v11, 0x8

    .line 57
    iput v11, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPointNum:I

    const/16 v11, 0x10

    .line 58
    iput v11, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mCirclePointNum:I

    const/4 v11, 0x0

    .line 59
    iput v11, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    const/4 v11, 0x2

    .line 63
    iput v11, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mState:I

    .line 64
    iget v12, v0, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITH_PADDING:F

    const/high16 v13, 0x3f800000  # 1.0f

    mul-float/2addr v12, v13

    const/high16 v14, 0x43340000  # 180.0f

    mul-float/2addr v12, v14

    float-to-double v14, v12

    iget v12, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v9, v12

    const-wide v16, 0x400921fb54442d18L  # Math.PI

    mul-double v9, v9, v16

    div-double/2addr v14, v9

    double-to-int v9, v14

    iput v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    .line 65
    iget v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    int-to-double v9, v9

    mul-double v9, v9, v16

    const-wide v14, 0x4066800000000000L  # 180.0

    div-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    .line 66
    iget v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    rsub-int/lit8 v9, v9, 0x5a

    int-to-double v9, v9

    mul-double v9, v9, v16

    div-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToOutCirclePi:Ljava/lang/Double;

    .line 67
    iget v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    rsub-int v9, v9, 0xb4

    int-to-double v9, v9

    mul-double v9, v9, v16

    div-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCircleToY:Ljava/lang/Double;

    .line 68
    iget-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget v12, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v14, v12

    mul-double/2addr v9, v14

    iget-object v12, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    .line 69
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    sub-double v14, v18, v14

    div-double/2addr v9, v14

    .line 68
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 70
    iget v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_WIDTH:F

    const/high16 v10, 0x40000000  # 2.0f

    div-float/2addr v9, v10

    float-to-double v14, v9

    iget-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    iget v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v3, v9

    mul-double v20, v20, v3

    iget-object v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    .line 71
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    sub-double v3, v18, v3

    div-double v20, v20, v3

    sub-double v14, v14, v20

    double-to-float v3, v14

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    .line 72
    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_HEIGHT:F

    div-float/2addr v3, v10

    float-to-double v3, v3

    iget-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double/2addr v3, v14

    double-to-float v3, v3

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleY:F

    .line 73
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    float-to-double v14, v4

    iget-object v4, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    sub-double v14, v14, v20

    double-to-int v4, v14

    int-to-float v4, v4

    iget v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleY:F

    float-to-double v14, v9

    iget-object v9, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 74
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    sub-double v14, v14, v20

    double-to-int v9, v14

    int-to-float v9, v9

    iget v14, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    float-to-double v14, v14

    iget-object v12, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    add-double v14, v14, v22

    double-to-int v12, v14

    int-to-float v12, v12

    iget v14, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleY:F

    float-to-double v14, v14

    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    add-double v14, v14, v22

    double-to-int v1, v14

    int-to-float v1, v1

    invoke-direct {v3, v4, v9, v12, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutRect:Landroid/graphics/RectF;

    .line 76
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_WIDTH:F

    div-float/2addr v1, v10

    float-to-double v3, v1

    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v14, v1

    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v14, v14, v22

    sub-double/2addr v3, v14

    double-to-int v1, v3

    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mUpToCircleX:I

    .line 77
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_HEIGHT:F

    div-float/2addr v1, v10

    float-to-double v3, v1

    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v14, v1

    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v14, v14, v22

    sub-double/2addr v3, v14

    double-to-int v1, v3

    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mUptoCircleY:I

    .line 89
    iput v11, v0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_direction:I

    .line 90
    iput v13, v0, Lcom/meizu/settings/voicewakeup/RecordView;->scale:F

    const/4 v1, 0x0

    .line 91
    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->width_dis:F

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->isRun:Z

    .line 105
    invoke-static {}, Lcom/meizu/settings/voicewakeup/DisplayUtil;->getDisplayDm()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/meizu/settings/voicewakeup/RecordView;->DM_DENSITY:F

    .line 106
    sget v1, Lcom/meizu/settings/voicewakeup/RecordView;->DM_DENSITY:F

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_WIDTH:F

    float-to-double v2, v1

    mul-double/2addr v2, v5

    double-to-float v2, v2

    .line 107
    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_HEIGHT:F

    float-to-double v2, v1

    mul-double/2addr v2, v7

    double-to-float v2, v2

    .line 108
    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->STROKE_SIZE:F

    const/high16 v2, 0x40400000  # 3.0f

    mul-float/2addr v2, v1

    .line 109
    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITHOUT_PADDING:F

    const/high16 v2, 0x41400000  # 12.0f

    mul-float v4, v1, v2

    .line 110
    iput v4, v0, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITH_PADDING:F

    const/high16 v2, 0x41f00000  # 30.0f

    mul-float/2addr v1, v2

    .line 111
    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    const/high16 v1, 0x418f0000  # 17.875f

    .line 112
    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->MAX_HEIGHT:F

    .line 113
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITH_PADDING:F

    mul-float/2addr v1, v13

    const/high16 v2, 0x43340000  # 180.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v3, v3

    mul-double v3, v3, v16

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    .line 114
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    int-to-double v1, v1

    mul-double v1, v1, v16

    const-wide v3, 0x4066800000000000L  # 180.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    .line 115
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    rsub-int/lit8 v1, v1, 0x5a

    int-to-double v1, v1

    mul-double v1, v1, v16

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToOutCirclePi:Ljava/lang/Double;

    .line 116
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosCircleAngle:I

    rsub-int v1, v1, 0xb4

    int-to-double v1, v1

    mul-double v1, v1, v16

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCircleToY:Ljava/lang/Double;

    .line 117
    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    iget-object v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    sub-double v3, v18, v3

    div-double/2addr v1, v3

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 119
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_WIDTH:F

    div-float/2addr v1, v10

    float-to-double v1, v1

    iget-object v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget v5, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    iget-object v5, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    .line 120
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    sub-double v18, v18, v5

    div-double v3, v3, v18

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    .line 121
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_HEIGHT:F

    div-float/2addr v1, v10

    float-to-double v1, v1

    iget-object v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleY:F

    .line 122
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    float-to-double v2, v2

    iget-object v4, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleY:F

    float-to-double v3, v3

    iget-object v5, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 123
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    iget v4, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    float-to-double v4, v4

    iget-object v6, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleY:F

    float-to-double v5, v5

    iget-object v7, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 124
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutRect:Landroid/graphics/RectF;

    .line 125
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_WIDTH:F

    div-float/2addr v1, v10

    float-to-double v1, v1

    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v3, v3

    iget-object v5, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mUpToCircleX:I

    .line 126
    iget v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->VIEW_HEIGHT:F

    div-float/2addr v1, v10

    float-to-double v1, v1

    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    float-to-double v3, v3

    iget-object v5, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mUptoCircleY:I

    .line 128
    sget-object v1, Lcom/android/settings/R$styleable;->RecordView:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 130
    iget v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->STROKE_SIZE:F

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_width:F

    .line 132
    sget v2, Lcom/meizu/settings/voicewakeup/RecordView;->DM_DENSITY:F

    const/high16 v3, 0x3ff00000  # 1.875f

    mul-float/2addr v2, v3

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_min_height:F

    .line 134
    iget v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->MAX_HEIGHT:F

    sget v3, Lcom/meizu/settings/voicewakeup/RecordView;->DM_DENSITY:F

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_max_height:F

    .line 136
    iget v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->STROKE_SIZE:F

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_corner_width:F

    .line 138
    sget v2, Lcom/meizu/settings/voicewakeup/RecordView;->DM_DENSITY:F

    const/high16 v3, 0x40800000  # 4.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_interval:F

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->pointColor:I

    .line 141
    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    .line 142
    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->CIRCLE_RADIUS:F

    const v4, 0x40490fdb  # (float)Math.PI

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mCirclePointNum:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->pointInterval:F

    .line 144
    iget v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITHOUT_PADDING:F

    div-float/2addr v3, v10

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->pointRadius:F

    const/16 v3, 0x9

    const/16 v4, 0x25

    .line 146
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    const/4 v3, 0x5

    .line 147
    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_direction:I

    .line 148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/meizu/settings/voicewakeup/RecordView;->init()V

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 151
    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 152
    iget-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 155
    new-instance v1, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;

    iget-object v2, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;-><init>(Lcom/meizu/settings/voicewakeup/RecordView;Landroid/view/SurfaceHolder;)V

    iput-object v1, v0, Lcom/meizu/settings/voicewakeup/RecordView;->mRecordRunnable:Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/voicewakeup/RecordView;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/voicewakeup/RecordView;)[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/voicewakeup/RecordView;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->isRun:Z

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/voicewakeup/RecordView;Landroid/graphics/Canvas;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordView;->doOnDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private aniCircle(Landroid/graphics/Canvas;)V
    .registers 16

    .line 485
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRotate:F

    const/high16 v1, 0x40400000  # 3.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRotate:F

    .line 486
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRotate:F

    const/high16 v1, 0x43b40000  # 360.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    const/4 v0, 0x0

    .line 487
    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRotate:F

    .line 489
    :cond_12
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    if-nez v0, :cond_17

    return-void

    :cond_17
    const/16 v0, 0x1e

    new-array v0, v0, [F

    .line 493
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 494
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    :goto_26
    const/16 v4, 0xf

    const/high16 v5, 0x40000000  # 2.0f

    if-ge v3, v4, :cond_60

    div-float v4, v1, v5

    float-to-double v6, v4

    .line 496
    iget v4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    float-to-double v8, v4

    mul-int/lit8 v4, v3, 0x18

    int-to-double v10, v4

    const-wide v12, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L  # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    double-to-float v4, v6

    div-float v5, v2, v5

    float-to-double v5, v5

    .line 497
    iget v7, p0, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    float-to-double v7, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v5, v5

    mul-int/lit8 v6, v3, 0x2

    .line 498
    aput v4, v0, v6

    add-int/lit8 v6, v6, 0x1

    .line 499
    aput v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 501
    :cond_60
    iget v3, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRotate:F

    div-float/2addr v1, v5

    div-float/2addr v2, v5

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 502
    iget v3, p0, Lcom/meizu/settings/voicewakeup/RecordView;->scale:F

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 503
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private aniLineToCircle(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 440
    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    const/high16 v1, 0x41700000  # 15.0f

    add-float/2addr v0, v1

    iput v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    .line 441
    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 442
    iput v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    .line 444
    :cond_14
    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    float-to-double v2, v0

    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToOutCirclePi:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v4, v8

    const-wide v8, 0x400921fb54442d18L  # Math.PI

    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToCirclePi:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->POINT_WIDTH_WITH_PADDING:F

    const/high16 v8, 0x40000000  # 2.0f

    mul-float/2addr v0, v8

    float-to-double v9, v0

    sub-double/2addr v4, v9

    cmpl-double v0, v2, v4

    const/4 v9, 0x2

    if-ltz v0, :cond_4c

    .line 446
    iput v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    .line 447
    iput v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mRotate:F

    .line 448
    iput v9, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mState:I

    const/high16 v0, 0x3f800000  # 1.0f

    .line 449
    iput v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->scale:F

    return-void

    .line 453
    :cond_4c
    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    if-nez v0, :cond_57

    .line 454
    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPointNum:I

    mul-int/2addr v0, v9

    new-array v0, v0, [F

    iput-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    .line 456
    :cond_57
    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    iget v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPointNum:I

    int-to-float v1, v1

    div-float v10, v0, v1

    const/4 v0, 0x0

    move v11, v0

    .line 457
    :goto_60
    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPointNum:I

    if-ge v11, v0, :cond_140

    int-to-float v0, v11

    mul-float/2addr v0, v10

    div-float v1, v10, v8

    add-float/2addr v0, v1

    .line 458
    iget v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    add-float/2addr v1, v0

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    iget v3, v6, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_111

    .line 460
    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    mul-int/lit8 v2, v11, 0x2

    aput v1, v0, v2

    .line 461
    iget v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_ef

    float-to-double v3, v1

    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mKeyPosToOutCirclePi:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    mul-double/2addr v12, v14

    cmpg-double v0, v3, v12

    if-gtz v0, :cond_ef

    .line 462
    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    iget v3, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    float-to-double v3, v3

    iget-object v5, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget v5, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    sub-float v5, v1, v5

    float-to-double v14, v5

    iget-object v5, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 463
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v3, v12

    double-to-float v3, v3

    aput v3, v0, v2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",AniP="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", Math="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget-object v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 465
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    div-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;)V

    .line 467
    :cond_ef
    iget-object v12, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    add-int/lit8 v13, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v3, v0

    iget v4, v6, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    const/4 v5, 0x1

    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    aget v14, v0, v2

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/voicewakeup/RecordView;->computeYorX(FFFZF)F

    move-result v0

    aput v0, v12, v13

    goto :goto_13c

    .line 470
    :cond_111
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v6, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    iget v2, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mPathChange:F

    add-float/2addr v0, v2

    sub-float v5, v1, v0

    .line 472
    iget-object v12, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    mul-int/lit8 v0, v11, 0x2

    aput v5, v12, v0

    add-int/lit8 v13, v0, 0x1

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v2, v0

    iget v3, v6, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/voicewakeup/RecordView;->computeYorX(FFFZF)F

    move-result v0

    aput v0, v12, v13

    :goto_13c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_60

    .line 478
    :cond_140
    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    iget-object v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    const/high16 v0, 0x43340000  # 180.0f

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    div-int/2addr v1, v9

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 480
    iget-object v0, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPoints:[F

    iget-object v1, v6, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private computeYorX(FFFZF)F
    .registers 10

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr p1, p3

    div-float p3, p2, p3

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    if-eqz p4, :cond_64

    .line 258
    iget p4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    cmpg-float v2, p5, p4

    if-gez v2, :cond_10

    return p3

    :cond_10
    cmpl-float p4, p5, p4

    if-ltz p4, :cond_39

    .line 260
    iget p4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mUpToCircleX:I

    int-to-float p4, p4

    cmpg-float p4, p5, p4

    if-gez p4, :cond_39

    .line 261
    iget p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleY:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    iget-object p3, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleRadius:Ljava/lang/Double;

    .line 262
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mOutCircleX:F

    sub-float/2addr p5, p0

    float-to-double v2, p5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    double-to-float p0, p1

    return p0

    .line 263
    :cond_39
    iget p2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mUpToCircleX:I

    int-to-float p2, p2

    cmpl-float p2, p5, p2

    if-ltz p2, :cond_62

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    add-float/2addr p2, p0

    cmpg-float p2, p5, p2

    if-gez p2, :cond_62

    float-to-double p2, p3

    float-to-double v2, p0

    .line 264
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float/2addr p5, p1

    float-to-double p0, p5

    .line 265
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr v2, p0

    .line 264
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    sub-double/2addr p2, p0

    double-to-float p0, p2

    return p0

    :cond_62
    const/4 p0, 0x0

    return p0

    :cond_64
    float-to-double p2, p3

    .line 268
    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->circleRadius:F

    float-to-double v2, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float/2addr p5, p1

    float-to-double p0, p5

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    add-double/2addr p2, p0

    double-to-float p0, p2

    return p0
.end method

.method private doOnDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 508
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mState:I

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 p0, 0x3

    goto :goto_17

    .line 516
    :cond_c
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordView;->aniCircle(Landroid/graphics/Canvas;)V

    goto :goto_17

    .line 513
    :cond_10
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordView;->aniLineToCircle(Landroid/graphics/Canvas;)V

    goto :goto_17

    .line 510
    :cond_14
    invoke-direct {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordView;->volumeUpdateDraw(Landroid/graphics/Canvas;)V

    :goto_17
    return-void
.end method

.method private init()V
    .registers 7

    .line 159
    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_corner_width:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 160
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointRadius:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointInterval:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 163
    new-instance v2, Landroid/graphics/ComposePathEffect;

    invoke-direct {v2, v0, v1}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mComposePathEffect:Landroid/graphics/ComposePathEffect;

    .line 165
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_width:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 167
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointRadius:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mComposePathEffect:Landroid/graphics/ComposePathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 178
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    move v0, v4

    .line 179
    :goto_73
    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    if-ge v0, v1, :cond_80

    .line 180
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_min_height:F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_80
    add-int/lit8 v0, v1, 0x1

    .line 182
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->model:[F

    .line 184
    new-array v0, v1, [Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    .line 185
    :goto_8a
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    if-ge v4, v0, :cond_9a

    .line 186
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    new-instance v1, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    invoke-direct {v1, p0}, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;-><init>(Lcom/meizu/settings/voicewakeup/RecordView;)V

    aput-object v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_9a
    return-void
.end method

.method private volumeUpdateDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 375
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    if-nez v0, :cond_5

    return-void

    .line 380
    :cond_5
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mPoints:[F

    if-eqz v1, :cond_f

    array-length v1, v1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_18

    .line 382
    :cond_f
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mPoints:[F

    .line 384
    :cond_18
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 385
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->width_dis:F

    .line 386
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->scale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 387
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 388
    :goto_4f
    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mSpectrumNum:I

    if-ge v3, v2, :cond_153

    .line 390
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->model:[F

    if-eqz v2, :cond_9b

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v3, v2, :cond_9b

    .line 391
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->getFinal()F

    move-result v2

    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->model:[F

    add-int/lit8 v5, v3, 0x1

    aget v6, v4, v5

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_7f

    .line 392
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    aget-object v6, v6, v3

    aget v4, v4, v5

    aget v5, v2, v3

    .line 393
    invoke-virtual {v6, v4, v5}, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->loadData(FF)F

    move-result v4

    aput v4, v2, v3

    goto :goto_9b

    .line 394
    :cond_7f
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v2, v2, v3

    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->getNext()F

    move-result v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_9b

    .line 395
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mList:[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->getCur()F

    move-result v4

    aput v4, v2, v3

    .line 399
    :cond_9b
    :goto_9b
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v4, v2, v3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_a8

    .line 401
    iget v4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_min_height:F

    aput v4, v2, v3

    .line 405
    :cond_a8
    iget v2, p0, Lcom/meizu/settings/voicewakeup/RecordView;->visualine_direction:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_e8

    mul-int v2, v0, v3

    .line 406
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/meizu/settings/voicewakeup/RecordView;->width_dis:F

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 407
    div-int/lit8 v4, v1, 0x2

    sub-int v6, v1, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v7, v7, v3

    add-float/2addr v6, v7

    int-to-float v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 408
    iget-object v8, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v8, v8, v3

    sub-float/2addr v7, v8

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 409
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mPoints:[F

    mul-int/lit8 v7, v3, 0x4

    int-to-float v2, v2

    aput v2, v5, v7

    add-int/lit8 v8, v7, 0x1

    .line 410
    aput v6, v5, v8

    add-int/lit8 v6, v7, 0x2

    .line 412
    aput v2, v5, v6

    add-int/lit8 v7, v7, 0x3

    .line 413
    aput v4, v5, v7

    goto :goto_14f

    :cond_e8
    if-nez v2, :cond_11d

    mul-int v2, v0, v3

    .line 415
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v2, v4

    .line 416
    div-int/lit8 v4, v1, 0x2

    sub-int v6, v1, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v7, v7, v3

    add-float/2addr v6, v7

    int-to-float v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 417
    iget-object v8, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v8, v8, v3

    sub-float/2addr v7, v8

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 418
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mPoints:[F

    mul-int/lit8 v7, v3, 0x4

    int-to-float v2, v2

    aput v2, v5, v7

    add-int/lit8 v8, v7, 0x1

    .line 419
    aput v6, v5, v8

    add-int/lit8 v6, v7, 0x2

    .line 421
    aput v2, v5, v6

    add-int/lit8 v7, v7, 0x3

    .line 422
    aput v4, v5, v7

    goto :goto_14f

    :cond_11d
    mul-int v2, v0, v3

    .line 424
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v2, v4

    .line 425
    div-int/lit8 v4, v1, 0x2

    sub-int v6, v1, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v7, v7, v3

    add-float/2addr v6, v7

    int-to-float v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 426
    iget-object v8, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mVolumes:[F

    aget v8, v8, v3

    sub-float/2addr v7, v8

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 427
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mPoints:[F

    mul-int/lit8 v7, v3, 0x4

    int-to-float v2, v2

    aput v2, v5, v7

    add-int/lit8 v8, v7, 0x1

    .line 428
    aput v6, v5, v8

    add-int/lit8 v6, v7, 0x2

    .line 430
    aput v2, v5, v6

    add-int/lit8 v7, v7, 0x3

    .line 431
    aput v4, v5, v7

    :goto_14f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4f

    .line 435
    :cond_153
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mPoints:[F

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getPointColor()I
    .registers 2

    monitor-enter p0

    .line 551
    :try_start_1
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointColor:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRotate()F
    .registers 2

    monitor-enter p0

    .line 539
    :try_start_1
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRotate:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScale()F
    .registers 2

    monitor-enter p0

    .line 543
    :try_start_1
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->scale:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    monitor-enter p0

    .line 526
    :try_start_1
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPointColor(I)V
    .registers 4

    monitor-enter p0

    .line 555
    :try_start_1
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointColor:I

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pointColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 558
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPointColorAni(I)V
    .registers 4

    monitor-enter p0

    .line 561
    :try_start_1
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->pointColor:I

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pointColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mAniPaitn:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 564
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setScale(F)V
    .registers 2

    monitor-enter p0

    .line 547
    :try_start_1
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->scale:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 548
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setState(I)V
    .registers 4

    monitor-enter p0

    .line 530
    :try_start_1
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mState:I

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 532
    :goto_6
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->model:[F

    array-length v0, v0

    if-ge p1, v0, :cond_13

    .line 533
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->model:[F

    const/4 v1, 0x0

    aput v1, v0, p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 536
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    const/4 p1, 0x1

    .line 568
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->isRun:Z

    .line 569
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRecordRunnable:Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->setNeedReset(Z)V

    .line 571
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mThread:Lcom/meizu/settings/voicewakeup/LockThread;

    if-nez v0, :cond_21

    .line 572
    new-instance v0, Lcom/meizu/settings/voicewakeup/LockThread;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mRecordRunnable:Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;

    const-string v2, "RecordView_Thread"

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/voicewakeup/LockThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mThread:Lcom/meizu/settings/voicewakeup/LockThread;

    .line 573
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mThread:Lcom/meizu/settings/voicewakeup/LockThread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 574
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mThread:Lcom/meizu/settings/voicewakeup/LockThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_21
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    const/4 p1, 0x0

    .line 586
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->isRun:Z

    const/4 p1, 0x0

    .line 587
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordView;->mThread:Lcom/meizu/settings/voicewakeup/LockThread;

    const/4 p1, -0x1

    .line 588
    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordView;->setPointColorAni(I)V

    .line 589
    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/RecordView;->setPointColor(I)V

    const-string p0, "RecordView"

    const-string p1, "surfaceDestroyed"

    .line 590
    invoke-static {p0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
