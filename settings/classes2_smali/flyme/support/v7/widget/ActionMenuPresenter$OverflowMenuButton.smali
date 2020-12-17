.class Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mSpotColor:I

.field private final mSpotRadius:F

.field private mSpotVisible:Z

.field private final mTempPts:[F

.field final synthetic this$0:Lflyme/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 7

    .line 698
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    .line 702
    invoke-static {p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$200(Lflyme/support/v7/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionOverflowButtonSplitStyle:I

    goto :goto_d

    :cond_b
    sget v0, Lflyme/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    :goto_d
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 692
    iput-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    const/high16 v0, -0x10000

    .line 693
    iput v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mSpotColor:I

    .line 703
    sget v2, Lflyme/support/v7/appcompat/R$id;->mz_action_overflow_button:I

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setId(I)V

    const/4 v2, 0x1

    .line 706
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 707
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    const/4 v3, 0x0

    .line 708
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 711
    new-instance v3, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v3, p0, p0, p1}, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lflyme/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 742
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 743
    invoke-virtual {p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v1

    if-nez v1, :cond_44

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_4c

    .line 744
    :cond_44
    new-instance v1, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;

    invoke-direct {v1, p1, p0}, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/view/View;)V

    .line 745
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    :cond_4c
    invoke-static {p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$500(Lflyme/support/v7/widget/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-static {p1}, Lflyme/support/v7/widget/ActionMenuPresenter;->access$500(Lflyme/support/v7/widget/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    :cond_59
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lflyme/support/v7/appcompat/R$string;->abc_action_menu_overflow_description:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 753
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lflyme/support/v7/appcompat/R$dimen;->mc_new_message_view_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mSpotRadius:F

    .line 754
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mPaint:Landroid/graphics/Paint;

    .line 755
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 756
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 757
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needsDividerBefore()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 835
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 836
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mSpotVisible:Z

    if-eqz v0, :cond_47

    .line 839
    :try_start_7
    invoke-static {p0}, Lcom/meizu/common/util/ReflectUtils;->from(Ljava/lang/Object;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object v0

    const-string v1, "mDrawMatrix"

    invoke-interface {v0, v1}, Lcom/meizu/common/util/ReflectUtils$IReflectClass;->field(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectField;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/meizu/common/util/ReflectUtils$IReflectField;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_47

    .line 843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 845
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_2c

    .line 847
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 849
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 851
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mSpotRadius:F

    add-float/2addr v1, v2

    .line 852
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    .line 853
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    nop

    :catch_47
    :cond_47
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 821
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 822
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42500000  # 52.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    sub-int v0, p4, p2

    if-ge v0, p1, :cond_2d

    sub-int/2addr p1, v0

    .line 824
    div-int/lit8 p1, p1, 0x2

    .line 825
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, p1

    add-int/2addr p4, p1

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 826
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 827
    new-instance p2, Landroid/view/TouchDelegate;

    invoke-direct {p2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2d
    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 762
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 766
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 767
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lflyme/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method

.method protected setFrame(IIII)Z
    .registers 8

    .line 783
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    .line 786
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 787
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 801
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 802
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz p2, :cond_41

    if-eqz p3, :cond_41

    if-nez p4, :cond_26

    if-eqz v0, :cond_41

    .line 804
    :cond_26
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    .line 805
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    .line 806
    div-int/lit8 v1, p2, 0x2

    .line 807
    div-int/lit8 v2, p0, 0x2

    add-int/2addr p2, p4

    .line 808
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, v0

    .line 809
    div-int/lit8 p0, p0, 0x2

    sub-int p4, p2, v1

    sub-int v0, p0, v2

    add-int/2addr p2, v1

    add-int/2addr p0, v2

    .line 810
    invoke-static {p3, p4, v0, p2, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_41
    return p1
.end method

.method public setSpotVisible(Z)V
    .registers 3

    .line 859
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mSpotVisible:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    .line 861
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mSpotVisible:Z

    .line 862
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_e
    return-void
.end method
