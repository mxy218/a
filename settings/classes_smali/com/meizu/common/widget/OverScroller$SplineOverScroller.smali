.class Lcom/meizu/common/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static DECELERATION_RATE:F

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F


# instance fields
.field private mAverageTime:J

.field private mCoeffDeceleration:F

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDecelerationSpeed:I

.field private mDelta:F

.field private mDuration:I

.field private mEnableOverScrollForMz:Z

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlingTestCount:I

.field private mIterateCount:I

.field private mLastDistance:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSmoothFling:Z

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringDistance:I

.field private mSpringbackEnd:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-wide v0, 0x3fe8f5c28f5c28f6L  # 0.78

    .line 601
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL  # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    .line 609
    sput-object v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    .line 610
    sput-object v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_23
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v1, v3, :cond_ab

    int-to-float v3, v1

    const/high16 v5, 0x42c80000  # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_2f
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000  # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333  # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334  # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 649
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_a3

    .line 653
    sget-object v3, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000  # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    move v3, v4

    :goto_69
    sub-float v6, v3, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 661
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_94

    .line 665
    sget-object v3, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const v7, 0x3e333333  # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_94
    const v7, 0x3e333333  # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_9d

    move v3, v6

    goto :goto_9e

    :cond_9d
    move v2, v6

    :goto_9e
    const/high16 v7, 0x40000000  # 2.0f

    const/high16 v8, 0x40400000  # 3.0f

    goto :goto_69

    :cond_a3
    cmpl-float v7, v16, v5

    if-lez v7, :cond_a9

    move v3, v6

    goto :goto_2f

    :cond_a9
    move v0, v6

    goto :goto_2f

    .line 667
    :cond_ab
    sget-object v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 593
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    .line 616
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 617
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 618
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 621
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 622
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSpringbackEnd:I

    .line 623
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSpringDistance:I

    .line 625
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    const/4 v1, 0x1

    .line 629
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 630
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/16 v2, 0x32

    .line 634
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    const-wide/16 v2, 0x0

    .line 635
    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1138
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 675
    iput-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000  # 160.0f

    mul-float/2addr p1, v1

    const v1, 0x43c10b3d

    mul-float/2addr p1, v1

    const v1, 0x3f570a3d  # 0.84f

    mul-float/2addr p1, v1

    .line 677
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 682
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 683
    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 684
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)Z
    .registers 1

    .line 552
    iget-boolean p0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;Z)Z
    .registers 2

    .line 552
    iput-boolean p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 552
    iget p0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 552
    iget p0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    .line 552
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method private static getDeceleration(I)F
    .registers 1

    if-lez p0, :cond_5

    const/high16 p0, -0x3b060000  # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x44fa0000  # 2000.0f

    :goto_7
    return p0
.end method

.method private onEdgeReached()V
    .registers 10

    .line 942
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 944
    iget-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v1, :cond_48

    .line 945
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 947
    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2d

    neg-float v0, v1

    .line 949
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v1

    mul-float/2addr v0, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    int-to-float v0, v3

    .line 953
    :cond_2d
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v2, :cond_35

    move v2, v0

    goto :goto_36

    :cond_35
    neg-float v2, v0

    :goto_36
    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    const/high16 v1, 0x447a0000  # 1000.0f

    .line 954
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    neg-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_8c

    :cond_48
    const/high16 v0, 0x3f000000  # 0.5f

    .line 956
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    const/4 v0, 0x0

    .line 957
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    const/4 v0, 0x0

    .line 958
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const v1, 0x7fffffff

    .line 959
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 963
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    const/high16 v2, 0x43160000  # 150.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 966
    :goto_5e
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v1, v1

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v3, v3

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-nez v1, :cond_93

    .line 968
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 973
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 974
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    :goto_8c
    float-to-int v0, v0

    .line 977
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v0, 0x2

    .line 978
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    return-void

    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e
.end method

