.class public Lflyme/support/v7/widget/ActionBarDropDownView;
.super Landroid/widget/FrameLayout;
.source "ActionBarDropDownView.java"


# static fields
.field private static final ANIMATION_INTERPOLATOR_ALPHA:Landroid/view/animation/Interpolator;

.field private static final ANIMATION_INTERPOLATOR_TRANSLATION:Landroid/view/animation/Interpolator;


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private mCallback:Lflyme/support/v7/app/ActionBar$DropDownCallback;

.field private mContentHeight:I

.field private mContentView:Landroid/view/View;

.field private mCurAnimator:Landroid/animation/AnimatorSet;

.field private mDismissAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3df5c28f  # 0.12f

    const v2, 0x3e9eb852  # 0.31f

    const v3, 0x3dcccccd  # 0.1f

    .line 31
    invoke-static {v1, v2, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lflyme/support/v7/widget/ActionBarDropDownView;->ANIMATION_INTERPOLATOR_TRANSLATION:Landroid/view/animation/Interpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3  # 0.66f

    .line 32
    invoke-static {v1, v2, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/widget/ActionBarDropDownView;->ANIMATION_INTERPOLATOR_ALPHA:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/ActionBarDropDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/ActionBarDropDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentHeight:I

    const/4 p3, 0x1

    .line 39
    iput p3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mState:I

    .line 137
    new-instance p3, Lflyme/support/v7/widget/ActionBarDropDownView$1;

    invoke-direct {p3, p0}, Lflyme/support/v7/widget/ActionBarDropDownView$1;-><init>(Lflyme/support/v7/widget/ActionBarDropDownView;)V

    iput-object p3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 165
    new-instance p3, Lflyme/support/v7/widget/ActionBarDropDownView$2;

    invoke-direct {p3, p0}, Lflyme/support/v7/widget/ActionBarDropDownView$2;-><init>(Lflyme/support/v7/widget/ActionBarDropDownView;)V

    iput-object p3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mDismissAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 58
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mBackgroundView:Landroid/view/View;

    .line 59
    iget-object p3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lflyme/support/v7/appcompat/R$color;->mz_action_bar_drop_down_view_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$002(Lflyme/support/v7/widget/ActionBarDropDownView;I)I
    .registers 2

    .line 25
    iput p1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mState:I

    return p1
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/ActionBarDropDownView;)Lflyme/support/v7/app/ActionBar$DropDownCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCallback:Lflyme/support/v7/app/ActionBar$DropDownCallback;

    return-object p0
.end method

.method private startShowAnim()V
    .registers 8

    .line 98
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCurAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 102
    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 104
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentView:Landroid/view/View;

    iget v2, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 105
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string v6, "translationY"

    invoke-static {v1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 106
    sget-object v3, Lflyme/support/v7/widget/ActionBarDropDownView;->ANIMATION_INTERPOLATOR_TRANSLATION:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 114
    iget-object v3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 115
    iget-object v3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mBackgroundView:Landroid/view/View;

    new-array v2, v2, [F

    const/high16 v4, 0x3f800000  # 1.0f

    aput v4, v2, v5

    const-string v4, "alpha"

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 116
    sget-object v3, Lflyme/support/v7/widget/ActionBarDropDownView;->ANIMATION_INTERPOLATOR_ALPHA:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0x15e

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 124
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 126
    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCurAnimator:Landroid/animation/AnimatorSet;

    .line 132
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCallback:Lflyme/support/v7/app/ActionBar$DropDownCallback;

    if-eqz p0, :cond_5e

    .line 133
    invoke-interface {p0}, Lflyme/support/v7/app/ActionBar$DropDownCallback;->onShow()V

    :cond_5e
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 7

    .line 194
    iget v0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_59

    if-nez v0, :cond_8

    goto :goto_59

    .line 195
    :cond_8
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCurAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    .line 196
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 198
    :cond_f
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 200
    iget-object v2, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentView:Landroid/view/View;

    new-array v3, v1, [F

    iget v4, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string v4, "translationY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 201
    sget-object v3, Lflyme/support/v7/widget/ActionBarDropDownView;->ANIMATION_INTERPOLATOR_TRANSLATION:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mBackgroundView:Landroid/view/View;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v4, v1, v5

    const-string v4, "alpha"

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 205
    sget-object v3, Lflyme/support/v7/widget/ActionBarDropDownView;->ANIMATION_INTERPOLATOR_ALPHA:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0x15e

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 209
    iget-object v1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mDismissAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    iput-object v0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCurAnimator:Landroid/animation/AnimatorSet;

    .line 213
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCallback:Lflyme/support/v7/app/ActionBar$DropDownCallback;

    if-eqz p0, :cond_59

    .line 214
    invoke-interface {p0}, Lflyme/support/v7/app/ActionBar$DropDownCallback;->onHide()V

    :cond_59
    :goto_59
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 88
    :cond_a
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_20

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentHeight:I

    .line 90
    iget p1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_20

    iget p1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mContentHeight:I

    if-lez p1, :cond_20

    .line 91
    invoke-direct {p0}, Lflyme/support/v7/widget/ActionBarDropDownView;->startShowAnim()V

    :cond_20
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_a

    goto :goto_d

    .line 226
    :cond_a
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarDropDownView;->dismiss()V

    .line 229
    :goto_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_12
    return v1
.end method

.method public setCallback(Lflyme/support/v7/app/ActionBar$DropDownCallback;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarDropDownView;->mCallback:Lflyme/support/v7/app/ActionBar$DropDownCallback;

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
