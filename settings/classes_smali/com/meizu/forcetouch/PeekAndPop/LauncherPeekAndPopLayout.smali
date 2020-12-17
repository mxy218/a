.class public Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;
.super Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;
.source "LauncherPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RectFEvaluator;,
        Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;
    }
.end annotation


# static fields
.field private static LISTVIEW_ROUND_RADIUS:F = 30.0f

.field private static final RIPPLE_RADIUS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final RIPPLE_RECTF:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIM_CONFIRM_TO_PEEK_DURATION:I

.field private final TAG:Ljava/lang/String;

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private final mCirclePaintAlpha:I

.field private mHorizontalOffset:I

.field private mListViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mPathInterpolator1:Landroid/view/animation/PathInterpolator;

.field private mPathInterpolator2:Landroid/view/animation/PathInterpolator;

.field private mPathInterpolator3:Landroid/view/animation/PathInterpolator;

.field private mPathInterpolator4:Landroid/view/animation/PathInterpolator;

.field private mPeekAndPopUtil:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;

.field private mPeekMenuWidth:I

.field private mResetRunnable:Ljava/lang/Runnable;

.field private mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

.field private mVerticalDistanceBetweenIconAndMenu:I

.field private mWallpaperAnimator:Landroid/animation/ObjectAnimator;

