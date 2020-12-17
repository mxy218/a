.class Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIndicatorScrollStretchMaxWidth:I

.field private mSelectedIndicatorColor:I

.field private mSelectedIndicatorExceedContent:I

.field private mSelectedIndicatorHeight:I

.field private mSelectedIndicatorPaddingBottom:I

.field private mSelectedIndicatorPaddingBottomAtToolBar:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedIndicatorWidth:I

.field private mSelectedIndicatorWidthMain:I

.field private mSelectedIndicatorWidthSecond:I

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 1008
    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    .line 1009
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 985
    iput v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    .line 988
    iput v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    .line 989
    iput v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    const/4 v0, 0x0

    .line 1010
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 1011
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1012
    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar:[I

    invoke-static {p2, p3, v1, p4, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 1015
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorColor:I

    .line 1016
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lflyme/support/v7/appcompat/R$color;->mz_action_bar_tab_indicator_default_color:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 1015
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorColor:I

    .line 1017
    iget-object p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    iget p4, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1019
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorHeight:I

    .line 1020
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_indicator_height:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 1019
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1021
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorDrawable:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1024
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorWidth:I

    .line 1025
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_indicator_width:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 1024
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidthMain:I

    .line 1027
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorWidthSecond:I

    .line 1028
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_indicator_width_second:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 1027
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidthSecond:I

    .line 1030
    invoke-static {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$300(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 1031
    iget p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidthMain:I

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidth:I

    goto :goto_83

    .line 1033
    :cond_7f
    iget p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidthSecond:I

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidth:I

    .line 1036
    :goto_83
    sget p1, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorExceedContent:I

    .line 1037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_view_indicator_exceed_content:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 1036
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorExceedContent:I

    .line 1039
    sget p1, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorPaddingBottom:I

    .line 1040
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_indicator_padding_bottom:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 1039
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaddingBottom:I

    .line 1042
    sget p1, Lflyme/support/v7/appcompat/R$styleable;->MzActionBarTabBar_mzTabBarIndicatorPaddingBottomAtToolBar:I

    .line 1043
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lflyme/support/v7/appcompat/R$dimen;->mz_tool_bar_tab_indicator_padding_bottom:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 1042
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaddingBottomAtToolBar:I

    .line 1044
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 1045
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_bar_tab_indicator_edge_max_move_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorScrollStretchMaxWidth:I

    .line 1047
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 1049
    new-instance p1, Lflyme/support/v7/drawable/EmptyDivider;

    invoke-direct {p1}, Lflyme/support/v7/drawable/EmptyDivider;-><init>()V

    const/16 p2, 0x21

    .line 1050
    invoke-virtual {p1, p2}, Lflyme/support/v7/drawable/EmptyDivider;->setDividerWidth(I)V

    .line 1051
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1400(Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;FIIII)V
    .registers 6

    .line 980
    invoke-direct/range {p0 .. p5}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(FIIII)V

    return-void
.end method

.method static synthetic access$1502(Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;I)I
    .registers 2

    .line 980
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1602(Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;F)F
    .registers 2

    .line 980
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private getIndicatorWidth(Landroid/view/View;)I
    .registers 2

    .line 1451
    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidth:I

    return p0
.end method

.method private setIndicatorPosition(FIIII)V
    .registers 9

    const/high16 v0, 0x3f800000  # 1.0f

    .line 1266
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    .line 1267
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v1, 0x3ea66666  # 0.325f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_19

    div-float v0, p1, v1

    .line 1274
    invoke-static {}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    goto :goto_22

    :cond_19
    sub-float/2addr v0, p1

    const v1, 0x3f2ccccd  # 0.675f

    div-float/2addr v0, v1

    .line 1278
    invoke-static {}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$1200()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 1281
    :goto_22
    iget v2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidth:I

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorScrollStretchMaxWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v2, v0

    if-ge p2, p4, :cond_3f

    .line 1285
    invoke-static {}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$1300()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {p3, p5, p1}, Lflyme/support/v7/widget/AnimationUtils;->lerp(IIF)I

    move-result p3

    sub-int p2, p3, v2

    goto :goto_4f

    :cond_3f
    if-le p2, p4, :cond_4f

    .line 1288
    invoke-static {}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$1300()Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-interface {p3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {p2, p4, p1}, Lflyme/support/v7/widget/AnimationUtils;->lerp(IIF)I

    move-result p2

    add-int p3, p2, v2

    .line 1292
    :cond_4f
    :goto_4f
    invoke-direct {p0, p2, p3}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method private setIndicatorPosition(II)V
    .registers 4

    .line 1255
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_f

    .line 1257
    :cond_8
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    .line 1258
    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    .line 1259
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 10

    .line 1220
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1222
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_58

    .line 1223
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1224
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    .line 1226
    div-int/lit8 v1, v1, 0x2

    .line 1230
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidth:I

    div-int/lit8 v2, v0, 0x2

    sub-int v5, v1, v2

    .line 1231
    div-int/lit8 v0, v0, 0x2

    add-int v6, v1, v0

    .line 1232
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5a

    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5a

    .line 1234
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1235
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1236
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1238
    div-int/lit8 v1, v1, 0x2

    .line 1240
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->getIndicatorWidth(Landroid/view/View;)I

    move-result v0

    .line 1242
    div-int/lit8 v0, v0, 0x2

    sub-int v7, v1, v0

    add-int v8, v1, v0

    .line 1244
    iget v4, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(FIIII)V

    return-void

    :cond_58
    const/4 v5, -0x1

    move v6, v5

    .line 1251
    :cond_5a
    invoke-direct {p0, v5, v6}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 12

    .line 1297
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    .line 1300
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 1302
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1303
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    .line 1310
    div-int/2addr v1, v2

    .line 1312
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->getIndicatorWidth(Landroid/view/View;)I

    move-result v0

    .line 1314
    div-int/2addr v0, v2

    sub-int v7, v1, v0

    add-int v8, v1, v0

    .line 1340
    iget v5, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    .line 1341
    iget v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    if-ne v5, v7, :cond_28

    if-eq v6, v8, :cond_77

    :cond_28
    if-ltz v5, :cond_77

    if-ltz v6, :cond_77

    if-lez p2, :cond_70

    .line 1345
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1346
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3d
    new-array v0, v2, [F

    .line 1347
    fill-array-data v0, :array_7e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1348
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1349
    iget-object p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1350
    iget-object p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip$1;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip$1;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;IIII)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1362
    iget-object p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip$2;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1375
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7c

    :cond_70
    const/high16 v4, 0x3f800000  # 1.0f

    move-object v3, p0

    .line 1377
    invoke-direct/range {v3 .. v8}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(FIIII)V

    goto :goto_7c

    .line 1380
    :cond_77
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    const/4 p1, 0x0

    .line 1381
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    :goto_7c
    return-void

    nop

    :array_7e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public cancelIndicatorAnim()V
    .registers 2

    .line 1430
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1388
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_4e

    iget v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    if-le v1, v0, :cond_4e

    .line 1401
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$300(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaddingBottomAtToolBar:I

    goto :goto_15

    :cond_13
    iget v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaddingBottom:I

    .line 1403
    :goto_15
    iget-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    .line 1404
    iget v2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1405
    iget v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int/2addr v4, v0

    iget v2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    .line 1406
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    .line 1405
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1407
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4e

    .line 1409
    :cond_33
    iget v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v4, v1

    iget v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v5, v1

    .line 1410
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 1409
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1151
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 1157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-static {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$800(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1160
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->updateIndicatorPosition()V

    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 1101
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 1103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v0, v1, :cond_c

    return-void

    .line 1109
    :cond_c
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$900(Lflyme/support/v7/widget/ScrollingTabContainerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 1110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 1112
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_20
    if-ge v3, v0, :cond_34

    .line 1117
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1118
    invoke-virtual {v5, v2, p2}, Landroid/view/View;->measure(II)V

    .line 1119
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_34
    if-gtz v4, :cond_37

    return-void

    .line 1127
    :cond_37
    iget-object v2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$1000(Lflyme/support/v7/widget/ScrollingTabContainerView;I)I

    move-result v2

    mul-int v3, v4, v0

    .line 1128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v5, v2

    if-gt v3, v5, :cond_5e

    :goto_4a
    if-ge v1, v0, :cond_5e

    .line 1132
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1133
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1134
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, 0x0

    .line 1135
    iput v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 1145
    :cond_5e
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :cond_61
    return-void
.end method

.method setAtToolbar(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1082
    iget p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidthMain:I

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidth:I

    goto :goto_b

    .line 1084
    :cond_7
    iget p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidthSecond:I

    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorWidth:I

    :goto_b
    return-void
.end method

.method setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1434
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 1435
    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1436
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_9
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 4

    .line 1090
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$800(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1093
    :cond_b
    invoke-virtual {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->cancelIndicatorAnim()V

    .line 1094
    iput p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    .line 1095
    iput p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    .line 1096
    invoke-direct {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method
