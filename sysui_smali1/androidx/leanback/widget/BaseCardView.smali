.class public Landroidx/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;,
        Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;,
        Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;,
        Landroidx/leanback/widget/BaseCardView$AnimationBase;,
        Landroidx/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field private static final LB_PRESSED_STATE_SET:[I


# instance fields
.field private final mActivatedAnimDuration:I

.field private mAnim:Landroid/view/animation/Animation;

.field private final mAnimationTrigger:Ljava/lang/Runnable;

.field private mCardType:I

.field private mDelaySelectedAnim:Z

.field mExtraViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraVisibility:I

.field mInfoAlpha:F

.field mInfoOffset:F

.field mInfoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mInfoVisFraction:F

.field private mInfoVisibility:I

.field private mMainViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private final mSelectedAnimDuration:I

.field private mSelectedAnimationDelay:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 138
    sput-object v0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 153
    sget v0, Landroidx/leanback/R$attr;->baseCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance v0, Landroidx/leanback/widget/BaseCardView$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$1;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    .line 159
    sget-object v0, Landroidx/leanback/R$styleable;->lbBaseCardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 163
    :try_start_11
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_cardType:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 164
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_cardForeground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 166
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_24
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_cardBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2f

    .line 170
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_2f
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_infoVisibility:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 174
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_extraVisibility:I

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 177
    iget p2, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ge p2, v0, :cond_4b

    .line 178
    iget p2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 181
    :cond_4b
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_selectedAnimationDelay:I

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$integer;->lb_card_selected_animation_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 181
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 185
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_selectedAnimationDuration:I

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$integer;->lb_card_selected_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 185
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 189
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_activatedAnimationDuration:I

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$integer;->lb_card_activated_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 190
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_81
    .catchall {:try_start_11 .. :try_end_81} :catchall_ab

    .line 193
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    iput-boolean p3, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 199
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 200
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 203
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 204
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    return-void

    :catchall_ab
    move-exception p0

    .line 193
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private animateInfoAlpha(Z)V
    .registers 6

    .line 781
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    move v1, v0

    .line 784
    :goto_7
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 785
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    move v2, v0

    goto :goto_25

    :cond_24
    move v2, v1

    .line 789
    :goto_25
    iget v3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2c

    return-void

    .line 793
    :cond_2c
    new-instance v2, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    invoke-direct {v2, p0, v3, v0}, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    iput-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 794
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 795
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 796
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroidx/leanback/widget/BaseCardView$4;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$4;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 815
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateInfoHeight(Z)V
    .registers 5

    .line 738
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    move v1, v0

    .line 741
    :goto_7
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 742
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 743
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    if-eqz p1, :cond_22

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 748
    :goto_23
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2a

    return-void

    .line 751
    :cond_2a
    new-instance v1, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;

    invoke-direct {v1, p0, v0, p1}, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    iput-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 752
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 753
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 754
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroidx/leanback/widget/BaseCardView$3;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$3;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 773
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private applyActiveState(Z)V
    .registers 3

    .line 624
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result p1

    if-eqz p1, :cond_12

    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 625
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->isRegionVisible(I)Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    :cond_12
    return-void
.end method

.method private applySelectedState(Z)V
    .registers 4

    .line 662
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 664
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    if-eqz p1, :cond_22

    .line 667
    iget-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    if-nez p1, :cond_19

    .line 668
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 669
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    goto :goto_2f

    .line 671
    :cond_19
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_22
    const/4 p1, 0x0

    .line 674
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    goto :goto_2f

    .line 676
    :cond_27
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 677
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private findChildrenViews()V
    .registers 11

    .line 563
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 569
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v1}, Landroidx/leanback/widget/BaseCardView;->isCurrentRegionVisible(I)Z

    move-result v1

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, v3

    .line 570
    :goto_26
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v4

    if-eqz v4, :cond_35

    iget v4, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_35

    move v4, v2

    goto :goto_36

    :cond_35
    move v4, v3

    :goto_36
    move v5, v3

    :goto_37
    if-ge v5, v0, :cond_77

    .line 573
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_40

    goto :goto_74

    .line 580
    :cond_40
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 581
    iget v7, v7, Landroidx/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/16 v8, 0x8

    if-ne v7, v2, :cond_5d

    .line 582
    iget v7, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 583
    iget-object v7, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_59

    move v8, v3

    .line 584
    :cond_59
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_74

    :cond_5d
    const/4 v9, 0x2

    if-ne v7, v9, :cond_6c

    .line 586
    iget-object v7, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_68

    move v8, v3

    .line 587
    :cond_68
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_74

    .line 590
    :cond_6c
    iget-object v7, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_77
    return-void