.field private mWallpaperDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 717
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$9;

    const-class v1, Landroid/graphics/RectF;

    const-string/jumbo v2, "rectF"

    invoke-direct {v0, v1, v2}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$9;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->RIPPLE_RECTF:Landroid/util/Property;

    .line 730
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$10;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "radius"

    invoke-direct {v0, v1, v2}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$10;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->RIPPLE_RADIUS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "LauncherPeekAndPopLayout"

    .line 48
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f  # 0.67f

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const v4, 0x3c23d70a  # 0.01f

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3  # 0.33f

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    .line 73
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e23d70a  # 0.16f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator3:Landroid/view/animation/PathInterpolator;

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a  # 0.15f

    const v4, 0x3ee147ae  # 0.44f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator4:Landroid/view/animation/PathInterpolator;

    const/16 v0, 0xfa

    .line 77
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->ANIM_CONFIRM_TO_PEEK_DURATION:I

    .line 408
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$4;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$4;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mResetRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;

    invoke-direct {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;-><init>()V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPeekAndPopUtil:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 87
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0x66101011

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaintAlpha:I

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    sget v1, Lcom/meizu/forcetouch/R$dimen;->launcher_distance_between_icon_and_menu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    .line 92
    sget v1, Lcom/meizu/forcetouch/R$dimen;->launcher_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mHorizontalOffset:I

    const/high16 v0, 0x43480000  # 200.0f

    .line 93
    invoke-static {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPeekMenuWidth:I

    return-void
.end method

.method static synthetic access$100()F
    .registers 1

    .line 47
    sget v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->LISTVIEW_ROUND_RADIUS:F

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator3:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Landroid/graphics/RectF;Landroid/graphics/RectF;FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
    .registers 7

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->createRippleAnim(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;FFFFFFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
    .registers 9

    .line 47
    invoke-direct/range {p0 .. p8}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->createPeekMenuAnim(FFFFFFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$602(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private animConfirmToPeek()V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz v0, :cond_10

    .line 491
    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 493
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_10
    return-void
.end method

.method private createPeekMenuAnim(FFFFFFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
    .registers 14

    .line 691
    sget-object p5, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p5, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 692
    sget-object p5, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v1, v0, [F

    aput p3, v1, v2

    aput p4, v1, p1

    invoke-static {p5, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/high16 p4, 0x3f800000  # 1.0f

    cmpl-float p5, p6, p4

    const/4 p6, 0x0

    if-nez p5, :cond_31

    .line 700
    invoke-static {p6, p6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p5

    const/high16 v1, 0x3f000000  # 0.5f

    .line 701
    invoke-static {v1, p6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p6

    .line 702
    invoke-static {p4, p4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p4

    goto :goto_40

    .line 705
    :cond_31
    invoke-static {p6, p4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p5

    const/high16 v1, 0x3e800000  # 0.25f

    .line 706
    invoke-static {v1, p6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 707
    invoke-static {p4, p6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p4

    move-object p6, v1

    .line 709
    :goto_40
    sget-object v1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/animation/Keyframe;

    aput-object p5, v4, v2

    aput-object p6, v4, p1

    aput-object p4, v4, v0

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 710
    iget-object p5, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    new-array p6, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p6, v2

    aput-object p3, p6, p1

    aput-object p4, p6, v0

    invoke-static {p5, p6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 711
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->initPivot()V

    .line 712
    invoke-virtual {p1, p7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p2, p8

    .line 713
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private createRippleAnim(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
    .registers 12

    .line 673
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->RIPPLE_RECTF:Landroid/util/Property;

    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RectFEvaluator;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RectFEvaluator;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/RectF;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-static {v0, v1, v3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 674
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->RIPPLE_RADIUS:Landroid/util/Property;

    new-array v1, v2, [F

    aput p3, v1, v4

    aput p4, v1, p1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 675
    iget-object p4, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v0, v4

    aput-object p3, v0, p1

    invoke-static {p4, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 676
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p2, p6

    .line 677
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 678
    new-instance p2, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$8;

    invoke-direct {p2, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$8;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private findDropDownPosition()Landroid/widget/FrameLayout$LayoutParams;
    .registers 9

    .line 424
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 425
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    .line 427
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-lt v5, v2, :cond_1a

    aget v3, v3, v7

    if-gt v3, v0, :cond_1a

    move v0, v4

    goto :goto_3f

    .line 429
    :cond_1a
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v5, v3, v4

    if-ge v5, v2, :cond_26

    aget v3, v3, v7

    if-ge v3, v0, :cond_26

    move v0, v7

    goto :goto_3f

    .line 431
    :cond_26
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v5, v3, v4

    if-gt v5, v2, :cond_32

    aget v3, v3, v7

    if-lt v3, v0, :cond_32

    move v0, v1

    goto :goto_3f

    .line 433
    :cond_32
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v5, v3, v4

    if-le v5, v2, :cond_3e

    aget v2, v3, v7

    if-le v2, v0, :cond_3e

    move v0, v6

    goto :goto_3f

    :cond_3e
    const/4 v0, -0x1

    .line 436
    :goto_3f
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPeekMenuWidth:I

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v0, :cond_a7

    if-eq v0, v7, :cond_8f

    if-eq v0, v1, :cond_75

    if-eq v0, v6, :cond_51

    goto/16 :goto_c8

    .line 455
    :cond_51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v1, v1, v7

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 456
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v1, v1, v4

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmWidth:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mHorizontalOffset:I

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 p0, 0x55

    .line 457
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_c8

    .line 450
    :cond_75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v3, v1, v7

    iget v5, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    sub-int/2addr v3, v5

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 451
    aget v0, v1, v4

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mHorizontalOffset:I

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 p0, 0x53

    .line 452
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_c8

    .line 445
    :cond_8f
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v1, v0, v7

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmHeight:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 446
    aget v0, v0, v4

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mHorizontalOffset:I

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 p0, 0x33

    .line 447
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_c8

    .line 440
    :cond_a7
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v0, v0, v7

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 441
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v1, v1, v4

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmWidth:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mHorizontalOffset:I

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 p0, 0x35

    .line 442
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_c8
    return-object v2
.end method

.method private initAnim()V
    .registers 12

    .line 465
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_82

    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3f666666  # 0.9f

    .line 466
    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createConfirmDrawableScaleAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 468
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStartBlurLevel:F

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mMidBlurLevel:F

    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createBlurAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 469
    iget v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawableColor:I

    iget-object v5, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createColorFilterAnim(IILandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 471
    new-instance v4, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 472
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 473
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v3, v3

    const/high16 v6, 0x3e800000  # 0.25f

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v5, v3, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 474
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v6

    invoke-virtual {v4, v3, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 476
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v6, 0x40000000  # 2.0f

    div-float v7, v3, v6

    .line 477
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v8, v3, v6

    .line 479
    iget-object v9, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    const/16 v10, 0x64

    move-object v3, p0

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->createRippleAnim(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 481
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 482
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_82
    return-void
.end method

.method private initPivot()V
    .registers 9

    .line 535
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 536
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    .line 538
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-lt v5, v2, :cond_1a

    aget v3, v3, v7

    if-gt v3, v0, :cond_1a

    move v0, v4

    goto :goto_3f

    .line 540
    :cond_1a
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v5, v3, v4

    if-ge v5, v2, :cond_26

    aget v3, v3, v7

    if-ge v3, v0, :cond_26

    move v0, v7

    goto :goto_3f

    .line 542
    :cond_26
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v5, v3, v4

    if-gt v5, v2, :cond_32

    aget v3, v3, v7

    if-lt v3, v0, :cond_32

    move v0, v1

    goto :goto_3f

    .line 544
    :cond_32
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    aget v4, v3, v4

    if-le v4, v2, :cond_3e

    aget v2, v3, v7

    if-le v2, v0, :cond_3e

    move v0, v6

    goto :goto_3f

    :cond_3e
    const/4 v0, -0x1

    :goto_3f
    if-eqz v0, :cond_98

    const-wide v2, 0x3fb999999999999aL  # 0.1

    if-eq v0, v7, :cond_81

    if-eq v0, v1, :cond_66

    if-eq v0, v6, :cond_4d

    goto :goto_ac

    .line 562
    :cond_4d
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPivotX(F)V

    .line 563
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    mul-int/2addr p0, v6

    add-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setPivotY(F)V

    goto :goto_ac

    .line 558
    :cond_66
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPivotX(F)V

    .line 559
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    mul-int/2addr p0, v6

    add-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setPivotY(F)V

    goto :goto_ac

    .line 554
    :cond_81
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPivotX(F)V

    .line 555
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    neg-int p0, p0

    mul-int/2addr p0, v6

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setPivotY(F)V

    goto :goto_ac

    .line 550
    :cond_98
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPivotX(F)V

    .line 551
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mVerticalDistanceBetweenIconAndMenu:I

    neg-int p0, p0

    mul-int/2addr p0, v6

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setPivotY(F)V

    :goto_ac
    return-void
.end method


# virtual methods
.method public animToNormal()V
    .registers 16

    .line 571
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz v0, :cond_9e

    iget-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    if-nez v1, :cond_9e

    const/4 v1, 0x1

    .line 572
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    const/4 v2, 0x0

    .line 573
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    const/16 v0, 0xc8

    .line 575
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator3:Landroid/view/animation/PathInterpolator;

    .line 576
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1b

    const/16 v0, 0x190

    .line 579
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    :cond_1b
    move v12, v0

    move-object v11, v3

    .line 581
    new-instance v6, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 583
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v3, 0x2

    div-int/2addr v0, v3

    int-to-float v8, v0

    .line 586
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {v0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {v0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRadius()F

    move-result v7

    move-object v4, p0

    move-object v9, v11

    move v10, v12

    invoke-direct/range {v4 .. v10}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->createRippleAnim(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 589
    iget v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEndBlurLevel:F

    iget v5, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStartBlurLevel:F

    invoke-virtual {p0, v4, v5, v11, v12}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createBlurAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 591
    iget v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawableColor:I

    invoke-virtual {p0, v4, v2, v11, v12}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createColorFilterAnim(IILandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v14

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3e4ccccd  # 0.2f

    const/high16 v7, 0x3f800000  # 1.0f

    const v8, 0x3e4ccccd  # 0.2f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    move-object v4, p0

    .line 594
    invoke-direct/range {v4 .. v12}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->createPeekMenuAnim(FFFFFFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 596
    iget-object v5, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    new-array v6, v3, [I

    iget v7, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaintAlpha:I

    aput v7, v6, v2

    aput v2, v6, v1

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 597
    iget-object v6, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mPathInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x5

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v13, v7, v2

    aput-object v0, v7, v1

    aput-object v4, v7, v3

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v14, v7, v0

    .line 600
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 601
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$6;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$6;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz p0, :cond_9b

    .line 613
    invoke-virtual {p0, v2}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setStatic(Z)V

    .line 615
    :cond_9b
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_9e
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 201
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    if-eqz v0, :cond_22

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 211
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_22
    return-void
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    .line 225
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7e

    .line 226
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_68

    .line 228
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz v0, :cond_37

    instance-of v0, p2, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz v0, :cond_37

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 231
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    .line 232
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/drawable/GLDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    :cond_1d
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {v0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {v1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRadius()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {v2}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRadius()F

    move-result v2

    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 239
    :cond_37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 242
    iget p3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-nez p3, :cond_67

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    iget-object p3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_4d

    iget-object p3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz p3, :cond_4d

    .line 246
    invoke-virtual {p3, p1}, Lcom/meizu/common/renderer/drawable/GLDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    :cond_4d
    iget-object p3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {p3}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    iget-object p4, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {p4}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRadius()F

    move-result p4

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {v0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRadius()F

    move-result v0

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_67
    return p2

    .line 255
    :cond_68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 258
    iget-object p3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz p3, :cond_7a

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7a

    .line 259
    invoke-virtual {p3, p1}, Lcom/meizu/common/renderer/drawable/GLDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    :cond_7a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 265
    :cond_7e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public getForceTouchState()V
    .registers 3

    .line 102
    invoke-super {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->getForceTouchState()V

    .line 104
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    const v1, 0x3d4ccccd  # 0.05f

    add-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    const v1, 0x3dcccccd  # 0.1f

    sub-float/2addr v0, v1

    .line 105
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onKeyBack(Landroid/view/KeyEvent;)V
    .registers 2

    .line 420
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->animToNormal()V

    return-void
.end method

.method protected onTouchCancel(Landroid/view/MotionEvent;)V
    .registers 2

    .line 404
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchCancel(Landroid/view/MotionEvent;)V

    .line 405
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->onTouchUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherPeekAndPopLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    if-eqz v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    return v1

    .line 288
    :cond_3a
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .registers 5

    .line 294
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 295
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0, p1, v1}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->onForwardedEvent(Landroid/view/MotionEvent;Z)Z

    .line 297
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTouchMove mState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCurPressure = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mPeekPressure = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherPeekAndPopLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-eqz p1, :cond_3e

    goto/16 :goto_c3

    .line 300
    :cond_3e
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInitPressure:F

    sub-float/2addr p1, v0

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_4e

    move p1, v0

    .line 304
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->seekAnimations(F)V

    .line 305
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_c3

    .line 306
    invoke-static {}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->boostPerformance()V

    .line 307
    invoke-virtual {p0, v0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->seekAnimations(F)V

    .line 308
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-nez p1, :cond_6f

    .line 309
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    goto :goto_72

    .line 311
    :cond_6f
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 313
    :goto_72
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    .line 314
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mAdapter:Landroid/widget/ListAdapter;

    if-nez p1, :cond_87

    .line 315
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->animToNormal()V

    .line 316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHapticFeedbackEnabled()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 317
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_D:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto :goto_c3

    .line 321
    :cond_87
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPopPeekMenu:Z

    .line 322
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->findDropDownPosition()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mListViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_a9

    .line 331
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$1;

    invoke-direct {p1, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$1;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mListViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 339
    :cond_a9
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mListViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 340
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClipToOutline(Z)V

    .line 341
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->animConfirmToPeek()V

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHapticFeedbackEnabled()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 344
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_A:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_c3
    :goto_c3
    return-void
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchUp mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherPeekAndPopLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5c

    if-eq v0, v1, :cond_50

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    goto :goto_85

    .line 385
    :cond_24
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0, p1, v1}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->onForwardedEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    .line 386
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHasForceTouched:Z

    if-nez v0, :cond_31

    .line 387
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHasForceTouched:Z

    goto :goto_85

    .line 389
    :cond_31
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->animToNormal()V

    if-nez p1, :cond_85

    .line 392
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 393
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "close_peek"

    const-string v1, "exit_peek"

    .line 394
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "force_touch_peek"

    .line 395
    invoke-virtual {p0, v0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->buildUsageStats(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_85

    .line 380
    :cond_50
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_85

    .line 381
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_85

    .line 360
    :cond_5c
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInitPressure:F

    sub-float/2addr p1, v0

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x0

    aput p1, v0, v1

    .line 361
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 362
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$2;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$2;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$3;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$3;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_85
    :goto_85
    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 271
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " requestDisallowInterceptTouchEvent mState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " caller = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherPeekAndPopLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-nez p1, :cond_37

    .line 274
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->reset()V

    .line 275
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    if-eqz p0, :cond_37

    .line 276
    invoke-interface {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;->cancel()V

    :cond_37
    return-void
.end method

.method protected reset()V
    .registers 5

    .line 621
    invoke-super {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->reset()V

    const-string v0, "LauncherPeekAndPopLayout"

    const-string v1, "**************reset ************** "

    .line 622
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 623
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 625
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPopPeekMenu:Z

    .line 626
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHasForceTouched:Z

    .line 627
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 628
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 629
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 630
    iput-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    .line 632
    :cond_20
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2b

    .line 633
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    const/4 v1, 0x0

    .line 635
    invoke-virtual {p0, v1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->seekAnimations(F)V

    .line 636
    iput-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    .line 637
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mCirclePaintAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 638
    iput-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 641
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 645
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_85

    if-eqz v1, :cond_85

    .line 646
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 647
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 649
    :cond_5b
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_96

    const-string v2, "Alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    .line 650
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 652
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 662
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_8a

    .line 664
    :cond_85
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 665
    iput-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 668
    :goto_8a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mOriginRequestedOrientation:I

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :array_96
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public startPeekAndPop(Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z
    .registers 7

    .line 110
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f7

    if-nez p1, :cond_9

    goto/16 :goto_f7

    .line 114
    :cond_9
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    if-nez v0, :cond_f7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isMoveWin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_f7

    .line 118
    :cond_19
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    if-eq p1, v0, :cond_1f

    .line 119
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    .line 121
    :cond_1f
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    const-string v2, "LauncherPeekAndPopLayout"

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "wallpaper animation is running ....."

    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 130
    :cond_36
    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmRect:Landroid/graphics/Rect;

    .line 131
    iget-object v3, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBitmap:Landroid/graphics/Bitmap;

    .line 132
    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekMenuAdapter:Landroid/widget/ListAdapter;

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mAdapter:Landroid/widget/ListAdapter;

    const/4 p1, -0x1

    if-eqz v3, :cond_f3

    if-eqz v0, :cond_f3

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f3

    iget v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-ne v4, p1, :cond_f3

    .line 134
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mChild:Landroid/view/View;

    .line 135
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    .line 136
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    aput v3, p1, v1

    .line 138
    iget v3, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    aput v3, p1, v4

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmWidth:I

    .line 140
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmHeight:I

    .line 142
    iput-boolean v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 144
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$1;)V

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mRippleProperty:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    .line 146
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInitPressure:F

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getCurWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p1

    if-eqz p1, :cond_c2

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {p1, v3}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->screenshotLiveWallpaper(II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 156
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_c2

    .line 158
    :cond_bb
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const-string p1, "can not get live wallpaper!!!!!!"

    .line 159
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_c2
    :goto_c2
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_ca

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_cd

    .line 171
    :cond_ca
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 175
    :goto_cd
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->initGLBlurDrawable()V

    .line 177
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->initAnim()V

    .line 179
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInitPressure:F

    sub-float/2addr p1, v0

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    sub-float/2addr v3, v0

    div-float/2addr p1, v3

    .line 180
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->seekAnimations(F)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mOriginRequestedOrientation:I

    const-string p1, "*************  startPeekAndPop **************"

    .line 182
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    return v4

    .line 191
    :cond_f3
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 192
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    :cond_f7
    :goto_f7
    return v1
.end method
