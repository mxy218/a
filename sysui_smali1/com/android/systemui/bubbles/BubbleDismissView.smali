.class public Lcom/android/systemui/bubbles/BubbleDismissView;
.super Landroid/widget/FrameLayout;
.source "BubbleDismissView.java"


# instance fields
.field private mDismissCircle:Landroid/view/View;

.field private mDismissIcon:Landroid/widget/ImageView;

.field private mDismissTarget:Landroid/widget/LinearLayout;

.field private mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->bubble_dismiss_target:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    sget p1, Lcom/android/systemui/R$id;->bubble_dismiss_icon_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    .line 53
    sget p1, Lcom/android/systemui/R$id;->bubble_dismiss_close_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    .line 54
    sget p1, Lcom/android/systemui/R$id;->bubble_dismiss_circle:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    .line 58
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 67
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43480000  # 200.0f

    .line 70
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f400000  # 0.75f

    .line 71
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 69
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 72
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v2, 0x44bb8000  # 1500.0f

    .line 75
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 76
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 74
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleDismissView$k9Xt4VfLNoRaJ7mqmfivzckWcKM;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleDismissView$k9Xt4VfLNoRaJ7mqmfivzckWcKM;-><init>(Lcom/android/systemui/bubbles/BubbleDismissView;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method


# virtual methods
.method getDismissTarget()Landroid/view/View;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method getDismissTargetCenterY()F
    .registers 3

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public synthetic lambda$new$0$BubbleDismissView(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    const/high16 p1, 0x3f000000  # 0.5f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_a

    const/4 p1, 0x4

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method springIn()V
    .registers 6

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    const v2, 0x3f99999a  # 1.2f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 111
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 113
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method springOut()V
    .registers 6

    .line 120
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666  # 0.9f

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 133
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 134
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 135
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 136
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
