.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;
    }
.end annotation


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBottomPadding:I

.field private mCallbacks:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;

.field private mCameraViewAttached:Z

.field private mCenterIconSpace:Landroid/view/View;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mEndPadding:I

.field private mHeadsUpVisible:Z

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field mIsFullyOpenedPanel:Z

.field private mLastOrientation:I

.field private mMinFraction:F

.field private mPaddingAnimator:Landroid/animation/ValueAnimator;

.field private mPanelFractionForShadeMode:F

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrollTriggered:Z

.field private mStartPadding:I

.field private mStatusBarContentView:Landroid/widget/LinearLayout;

.field private mTickerView:Landroid/view/View;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 102
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 653
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraViewAttached:Z

    .line 654
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 109
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 111
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->actInMzNightMode(I)V

    .line 112
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)F
    .registers 1

    .line 70
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFractionForShadeMode:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/widget/LinearLayout;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/View;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerView:Landroid/view/View;

    return-object p0
.end method

.method public static cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 449
    :cond_4
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 450
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 452
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x30

    .line 453
    invoke-static {p0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 455
    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-gtz p0, :cond_2b

    .line 456
    new-instance p0, Landroid/util/Pair;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 458
    :cond_2b
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-lt v3, v4, :cond_44

    .line 459
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 468
    :cond_44
    div-int/lit8 v4, v4, 0x2

    if-eqz p0, :cond_77

    if-eqz v3, :cond_77

    if-ge p0, v4, :cond_5c

    if-ge v3, v4, :cond_5c

    .line 471
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 472
    :cond_5c
    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-le p0, v4, :cond_77

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-le p0, v4, :cond_77

    .line 473
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_77
    return-object v0
.end method

.method private doScrollBack()V
    .registers 5

    .line 531
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private mzUpdateSafeInsets(Landroid/util/Pair;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-nez v2, :cond_a

    return-void

    .line 557
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    .line 558
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 559
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v4

    .line 560
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 562
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_37

    .line 563
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->stat_sys_clock_and_percent_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3f

    .line 564
    :cond_37
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_3f
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartPadding:I

    .line 566
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    if-ne v6, v1, :cond_47

    move v6, v1

    goto :goto_48

    :cond_47
    move v6, v0

    :goto_48
    if-eqz v6, :cond_69

    .line 567
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_5e

    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_69

    .line 568
    :cond_5e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->status_bar_round_padding_top_embedded_camera:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_73

    .line 569
    :cond_69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->status_bar_round_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_73
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTopPadding:I

    .line 571
    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_8a

    .line 572
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v6, Lcom/android/systemui/R$dimen;->stat_sys_clock_and_percent_padding:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_92

    .line 573
    :cond_8a
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_92
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndPadding:I

    .line 575
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraViewAttached:Z

    if-eqz p1, :cond_9e

    .line 576
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndPadding:I

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndPadding:I

    .line 579
    :cond_9e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v6, Lcom/android/systemui/R$dimen;->status_bar_round_padding_bottom:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBottomPadding:I

    .line 581
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    .line 582
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v6

    .line 583
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartPadding:I

    add-int/2addr v7, p1

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartPadding:I

    .line 584
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndPadding:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndPadding:I

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateContentLp()V

    .line 596
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x2

    new-array v6, p1, [I

    aput v2, v6, v0

    .line 597
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartPadding:I

    aput v2, v6, v1

    const-string/jumbo v2, "start"

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v6, p1, [I

    aput v3, v6, v0

    .line 598
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTopPadding:I

    aput v3, v6, v1

    const-string/jumbo v3, "top"

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, p1, [I

    aput v4, v6, v0

    .line 599
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndPadding:I

    aput v4, v6, v1

    const-string v4, "end"

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v6, p1, [I

    aput v5, v6, v0

    .line 600
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBottomPadding:I

    aput v5, v6, v1

    const-string v5, "bottom"

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 601
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v0

    aput-object v3, v7, v1

    aput-object v4, v7, p1

    const/4 p1, 0x3

    aput-object v5, v7, p1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 602
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x10a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 603
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 614
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private scrollBack(Landroid/view/MotionEvent;)V
    .registers 11

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    int-to-double v3, p1

    const-wide/high16 v5, 0x3fd0000000000000L  # 0.25

    .line 511
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-double v7, p1

    mul-double/2addr v7, v5

    cmpl-double p1, v3, v7

    if-lez p1, :cond_28

    const-wide/high16 v5, 0x3fe8000000000000L  # 0.75

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-double v7, p1

    mul-double/2addr v7, v5

    cmpg-double p1, v3, v7

    if-gez p1, :cond_28

    move p1, v2

    goto :goto_29

    :cond_28
    move p1, v1

    :goto_29
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    .line 516
    :cond_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result p1

    const/high16 v3, 0x42c80000  # 100.0f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_39

    .line 517
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    :cond_39
    if-eq v0, v2, :cond_3e

    const/4 p1, 0x3

    if-ne v0, p1, :cond_45

    .line 523
    :cond_3e
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    if-eqz p1, :cond_45

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->doScrollBack()V

    :cond_45
    return-void
.end method

.method private updateContentLp()V
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 633
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 634
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 635
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 638
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 639
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 640
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 641
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    return-void
.end method

.method private updateCutoutLocation(Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_51

    if-eqz p1, :cond_1a

    goto :goto_51

    .line 398
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 403
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v2, 0x30

    invoke-static {v1, v2, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 405
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 406
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 407
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 408
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void

    .line 393
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateLayoutForCutout()V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 376
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 375
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v0

    .line 377
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateCutoutLocation(Landroid/util/Pair;)V

    .line 378
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSafeInsets(Landroid/util/Pair;)V

    .line 381
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mzUpdateSafeInsets(Landroid/util/Pair;)V

    return-void
.end method

.method private updateOrientationAndCutout(I)Z
    .registers 5

    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_d

    .line 196
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    if-eq v1, p1, :cond_d

    .line 198
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    move p1, v0

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 202
    :goto_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    move p1, v0

    :cond_29
    return p1
.end method

.method private updateSafeInsets(Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_38

    if-nez p1, :cond_1b

    goto :goto_38

    .line 428
    :cond_1b
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 429
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    .line 434
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p1

    .line 435
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p0

    .line 436
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gt v1, p1, :cond_31

    .line 437
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 439
    :cond_31
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-gt p1, p0, :cond_37

    .line 440
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_37
    return-void

    .line 422
    :cond_38
    :goto_38
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 423
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private updateScrimFraction()V
    .registers 5

    .line 344
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 345
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_12

    sub-float/2addr v0, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/4 v1, 0x0

    .line 346
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 349
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    return-void
.end method


# virtual methods
.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object p0
.end method

.method public mzUpdateLayoutForCutout(Z)V
    .registers 2

    .line 618
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraViewAttached:Z

    .line 619
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 181
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 185
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 146
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "statusbar_battery_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCameraViewAttached:Z

    .line 148
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->registerThemeChangedListener(Landroid/view/ViewGroup;)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    :cond_37
    return-void
.end method

.method public onClosingFinished()V
    .registers 1

    .line 305
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 170
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 164
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->unRegisterThemeChangedListener(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onExpandingFinished()V
    .registers 1

    .line 317
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 318
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 132
    sget v0, Lcom/android/systemui/R$id;->cutout_space_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 133
    sget v0, Lcom/android/systemui/R$id;->centered_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    .line 136
    sget v0, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentView:Landroid/widget/LinearLayout;

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public onPanelCollapsed()V
    .registers 2

    .line 241
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPanelCollapsed()V

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->closeBlur()V

    .line 248
    const-class p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    .line 249
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 250
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->capturePicture()V

    .line 252
    :cond_26
    const-class p0, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    .line 253
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->isSwitching()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 254
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->notifyPanelCollapse()V

    .line 256
    :cond_37
    const-class p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .line 257
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isReadying()Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    .line 258
    invoke-interface {p0, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->running(Z)V

    :cond_49
    return-void
.end method

.method public onPanelFullyOpened()V
    .registers 3

    .line 269
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    if-nez v0, :cond_e

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_e
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelPeeked()V
    .registers 3

    .line 232
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->openBlur()V

    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 221
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 224
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->scrollBack(Landroid/view/MotionEvent;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 292
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public onTrackingStarted()V
    .registers 2

    .line 297
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .registers 2

    .line 311
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 312
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    return-void
.end method

.method public panelEnabled()Z
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .registers 3

    .line 336
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_11

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_22

    .line 338
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onStatusBarPanelStateChanged()V

    :cond_22
    return-void
.end method

.method public panelExpansionChangedInKeyguardShade(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .registers 4

    .line 549
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChangedInKeyguardShade(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    .line 550
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFractionForShadeMode:F

    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .registers 3

    .line 328
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 329
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    :cond_b
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallbacks:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;

    .line 628
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallbacks:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;->statusBarHeightChanged(Z)V

    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setHeadsUpVisible(Z)V
    .registers 2

    .line 482
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHeadsUpVisible:Z

    .line 483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public setTickerView(Landroid/view/View;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerView:Landroid/view/View;

    return-void
.end method

.method protected shouldPanelBeVisible()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHeadsUpVisible:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->shouldPanelBeVisible()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public updateResources()V
    .registers 7

    .line 353
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->display_cutout_margin_consumption:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 355
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 361
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/camera/CameraStateController;->getBlackCircleWindowHeight(Landroid/content/Context;)I

    move-result v2

    .line 363
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3d

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-nez v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v3, v4

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v3, v5

    :goto_3e
    if-eqz v3, :cond_45

    .line 366
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_46

    :cond_45
    move v2, v1

    .line 368
    :goto_46
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 369
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallbacks:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;

    if-eqz p0, :cond_55

    if-eq v1, v2, :cond_52

    move v4, v5

    :cond_52
    invoke-interface {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;->statusBarHeightChanged(Z)V

    :cond_55
    return-void
.end method
