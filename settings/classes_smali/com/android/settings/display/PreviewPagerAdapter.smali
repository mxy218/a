.class public Lcom/android/settings/display/PreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationCounter:I

.field private mAnimationEndAction:Ljava/lang/Runnable;

.field private mIsLayoutRtl:Z

.field private mPreviewFrames:[Landroid/widget/FrameLayout;

.field private mViewStubInflated:[[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/display/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 46
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/display/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
    .registers 11

    .line 59
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 60
    iput-boolean p2, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mIsLayoutRtl:Z

    .line 61
    array-length p2, p3

    new-array p2, p2, [Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    .line 62
    array-length p2, p3

    array-length v0, p4

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const-class v0, Z

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Z

    iput-object p2, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mViewStubInflated:[[Z

    const/4 p2, 0x0

    move v0, p2

    .line 64
    :goto_1c
    array-length v1, p3

    if-ge v0, v1, :cond_81

    .line 65
    iget-boolean v1, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mIsLayoutRtl:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    array-length v1, p3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    goto :goto_29

    :cond_28
    move v1, v0

    .line 66
    :goto_29
    iget-object v3, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 67
    iget-object v3, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v3, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 71
    iget-object v3, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    move v2, p2

    .line 72
    :goto_4e
    array-length v3, p4

    if-ge v2, v3, :cond_7e

    .line 75
    aget-object v3, p4, v2

    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 78
    new-instance v4, Landroid/view/ViewStub;

    invoke-direct {v4, v3}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 79
    aget v3, p3, v0

    invoke-virtual {v4, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 81
    new-instance v3, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;-><init>(Lcom/android/settings/display/PreviewPagerAdapter;II)V

    invoke-virtual {v4, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 86
    iget-object v3, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_81
    return-void
.end method

.method static synthetic access$108(Lcom/android/settings/display/PreviewPagerAdapter;)I
    .registers 3

    .line 37
    iget v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/settings/display/PreviewPagerAdapter;)I
    .registers 3

    .line 37
    iget v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/display/PreviewPagerAdapter;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/display/PreviewPagerAdapter;->runAnimationEndAction()V

    return-void
.end method

.method private runAnimationEndAction()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/display/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_12

    .line 191
    iget-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method private setVisibility(Landroid/view/View;IZ)V
    .registers 8

    if-nez p2, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-nez p3, :cond_f

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    :cond_f
    const/4 p3, 0x0

    const-wide/16 v1, 0x190

    if-nez p2, :cond_38

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 162
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/settings/display/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 163
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/display/PreviewPagerAdapter;Lcom/android/settings/display/PreviewPagerAdapter$1;)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/android/settings/display/PreviewPagerAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/display/PreviewPagerAdapter$1;-><init>(Lcom/android/settings/display/PreviewPagerAdapter;Landroid/view/View;I)V

    .line 166
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_5b

    .line 174
    :cond_38
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 175
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/settings/display/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 176
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/display/PreviewPagerAdapter;Lcom/android/settings/display/PreviewPagerAdapter$1;)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/android/settings/display/PreviewPagerAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/display/PreviewPagerAdapter$2;-><init>(Lcom/android/settings/display/PreviewPagerAdapter;Landroid/view/View;I)V

    .line 179
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_5b
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 93
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length p0, p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object p0, p0, p2

    return-object p0
.end method

.method isAnimating()Z
    .registers 1

    .line 113
    iget p0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationCounter:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public synthetic lambda$new$0$PreviewPagerAdapter(IILandroid/view/ViewStub;Landroid/view/View;)V
    .registers 5

    .line 82
    invoke-virtual {p3}, Landroid/view/ViewStub;->getVisibility()I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object p0, p0, p1

    const/4 p1, 0x1

    aput-boolean p1, p0, p2

    return-void
.end method

.method setAnimationEndAction(Ljava/lang/Runnable;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method setPreviewLayer(IIIZ)V
    .registers 13

    .line 122
    iget-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_4b

    aget-object v4, v0, v3

    if-ltz p2, :cond_25

    .line 124
    invoke-virtual {v4, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 125
    iget-object v6, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v6, v6, p3

    aget-boolean v6, v6, p2

    if-eqz v6, :cond_25

    .line 128
    iget-object v6, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, p3

    const/4 v7, 0x4

    if-ne v4, v6, :cond_22

    .line 129
    invoke-direct {p0, v5, v7, p4}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_25

    .line 131
    :cond_22
    invoke-direct {p0, v5, v7, v2}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    .line 137
    :cond_25
    :goto_25
    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 138
    iget-object v6, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, p3

    if-ne v4, v6, :cond_45

    .line 140
    iget-object v4, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v4, v4, p3

    aget-boolean v4, v4, p1

    if-nez v4, :cond_41

    .line 141
    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    const/4 v4, 0x0

    .line 142
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 144
    :cond_41
    invoke-direct {p0, v5, v2, p4}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_48

    .line 146
    :cond_45
    invoke-direct {p0, v5, v2, v2}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4b
    return-void
.end method
