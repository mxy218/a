.class public Lcom/meizu/common/widget/ApplyingAnimationView;
.super Landroid/view/View;
.source "ApplyingAnimationView.java"


# instance fields
.field private final alphaProperty:[Ljava/lang/String;

.field private animator:Landroid/animation/AnimatorSet;

.field private bAlpha:I

.field private bDraw:Z

.field private baseX:F

.field private baseY:F

.field private cbPosition:F

.field private cbRadius:F

.field private cgPosition:F

.field private cgRadius:F

.field private coPosition:F

.field private coRadius:F

.field private crPosition:F

.field private crRadius:F

.field private gAlpha:I

.field private gDraw:Z

.field private halfMaxRadius:F

.field private mAnimScale:F

.field private mBluePaint:Landroid/graphics/Paint;

.field private mGreenPaint:Landroid/graphics/Paint;

.field private mIsAnimRun:Z

.field private mOrangePaint:Landroid/graphics/Paint;

.field private mRedPaint:Landroid/graphics/Paint;

.field private mStopFromUser:Z

.field private maxRadius:F

.field private oAlpha:I

.field private oDraw:Z

.field private po1:F

.field private po2:F

.field private po3:F

.field private po4:F

.field private final positionProperty:[Ljava/lang/String;

.field private rAlpha:I

.field private rDraw:Z

.field private final radiusProperty:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xff

    .line 88
    iput p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    .line 89
    iput p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    .line 90
    iput p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    .line 91
    iput p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    const-string p3, "crPosition"

    const-string v0, "cbPosition"

    const-string v1, "cgPosition"

    const-string v2, "coPosition"

    .line 110
    filled-new-array {p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    const-string/jumbo p3, "rAlpha"

    const-string v0, "bAlpha"

    const-string v1, "gAlpha"

    const-string/jumbo v2, "oAlpha"

    .line 111
    filled-new-array {p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    const-string p3, "crRadius"

    const-string v0, "cbRadius"

    const-string v1, "cgRadius"

    const-string v2, "coRadius"

    .line 112
    filled-new-array {p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    const/4 p3, 0x0

    .line 114
    iput-boolean p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 115
    iput-boolean p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 116
    iput-boolean p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 117
    iput-boolean p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 126
    iput-boolean p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    .line 127
    iput-boolean p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    const/high16 p3, 0x3f800000  # 1.0f

    .line 129
    iput p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    .line 141
    sget-object p3, Lcom/meizu/common/R$styleable;->ApplyingAnimationView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 142
    sget p3, Lcom/meizu/common/R$styleable;->ApplyingAnimationView_mcApplyingAnimationScale:I

    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    .line 143
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ApplyingAnimationView;)Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z
    .registers 2

    .line 81
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z
    .registers 2

    .line 81
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    return p1
.end method

.method private createAlphaAnimator(I)Landroid/animation/Animator;
    .registers 15

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_a0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 317
    aget-object v2, v1, v4

    const-wide/16 v5, 0x2d0

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v5, v3, [I

    fill-array-data v5, :array_a8

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 319
    aget-object v2, v1, v5

    const-wide/16 v6, 0x2c0

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v8, v0, [I

    fill-array-data v8, :array_b0

    invoke-static {p0, v2, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    .line 321
    aget-object v2, v1, v3

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/high16 v9, 0x3f800000  # 1.0f

    const v10, 0x3ecccccd  # 0.4f

    const/4 v11, 0x0

    const v12, 0x3ea8f5c3  # 0.33f

    invoke-direct {v8, v12, v11, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 322
    aget-object v2, v1, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v6, 0x3

    new-array v7, v6, [I

    fill-array-data v7, :array_bc

    invoke-static {p0, v2, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, v6

    .line 324
    aget-object p0, v1, v6

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v12, v11, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    aget-object p0, v1, v6

    const-wide/16 v7, 0x2b0

    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v0, [Landroid/animation/Animator;

    .line 327
    rem-int/lit8 v7, p1, 0x4

    aget-object v7, v1, v7

    aput-object v7, v2, v4

    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v2, v5

    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v2, v3

    add-int/2addr p1, v6

    rem-int/2addr p1, v0

    aget-object p1, v1, p1

    aput-object p1, v2, v6

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object p0

    nop

    :array_a0
    .array-data 4
        0xff
        0xff
    .end array-data

    :array_a8
    .array-data 4
        0xff
        0xff
    .end array-data

    :array_b0
    .array-data 4
        0xff
        0x0
        0x0
        0x0
    .end array-data

    :array_bc
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data
.end method

.method private createCommonPaint()Landroid/graphics/Paint;
    .registers 2

    .line 218
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object p0
.end method

.method private createPositionAnimator(I)Landroid/animation/Animator;
    .registers 15

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/animation/ObjectAnimator;

    .line 276
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v7, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    const/4 v8, 0x1

    aput v7, v4, v8

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 277
    aget-object v2, v1, v6

    const-wide/16 v9, 0x2c0

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    aget-object v2, v1, v6

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e570a3d  # 0.21f

    const v11, 0x3eb33333  # 0.35f

    const v12, 0x3ef126e9  # 0.471f

    invoke-direct {v4, v7, v5, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v4, v3, [F

    iget v7, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    aput v7, v4, v6

    iget v7, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    aput v7, v4, v8

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 280
    aget-object v2, v1, v8

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    aget-object v2, v1, v8

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3f800000  # 1.0f

    const v9, 0x3e75c28f  # 0.24f

    const v10, 0x3eae978d  # 0.341f

    const v11, 0x3ed1eb85  # 0.41f

    invoke-direct {v4, v9, v10, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v4, v3, [F

    iget v9, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    aput v9, v4, v6

    iget v9, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    aput v9, v4, v8

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    .line 283
    aget-object v2, v1, v3

    const-wide/16 v9, 0x2a0

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    aget-object v2, v1, v3

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e851eb8  # 0.26f

    const v10, 0x3f5eb852  # 0.87f

    const v11, 0x3f420c4a  # 0.758f

    invoke-direct {v4, v9, v5, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v4, v3, [F

    iget v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    aput v5, v4, v6

    iget v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    aput v5, v4, v8

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 286
    aget-object p0, v1, v2

    const-wide/16 v4, 0x2e0

    invoke-virtual {p0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    aget-object p0, v1, v2

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e3851ec  # 0.18f

    const v9, 0x3ede353f  # 0.434f

    const v10, 0x3f170a3d  # 0.59f

    invoke-direct {v4, v5, v9, v10, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v0, [Landroid/animation/Animator;

    .line 289
    rem-int/lit8 v5, p1, 0x4

    aget-object v5, v1, v5

    aput-object v5, v4, v6

    add-int/lit8 v5, p1, 0x1

    rem-int/2addr v5, v0

    aget-object v5, v1, v5

    aput-object v5, v4, v8

    add-int/lit8 v5, p1, 0x2

    rem-int/2addr v5, v0

    aget-object v5, v1, v5

    aput-object v5, v4, v3

    add-int/2addr p1, v2

    rem-int/2addr p1, v0

    aget-object p1, v1, p1

    aput-object p1, v4, v2

    invoke-virtual {p0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object p0
.end method

.method private createRadiusAnimator(I)Landroid/animation/Animator;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/animation/ObjectAnimator;

    .line 296
    iget-object v3, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget v6, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    const/4 v7, 0x0

    aput v6, v5, v7

    iget v6, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    const/4 v8, 0x1

    aput v6, v5, v8

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    .line 297
    aget-object v3, v2, v7

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v9, 0x3e800000  # 0.25f

    const v10, 0x3e75c28f  # 0.24f

    const v11, 0x3e560419  # 0.209f

    invoke-direct {v5, v10, v11, v9, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    aget-object v3, v2, v7

    const-wide/16 v10, 0x2d0

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v3, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v5, v4, [F

    iget v10, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    aput v10, v5, v7

    iget v10, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v10, v5, v8

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 300
    aget-object v3, v2, v8

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/4 v10, 0x0

    const v11, 0x3e947ae1  # 0.29f

    const v12, 0x3ea3d70a  # 0.32f

    const v13, 0x3f218937  # 0.631f

    invoke-direct {v5, v11, v10, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    aget-object v3, v2, v8

    const-wide/16 v11, 0x2c0

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    iget-object v3, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v5, v4, [F

    iget v13, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v13, v5, v7

    iget v13, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    mul-float/2addr v13, v9

    aput v13, v5, v8

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    .line 303
    aget-object v3, v2, v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v13, 0x3e4ccccd  # 0.2f

    const v14, 0x3eac8b44  # 0.337f

    const v15, 0x3e2e147b  # 0.17f

    invoke-direct {v5, v13, v14, v15, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 304
    aget-object v3, v2, v4

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 305
    iget-object v3, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v5, v4, [F

    iget v6, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    mul-float/2addr v6, v9

    aput v6, v5, v7

    iget v6, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v6, v5, v8

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 306
    aget-object v0, v2, v3

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e428f5c  # 0.19f

    const v9, 0x3ebd70a4  # 0.37f

    const v11, 0x3e9eb852  # 0.31f

    invoke-direct {v5, v6, v10, v9, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    aget-object v0, v2, v3

    const-wide/16 v5, 0x2b0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v1, [Landroid/animation/Animator;

    .line 309
    rem-int/lit8 v6, p1, 0x4

    aget-object v6, v2, v6

    aput-object v6, v5, v7

    add-int/lit8 v6, p1, 0x1

    rem-int/2addr v6, v1

    aget-object v6, v2, v6

    aput-object v6, v5, v8

    add-int/lit8 v6, p1, 0x2

    rem-int/2addr v6, v1

    aget-object v6, v2, v6

    aput-object v6, v5, v4

    add-int/lit8 v4, p1, 0x3

    rem-int/2addr v4, v1

    aget-object v1, v2, v4

    aput-object v1, v5, v3

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 150
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->initData(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    .line 153
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    const v0, -0x14b5b6

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    .line 156
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    const v0, -0xff6624

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    .line 159
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    const v0, 0x1af8b

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    .line 162
    iget-object p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    const p1, -0x977cd

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .registers 4

    .line 166
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->getDensity(Landroid/content/Context;)F

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x40c00000  # 6.0f

    mul-float/2addr v0, p1

    .line 167
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    .line 168
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    const v0, 0x4144cccd  # 12.3f

    mul-float/2addr v0, p1

    .line 170
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    const/high16 v0, 0x41c00000  # 24.0f

    mul-float/2addr v0, p1

    .line 171
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    const/high16 v0, 0x41300000  # 11.0f

    mul-float/2addr p1, v0

    .line 172
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    return-void
.end method

.method private setBAlpha(I)V
    .registers 2

    int-to-float p1, p1

    .line 338
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    .line 339
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setCbPosition(F)V
    .registers 2

    .line 373
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    return-void
.end method

.method private setCbRadius(F)V
    .registers 2

    .line 357
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    return-void
.end method

.method private setCgPosition(F)V
    .registers 2

    .line 377
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    return-void
.end method

.method private setCgRadius(F)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    return-void
.end method

.method private setCoPosition(F)V
    .registers 2

    .line 381
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCoRadius(F)V
    .registers 2

    .line 365
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    return-void
.end method

.method private setCrPosition(F)V
    .registers 2

    .line 369
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    return-void
.end method

.method private setCrRadius(F)V
    .registers 2

    .line 353
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    return-void
.end method

.method private setGAlpha(I)V
    .registers 2

    int-to-float p1, p1

    .line 343
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    .line 344
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setOAlpha(I)V
    .registers 2

    int-to-float p1, p1

    .line 348
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    .line 349
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setRAlpha(I)V
    .registers 2

    int-to-float p1, p1

    .line 333
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    .line 334
    iget-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private startAnimator()V
    .registers 13

    .line 226
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x1

    .line 230
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x2

    .line 231
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x3

    .line 232
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v7

    .line 233
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x4

    new-array v10, v9, [Landroid/animation/Animator;

    aput-object v1, v10, v0

    aput-object v3, v10, v2

    aput-object v5, v10, v4

    aput-object v7, v10, v6

    .line 234
    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    .line 237
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .line 238
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v5

    .line 239
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v7

    .line 240
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v9, [Landroid/animation/Animator;

    aput-object v1, v11, v0

    aput-object v3, v11, v2

    aput-object v5, v11, v4

    aput-object v7, v11, v6

    .line 241
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    .line 244
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .line 245
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v5

    .line 246
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v7

    .line 247
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v0

    aput-object v3, v9, v2

    aput-object v5, v9, v4

    aput-object v7, v9, v6

    .line 248
    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    .line 251
    iget-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v8, v3, v0

    aput-object v10, v3, v2

    aput-object v11, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 253
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/meizu/common/widget/ApplyingAnimationView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/ApplyingAnimationView$1;-><init>(Lcom/meizu/common/widget/ApplyingAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    .line 269
    iget-object p0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private stopRunAnimator()V
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_10

    .line 424
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    :cond_10
    return-void
.end method


# virtual methods
.method public getDensity(Landroid/content/Context;)F
    .registers 2

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 452
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 182
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_1a

    .line 183
    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 186
    :cond_1a
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_33

    .line 187
    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 190
    :cond_33
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4c

    .line 191
    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 194
    :cond_4c
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_65

    .line 195
    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 198
    :cond_65
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    if-nez v0, :cond_7a

    .line 199
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 201
    :cond_7a
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    if-nez v0, :cond_8f

    .line 202
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    :cond_8f
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    if-nez v0, :cond_a4

    .line 205
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    :cond_a4
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    if-nez v0, :cond_b9

    .line 208
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b9
    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 211
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 212
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 213
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 457
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 458
    const-class p0, Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 435
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    const/high16 v2, 0x40800000  # 4.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 436
    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    const/high16 v3, 0x40000000  # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 439
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 441
    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 442
    invoke-static {v1, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 441
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 387
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_9

    .line 389
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    goto :goto_15

    .line 390
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 391
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    :cond_15
    :goto_15
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 398
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_9

    .line 400
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    goto :goto_15

    .line 401
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 402
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    const/4 p1, 0x0

    .line 403
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    :cond_15
    :goto_15
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 413
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_c

    .line 415
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    const/4 p1, 0x0

    .line 416
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    goto :goto_16

    :cond_c
    const/4 v0, 0x4

    if-eq p1, v0, :cond_13

    const/16 v0, 0x8

    if-ne p1, v0, :cond_16

    .line 418
    :cond_13
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    :cond_16
    :goto_16
    return-void
.end method