.method private quintic(JIIJ)I
    .registers 7

    long-to-float p0, p1

    const/high16 p1, 0x3f800000  # 1.0f

    mul-float/2addr p0, p1

    long-to-float p2, p5

    div-float/2addr p0, p2

    sub-float/2addr p0, p1

    int-to-double p1, p4

    float-to-double p3, p0

    const-wide/high16 p5, 0x4014000000000000L  # 5.0

    .line 1135
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    const-wide/high16 p5, 0x3ff0000000000000L  # 1.0

    add-double/2addr p3, p5

    mul-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private startSpringback(III)V
    .registers 8

    const/4 p3, 0x0

    .line 771
    iput-boolean p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 p3, 0x1

    .line 772
    iput p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 773
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 774
    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr p1, p2

    .line 776
    invoke-static {p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    .line 778
    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 779
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 781
    iget-boolean p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz p2, :cond_23

    const/16 p1, 0x26a

    .line 782
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_38

    :cond_23
    const-wide p2, 0x408f400000000000L  # 1000.0

    const-wide/high16 v0, -0x4000000000000000L  # -2.0

    int-to-double v2, p1

    mul-double/2addr v2, v0

    .line 784
    iget p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, p1

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    double-to-int p1, v0

    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    :goto_38
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 8

    .line 982
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_27

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_4a

    .line 1000
    :cond_c
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v0, :cond_17

    .line 1001
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    goto :goto_1f

    .line 1003
    :cond_17
    iget-wide v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1005
    :goto_1f
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v3, v2}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_4a

    :cond_27
    return v2

    .line 985
    :cond_28
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v3, :cond_4e

    .line 987
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 989
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 990
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 991
    iget-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 992
    invoke-direct {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 1011
    :goto_4a
    invoke-virtual {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->update()Z

    return v1

    :cond_4e
    return v2
.end method

.method finish()V
    .registers 2

    .line 732
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    .line 736
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public setEnableMZOverScroll(ZZ)V
    .registers 3

    .line 1143
    iput-boolean p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 1144
    iput-boolean p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    return-void
.end method

.method springback(III)Z
    .registers 8

    const/4 v0, 0x1

    .line 752
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 754
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    const/4 v1, 0x0

    .line 755
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 757
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 758
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_18

    .line 761
    invoke-direct {p0, p1, p2, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1d

    :cond_18
    if-le p1, p3, :cond_1d

    .line 763
    invoke-direct {p0, p1, p3, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 766
    :cond_1d
    :goto_1d
    iget-boolean p0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method startScroll(III)V
    .registers 5

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 720
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    add-int/2addr p1, p2

    .line 721
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 723
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 724
    iput p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 727
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 728
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method update()Z
    .registers 13

    .line 1021
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1022
    iget-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v5, v0, v2

    .line 1024
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v1, v0

    cmp-long v1, v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_32

    .line 1025
    iget-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_31

    .line 1026
    iget-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v1, :cond_22

    .line 1027
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    if-eqz v0, :cond_2f

    .line 1028
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_2f

    .line 1035
    :cond_22
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v1, :cond_2f

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-eq v0, v1, :cond_2f

    .line 1036
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v3

    .line 1040
    :cond_2f
    :goto_2f
    iput-boolean v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    :cond_31
    return v2

    :cond_32
    const-wide/16 v7, 0x0

    .line 1046
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v4, 0x447a0000  # 1000.0f

    if-eqz v1, :cond_a9

    const/high16 v9, 0x40000000  # 2.0f

    if-eq v1, v3, :cond_71

    const/4 v0, 0x2

    if-eq v1, v0, :cond_43

    goto/16 :goto_10d

    .line 1080
    :cond_43
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v0, :cond_5c

    long-to-float v0, v5

    div-float/2addr v0, v4

    .line 1082
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v1

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v6, v5, v0

    add-float/2addr v4, v6

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v5, v0

    mul-float/2addr v5, v0

    div-float/2addr v5, v9

    add-float/2addr v1, v5

    float-to-double v7, v1

    goto/16 :goto_10d

    .line 1085
    :cond_5c
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1086
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v0, v4

    float-to-double v7, v0

    mul-float/2addr v4, v1

    .line 1087
    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    double-to-float v0, v7

    .line 1088
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_10d

    :cond_71
    long-to-float v1, v5

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float v0, v1, v1

    .line 1097
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v11

    .line 1098
    iget-boolean v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v4, :cond_92

    .line 1099
    iget v7, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v8, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v9, v0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->quintic(JIIJ)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v11, v0

    float-to-double v7, v11

    goto/16 :goto_10d

    .line 1101
    :cond_92
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    mul-float/2addr v5, v11

    const/high16 v6, 0x40400000  # 3.0f

    mul-float/2addr v6, v0

    mul-float/2addr v9, v1

    mul-float/2addr v9, v0

    sub-float/2addr v6, v9

    mul-float/2addr v5, v6

    float-to-double v7, v5

    int-to-float v4, v4

    mul-float/2addr v11, v4

    const/high16 v4, 0x40c00000  # 6.0f

    mul-float/2addr v11, v4

    neg-float v1, v1

    add-float/2addr v1, v0

    mul-float/2addr v11, v1

    .line 1102
    iput v11, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto :goto_10d

    .line 1048
    :cond_a9
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v0, :cond_e2

    long-to-float v0, v5

    .line 1049
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v5, v0, v1

    float-to-int v5, v5

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/16 v8, 0x64

    if-ge v5, v8, :cond_d2

    int-to-float v6, v5

    div-float/2addr v6, v1

    add-int/lit8 v7, v5, 0x1

    int-to-float v8, v7

    div-float/2addr v8, v1

    .line 1056
    sget-object v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v5, v1, v5

    .line 1057
    aget v1, v1, v7

    sub-float/2addr v1, v5

    sub-float/2addr v8, v6

    div-float v7, v1, v8

    sub-float/2addr v0, v6

    mul-float/2addr v0, v7

    add-float v6, v5, v0

    .line 1062
    :cond_d2
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v1, v0

    mul-float/2addr v6, v1

    float-to-double v5, v6

    int-to-float v0, v0

    mul-float/2addr v7, v0

    .line 1063
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v0, v0

    div-float/2addr v7, v0

    mul-float/2addr v7, v4

    iput v7, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v7, v5

    goto :goto_10d

    .line 1065
    :cond_e2
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1066
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v0, :cond_fa

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_fa

    .line 1067
    iget-wide v7, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    int-to-long v0, v0

    div-long/2addr v5, v0

    add-long/2addr v7, v5

    const-wide/16 v0, 0x2

    div-long/2addr v7, v0

    iput-wide v7, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1070
    :cond_fa
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1071
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v0, v4

    float-to-double v7, v0

    mul-float/2addr v4, v1

    .line 1072
    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    double-to-float v0, v7

    .line 1073
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 1108
    :goto_10d
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v0, :cond_132

    .line 1109
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_124

    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v0, :cond_124

    .line 1110
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v3

    .line 1113
    :cond_124
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v1, v7

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1114
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget p0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-eq v0, p0, :cond_131

    move v2, v3

    :cond_131
    return v2

    .line 1117
    :cond_132
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v3
.end method

.method updateScroll(F)V
    .registers 4

    .line 688
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method
