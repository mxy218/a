.class public Lcom/android/systemui/statusbar/ScrimView;
.super Lcom/flyme/systemui/statusbar/GLStaticBlurView;
.source "ScrimView.java"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTintColor:I

.field private mViewAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 227
    new-instance p1, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 238
    new-instance p1, Lcom/android/systemui/statusbar/ScrimView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/ScrimView$2;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 67
    new-instance p1, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 69
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/4 p1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ScrimView;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ScrimView;F)F
    .registers 2

    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ScrimView;FFF)V
    .registers 4

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->setDynamicBlurEffect(FFF)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private updateColorWithTint(Z)V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-eqz v1, :cond_22

    .line 144
    check-cast v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    .line 145
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 148
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    goto :goto_5f

    .line 150
    :cond_22
    iget p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    if-eqz p1, :cond_50

    .line 152
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez p1, :cond_36

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3a

    .line 153
    :cond_36
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 154
    :goto_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-eq v0, v1, :cond_53

    .line 155
    :cond_46
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_53

    :cond_50
    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 161
    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 165
    :goto_5f
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_66

    .line 166
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_66
    return-void
.end method


# virtual methods
.method public animateViewAlpha(FJLandroid/view/animation/Interpolator;)V
    .registers 8

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 213
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 215
    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 216
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected canReceivePointerEvents()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object p0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTint()I
    .registers 1

    .line 171
    iget p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    return p0
.end method

.method public getViewAlpha()F
    .registers 1

    .line 198
    iget p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 90
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_a

    .line 92
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_d

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 98
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    if-eqz p1, :cond_d

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_d
    return-void
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .registers 4

    if-eqz p1, :cond_14

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 116
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 117
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void

    .line 111
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Colors cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPanelViewAlpha(F)V
    .registers 2

    .line 224
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->setBlurAlpha(F)V

    return-void
.end method

.method public setTint(I)V
    .registers 3

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setTint(IZ)V

    return-void
.end method

.method public setTint(IZ)V
    .registers 4

    .line 134
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-ne v0, p1, :cond_5

    return-void

    .line 137
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    .line 138
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method public setViewAlpha(F)V
    .registers 4

    .line 187
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_18

    .line 188
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_18

    .line 192
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_18
    return-void
.end method