.end method

.method private hasExtraRegion()Z
    .registers 2

    .line 521
    iget p0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private hasInfoRegion()Z
    .registers 1

    .line 517
    iget p0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isCurrentRegionVisible(I)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v0, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    return v1

    .line 551
    :cond_a
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-ne p1, v2, :cond_18

    .line 552
    iget p0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    .line 554
    :cond_18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p0

    return p0

    .line 549
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result p0

    return p0

    :cond_22
    return v0
.end method

.method private isRegionVisible(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 534
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p0

    return p0

    .line 532
    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result p0

    return p0

    :cond_14
    return v0
.end method

.method private setInfoViewVisibility(Z)V
    .registers 7

    .line 630
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_52

    if-eqz p1, :cond_21

    move p1, v2

    .line 634
    :goto_b
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7f

    .line 635
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_21
    move p1, v2

    .line 638
    :goto_22
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_38

    .line 639
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    .line 641
    :cond_38
    :goto_38
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_4e

    .line 642
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4e
    const/4 p1, 0x0

    .line 644
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    goto :goto_7f

    :cond_52
    const/4 v3, 0x2

    if-ne v0, v3, :cond_79

    .line 648
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v3, :cond_5d

    .line 649
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->animateInfoHeight(Z)V

    goto :goto_7f

    :cond_5d
    move v0, v2

    .line 651
    :goto_5e
    iget-object v3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7f

    .line 652
    iget-object v3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz p1, :cond_72

    move v4, v2

    goto :goto_73

    :cond_72
    move v4, v1

    :goto_73
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_79
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7f

    .line 657
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V

    :cond_7f
    :goto_7f
    return-void
.end method


# virtual methods
.method animateInfoOffset(Z)V
    .registers 8

    .line 695
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 699
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 700
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v0

    move v4, v3

    .line 702
    :goto_14
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_35

    .line 703
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 704
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 705
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 706
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_35
    move v0, v4

    .line 710
    :cond_36
    new-instance v1, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;

    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    if-eqz p1, :cond_3e

    int-to-float p1, v0

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    invoke-direct {v1, p0, v2, p1}, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    iput-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 711
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 712
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 713
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroidx/leanback/widget/BaseCardView$2;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$2;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 732
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method cancelAnimations()V
    .registers 2

    .line 682
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_d

    .line 683
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    .line 684
    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 687
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_d
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 840
    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 55
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroidx/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 1

    .line 55
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroidx/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroidx/leanback/widget/BaseCardView$LayoutParams;
    .registers 2

    .line 825
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/leanback/widget/BaseCardView$LayoutParams;
    .registers 3

    .line 820
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/leanback/widget/BaseCardView$LayoutParams;
    .registers 2

    .line 831
    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    if-eqz p0, :cond_c

    .line 832
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroidx/leanback/widget/BaseCardView$LayoutParams;)V

    return-object p0

    .line 834
    :cond_c
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method final getFinalInfoAlpha()F
    .registers 3

    .line 298
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    goto :goto_14

    :cond_12
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_14
    return p0
.end method

