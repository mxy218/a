.class Lflyme/support/v7/util/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/util/OverScroller;
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
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-wide v0, 0x3fe8f5c28f5c28f6L  # 0.78

    .line 584
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL  # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    .line 592
    sput-object v1, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    .line 593
    sput-object v0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

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

    .line 611
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_a3

    .line 615
    sget-object v3, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

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

    .line 623
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_94

    .line 627
    sget-object v3, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

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

    .line 629
    :cond_ab
    sget-object v0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 576
    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mState:I

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000  # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d  # 0.84f

    mul-float/2addr p1, v0

    .line 639
    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)Z
    .registers 1

    .line 535
    iget-boolean p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$100(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 535
    iget p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$200(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)F
    .registers 1

    .line 535
    iget p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static synthetic access$500(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 535
    iget p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$600(Lflyme/support/v7/util/OverScroller$SplineOverScroller;)J
    .registers 3

    .line 535
    iget-wide v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method private adjustDuration(III)V
    .registers 7

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 663
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000  # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_2b

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 668
    sget-object p2, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    .line 669
    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    .line 671
    iget p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    :cond_2b
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 9

    neg-int v0, p3

    int-to-float v0, v0

    .line 796
    iget v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float/2addr p3, p3

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p3, v2

    .line 799
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 800
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    mul-double/2addr v1, v3

    .line 801
    iget p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 802
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 801
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 803
    iget-wide v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    .line 804
    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 805
    iget p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
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

.method private getSplineDeceleration(I)D
    .registers 3

    .line 778
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333  # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getSplineFlingDistance(I)D
    .registers 8

    .line 782
    invoke-direct {p0, p1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 783
    sget p1, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, v4

    .line 784
    iget v4, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .registers 6

    .line 789
    invoke-direct {p0, p1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide p0

    .line 790
    sget v0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    .line 791
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L  # 1000.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff8000000000000L  # 1.5

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private onEdgeReached()V
    .registers 7

    .line 851
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 852
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    .line 853
    iget v3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 855
    iget v4, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_26

    neg-float v0, v3

    mul-float/2addr v0, v1

    int-to-float v1, v4

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 857
    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    int-to-float v0, v4

    :cond_26
    float-to-int v1, v0

    .line 861
    iput v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mOver:I

    const/4 v1, 0x2

    .line 862
    iput v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mState:I

    .line 863
    iget v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    iget v2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v2, :cond_33

    goto :goto_34

    :cond_33
    neg-float v0, v0

    :goto_34
    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    const/high16 v0, 0x447a0000  # 1000.0f

    .line 864
    iget v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    neg-int v0, v0

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method private quintic(J)I
    .registers 7

    long-to-float p1, p1

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p1, p2

    .line 966
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr p1, p2

    .line 967
    iget p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mOver:I

    int-to-double v0, p0

    float-to-double p0, p1

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr p0, v2

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private startAfterEdge(IIII)V
    .registers 15

    const/4 v0, 0x1

    if-le p1, p2, :cond_f

    if-ge p1, p3, :cond_f

    const-string p1, "OverScroller"

    const-string p2, "startAfterEdge called from a valid position"

    .line 816
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iput-boolean v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_f
    const/4 v1, 0x0

    if-le p1, p3, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-eqz v2, :cond_19

    move v3, p3

    goto :goto_1a

    :cond_19
    move v3, p2

    :goto_1a
    sub-int v4, p1, v3

    mul-int v5, v4, p4

    if-ltz v5, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    if-eqz v0, :cond_28

    .line 826
    invoke-direct {p0, p1, v3, p4}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_4b

    .line 828
    :cond_28
    invoke-direct {p0, p4}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 829
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_48

    if-eqz v2, :cond_39

    move v7, p2

    goto :goto_3a

    :cond_39
    move v7, p1

    :goto_3a
    if-eqz v2, :cond_3e

    move v8, p1

    goto :goto_3f

    :cond_3e
    move v8, p3

    .line 830
    :goto_3f
    iget v9, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_4b

    .line 832
    :cond_48
    invoke-direct {p0, p1, v3, p4}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_4b
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .registers 5

    if-nez p3, :cond_5

    sub-int v0, p1, p2

    goto :goto_6

    :cond_5
    move v0, p3

    .line 809
    :goto_6
    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 810
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 811
    invoke-direct {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .registers 6

    const/4 p3, 0x0

    .line 729
    iput-boolean p3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 p3, 0x1

    .line 730
    iput p3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mState:I

    .line 731
    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 732
    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr p1, p2

    .line 734
    invoke-static {p1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    .line 736
    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    .line 737
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mOver:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L  # -2.0

    mul-double/2addr p1, v0

    .line 738
    iget p3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L  # 1000.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff8000000000000L  # 1.5

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 8

    .line 868
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    if-eq v0, v1, :cond_1c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_41

    .line 885
    :cond_c
    iget-wide v3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    .line 886
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    iget v3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v3, v2}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_41

    :cond_1c
    return v2

    .line 871
    :cond_1d
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    iget v3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v3, :cond_45

    .line 873
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 875
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    .line 876
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 877
    iget-wide v2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    .line 878
    invoke-direct {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 892
    :goto_41
    invoke-virtual {p0}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->update()Z

    return v1

    :cond_45
    return v2
.end method

.method finish()V
    .registers 2

    .line 690
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .registers 11

    .line 742
    iput p5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mOver:I

    const/4 p5, 0x0

    .line 743
    iput-boolean p5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    .line 744
    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 745
    iput p5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    .line 746
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    .line 747
    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_54

    if-ge p1, p3, :cond_1d

    goto :goto_54

    .line 754
    :cond_1d
    iput p5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2f

    .line 758
    invoke-direct {p0, p2}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    .line 759
    invoke-direct {p0, p2}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 762
    :cond_2f
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 763
    iget p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    .line 766
    iget p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    if-ge p1, p3, :cond_48

    .line 767
    iget p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, p2, p1, p3}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 768
    iput p3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    .line 771
    :cond_48
    iget p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    if-le p1, p4, :cond_53

    .line 772
    iget p2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, p2, p1, p4}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 773
    iput p4, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    :cond_53
    return-void

    .line 750
    :cond_54
    :goto_54
    invoke-direct {p0, p1, p3, p4, p2}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method springback(III)Z
    .registers 8

    const/4 v0, 0x1

    .line 710
    iput-boolean v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    .line 712
    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v1, 0x0

    .line 713
    iput v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    .line 715
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    .line 716
    iput v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_1a

    .line 719
    invoke-direct {p0, p1, p2, v1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1f

    :cond_1a
    if-le p1, p3, :cond_1f

    .line 721
    invoke-direct {p0, p1, p3, v1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 724
    :cond_1f
    :goto_1f
    iget-boolean p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method update()Z
    .registers 9

    .line 902
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 903
    iget-wide v2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_15

    .line 907
    iget p0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    if-lez p0, :cond_14

    move v3, v4

    :cond_14
    return v3

    .line 909
    :cond_15
    iget v2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_1d

    return v3

    :cond_1d
    const-wide/16 v5, 0x0

    .line 914
    iget v3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mState:I

    const/high16 v7, 0x447a0000  # 1000.0f

    if-eqz v3, :cond_62

    if-eq v3, v4, :cond_41

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2b

    goto :goto_96

    :cond_2b
    long-to-float v0, v0

    div-float/2addr v0, v7

    .line 936
    iget v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v1

    iget v3, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v5, v3, v0

    add-float/2addr v2, v5

    iput v2, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-double v5, v1

    goto :goto_96

    :cond_41
    long-to-float v3, v0

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float v2, v3, v3

    .line 944
    iget v5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    .line 947
    invoke-direct {p0, v0, v1}, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->quintic(J)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-double v0, v0

    .line 949
    iget v6, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x40c00000  # 6.0f

    mul-float/2addr v5, v6

    neg-float v3, v3

    add-float/2addr v3, v2

    mul-float/2addr v5, v3

    iput v5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v5, v0

    goto :goto_96

    :cond_62
    long-to-float v0, v0

    .line 916
    iget v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-ge v2, v6, :cond_87

    int-to-float v3, v2

    div-float/2addr v3, v1

    add-int/lit8 v5, v2, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 923
    sget-object v1, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v1, v2

    .line 924
    aget v1, v1, v5

    sub-float/2addr v1, v2

    sub-float/2addr v6, v3

    div-float v5, v1, v6

    sub-float/2addr v0, v3

    mul-float/2addr v0, v5

    add-float v3, v2, v0

    .line 929
    :cond_87
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v1, v0

    mul-float/2addr v3, v1

    float-to-double v1, v3

    int-to-float v0, v0

    mul-float/2addr v5, v0

    .line 930
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    mul-float/2addr v5, v7

    iput v5, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v5, v1

    .line 954
    :goto_96
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v4
.end method

.method updateScroll(F)V
    .registers 4

    .line 646
    iget v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lflyme/support/v7/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method