.method final getFinalInfoVisFraction()F
    .registers 3

    .line 293
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v1, :cond_11

    .line 294
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    goto :goto_13

    :cond_11
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_13
    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8

    .line 600
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    .line 601
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_8
    if-ge v0, p1, :cond_1e

    .line 605
    aget v3, p0, v0

    const v4, 0x10100a7

    const/4 v5, 0x1

    if-ne v3, v4, :cond_13

    move v1, v5

    .line 608
    :cond_13
    aget v3, p0, v0

    const v4, 0x101009e

    if-ne v3, v4, :cond_1b

    move v2, v5

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    if-eqz v1, :cond_25

    if-eqz v2, :cond_25

    .line 613
    sget-object p0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    return-object p0

    :cond_25
    if-eqz v1, :cond_2a

    .line 615
    sget-object p0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-object p0

    :cond_2a
    if-eqz v2, :cond_2f

    .line 617
    sget-object p0, Landroid/view/View;->ENABLED_STATE_SET:[I

    return-object p0

    .line 619
    :cond_2f
    sget-object p0, Landroid/view/View;->EMPTY_STATE_SET:[I

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 512
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 513
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 19

    move-object v0, p0

    .line 439
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .line 442
    :goto_9
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_40

    .line 443
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 444
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_3d

    .line 445
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    float-to-int v6, v3

    iget v7, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    .line 448
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    float-to-int v8, v8

    .line 445
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 453
    :cond_40
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    if-eqz v1, :cond_f5

    const/4 v1, 0x0

    move v6, v1

    move v4, v2

    .line 455
    :goto_49
    iget-object v7, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_62

    .line 456
    iget-object v7, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 459
    :cond_62
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_6e

    sub-float/2addr v3, v6

    cmpg-float v4, v3, v1

    if-gez v4, :cond_7c

    move v3, v1

    goto :goto_7c

    :cond_6e
    const/4 v7, 0x2

    if-ne v4, v7, :cond_79

    .line 466
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v4, v7, :cond_7c

    .line 467
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v6, v4

    goto :goto_7c

    .line 470
    :cond_79
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    sub-float/2addr v3, v4

    :cond_7c
    :goto_7c
    move v4, v3

    move v3, v2

    .line 473
    :goto_7e
    iget-object v7, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_b9

    .line 474
    iget-object v7, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 475
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_b6

    .line 476
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v9, v8

    cmpl-float v9, v9, v6

    if-lez v9, :cond_9e

    float-to-int v8, v6

    .line 480
    :cond_9e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    float-to-int v10, v4

    iget v11, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 482
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v8, v8

    add-float/2addr v4, v8

    float-to-int v12, v4

    .line 480
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    sub-float/2addr v6, v8

    cmpg-float v7, v6, v1

    if-gtz v7, :cond_b6

    goto :goto_b9

    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 492
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v1

    if-eqz v1, :cond_f5

    move v1, v2

    .line 493
    :goto_c0
    iget-object v3, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f5

    .line 494
    iget-object v3, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 495
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_f2

    .line 496
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    float-to-int v7, v4

    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 498
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    .line 499
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    float-to-int v9, v9

    .line 496
    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 500
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    :cond_f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_f5
    sub-int v1, p4, p2

    sub-int v3, p5, p3

    .line 506
    invoke-virtual {p0, v2, v2, v1, v3}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    .line 374
    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 375
    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 381
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->findChildrenViews()V

    .line 383
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 385
    :goto_f
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ge v2, v5, :cond_46

    .line 386
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 387
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_43

    .line 388
    invoke-virtual {p0, v5, v1, v1}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 389
    iget v6, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 390
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 391
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 394
    :cond_46
    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/4 v5, 0x2

    div-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 395
    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 399
    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 401
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_ca

    move v7, v0

    move v9, v4

    move v4, v7

    .line 402
    :goto_66
    iget-object v10, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_93

    .line 403
    iget-object v10, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 404
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v6, :cond_90

    .line 405
    invoke-virtual {p0, v10, v2, v1}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 406
    iget v11, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-eq v11, v8, :cond_88

    .line 407
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 409
    :cond_88
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 413
    :cond_93
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v4

    if-eqz v4, :cond_c7

    move v4, v0

    move v10, v9

    move v9, v4

    .line 414
    :goto_9c
    iget-object v11, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_c5

    .line 415
    iget-object v11, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 416
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v6, :cond_c2

    .line 417
    invoke-virtual {p0, v11, v2, v1}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 418
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v9, v12

    .line 419
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v10, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_c2
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    :cond_c5
    move v4, v10

    goto :goto_cc

    :cond_c7
    move v4, v9

    move v9, v0

    goto :goto_cc

    :cond_ca
    move v7, v0

    move v9, v7

    .line 425
    :goto_cc
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    if-eqz v1, :cond_d7

    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v1, v5, :cond_d7

    move v0, v8

    :cond_d7
    int-to-float v1, v3

    int-to-float v2, v7

    if-eqz v0, :cond_de

    .line 426
    iget v3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v2, v3

    :cond_de
    add-float/2addr v1, v2

    int-to-float v2, v9

    add-float/2addr v1, v2

    if-eqz v0, :cond_e5

    const/4 v0, 0x0

    goto :goto_e7

    :cond_e5
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    :goto_e7
    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 431
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    invoke-static {v0, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x10

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 431
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivated(Z)V
    .registers 3

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_10

    .line 346
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 347
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->applyActiveState(Z)V

    :cond_10
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 361
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_10

    .line 362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 363
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->applySelectedState(Z)V

    :cond_10
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 1005
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
