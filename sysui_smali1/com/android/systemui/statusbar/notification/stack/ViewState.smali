.class public Lcom/android/systemui/statusbar/notification/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final TAG_ANIMATOR_ALPHA:I

.field private static final TAG_ANIMATOR_TRANSLATION_X:I

.field private static final TAG_ANIMATOR_TRANSLATION_Y:I

.field private static final TAG_ANIMATOR_TRANSLATION_Z:I

.field private static final TAG_END_ALPHA:I

.field private static final TAG_END_TRANSLATION_X:I

.field private static final TAG_END_TRANSLATION_Y:I

.field private static final TAG_END_TRANSLATION_Z:I

.field private static final TAG_START_ALPHA:I

.field private static final TAG_START_TRANSLATION_X:I

.field private static final TAG_START_TRANSLATION_Y:I

.field private static final TAG_START_TRANSLATION_Z:I


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 59
    sget v0, Lcom/android/systemui/R$id;->translation_x_animator_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    .line 60
    sget v0, Lcom/android/systemui/R$id;->translation_y_animator_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 61
    sget v0, Lcom/android/systemui/R$id;->translation_z_animator_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 62
    sget v0, Lcom/android/systemui/R$id;->alpha_animator_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    .line 63
    sget v0, Lcom/android/systemui/R$id;->translation_x_animator_end_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    .line 64
    sget v0, Lcom/android/systemui/R$id;->translation_y_animator_end_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    .line 65
    sget v0, Lcom/android/systemui/R$id;->translation_z_animator_end_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    .line 66
    sget v0, Lcom/android/systemui/R$id;->alpha_animator_end_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    .line 67
    sget v0, Lcom/android/systemui/R$id;->translation_x_animator_start_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    .line 68
    sget v0, Lcom/android/systemui/R$id;->translation_y_animator_start_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    .line 69
    sget v0, Lcom/android/systemui/R$id;->translation_z_animator_start_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    .line 70
    sget v0, Lcom/android/systemui/R$id;->alpha_animator_start_value_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 126
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 127
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    return v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    return v0
.end method

.method static synthetic access$1100()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    return v0
.end method

.method static synthetic access$300()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    return v0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    return v0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    return v0
.end method

.method static synthetic access$900()I
    .registers 1

    .line 46
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    return v0
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .registers 7

    if-eqz p2, :cond_12

    .line 642
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    .line 643
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 642
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 644
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12
    return-wide p0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 619
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFinalTranslationX(Landroid/view/View;)F
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 657
    :cond_4
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_13

    .line 659
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0

    .line 661
    :cond_13
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 673
    :cond_4
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_13

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0

    .line 677
    :cond_13
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 689
    :cond_4
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_13

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    return p0

    .line 693
    :cond_13
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .registers 2

    .line 256
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z
    .registers 2

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .registers 2

    .line 698
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 13

    .line 330
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 331
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 332
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    if-eqz v1, :cond_1d

    .line 333
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1d

    return-void

    .line 336
    :cond_1d
    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 337
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    .line 338
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v4, :cond_72

    if-eqz v3, :cond_67

    .line 343
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 344
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    .line 345
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    .line 346
    aget-object p0, p0, v7

    new-array p2, v8, [F

    aput v0, p2, v7

    aput v2, p2, v6

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 347
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 348
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 349
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 353
    :cond_67
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v0, v2, v5

    if-nez v0, :cond_72

    const/4 v0, 0x4

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_72
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v8, [F

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v6

    .line 360
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x0

    .line 364
    invoke-virtual {p1, v8, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 365
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v6, v7, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 391
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 392
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-lez p0, :cond_b3

    if-eqz v3, :cond_ae

    .line 393
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result p0

    cmpl-float p0, p0, v5

    if-nez p0, :cond_b3

    .line 394
    :cond_ae
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 396
    :cond_b3
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    if-eqz p0, :cond_bc

    .line 398
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    :cond_bc
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 402
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 403
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 404
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 613
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 615
    :cond_5
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 11

    .line 477
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 478
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 479
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    if-eqz v1, :cond_1d

    .line 480
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1d

    return-void

    .line 483
    :cond_1d
    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 484
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    .line 485
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_6a

    if-eqz v3, :cond_66

    .line 490
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 491
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    .line 492
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    .line 493
    aget-object p0, p0, v7

    new-array p2, v6, [F

    aput v0, p2, v7

    aput v2, p2, v5

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 494
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 495
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 496
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 500
    :cond_66
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 505
    :cond_6a
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v6, [F

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v5

    .line 505
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 507
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_83

    goto :goto_85

    .line 510
    :cond_83
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 511
    :goto_85
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 512
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 513
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 514
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_a9

    if-eqz v3, :cond_a4

    .line 515
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_a9

    .line 516
    :cond_a4
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 518
    :cond_a9
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_b2

    .line 520
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 523
    :cond_b2
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 532
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 533
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 534
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 11

    .line 542
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 543
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 544
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    if-eqz v1, :cond_1d

    .line 545
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1d

    return-void

    .line 548
    :cond_1d
    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 549
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    .line 550
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_6c

    if-eqz v3, :cond_68

    .line 555
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 556
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    .line 557
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    .line 558
    aget-object p0, p0, v7

    new-array p2, v6, [F

    aput v0, p2, v7

    aput v2, p2, v5

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 559
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 560
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 561
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 565
    :cond_68
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 570
    :cond_6c
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v6, [F

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v5

    .line 570
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 572
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_85

    goto :goto_87

    .line 575
    :cond_85
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 576
    :goto_87
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 577
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 578
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 579
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_ab

    if-eqz v3, :cond_a6

    .line 580
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_ab

    .line 581
    :cond_a6
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 583
    :cond_ab
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_b4

    .line 585
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 588
    :cond_b4
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 598
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 599
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 600
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 601
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 11

    .line 417
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 418
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 419
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    if-eqz v1, :cond_1d

    .line 420
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1d

    return-void

    .line 423
    :cond_1d
    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 424
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    .line 425
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_69

    if-eqz v3, :cond_66

    .line 430
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 431
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    .line 432
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    .line 433
    aget-object p0, p0, v7

    new-array p2, v6, [F

    aput v0, p2, v7

    aput v2, p2, v5

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 434
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 435
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 436
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 440
    :cond_66
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 444
    :cond_69
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v6, [F

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v5

    .line 444
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 446
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 448
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 449
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_9f

    if-eqz v3, :cond_9a

    .line 450
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9f

    .line 451
    :cond_9a
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 453
    :cond_9f
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_a8

    .line 455
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    :cond_a8
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 466
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 467
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 468
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 469
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .registers 3

    .line 326
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V
    .registers 4

    .line 413
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .registers 3

    .line 473
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .registers 3

    .line 538
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .registers 3

    .line 408
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .registers 3

    .line 623
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_b

    .line 625
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_b
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 7

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 270
    :goto_b
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    if-nez v0, :cond_27

    const/4 v0, 0x0

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1c

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_27

    :cond_1c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v0, :cond_27

    .line 273
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 276
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_32

    move v2, v1

    .line 277
    :cond_32
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_3f

    .line 279
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr v2, v0

    .line 283
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_52

    .line 286
    :cond_4d
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 290
    :goto_52
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_60

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_65

    .line 293
    :cond_60
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 297
    :goto_65
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_73

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_78

    .line 300
    :cond_73
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 304
    :goto_78
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_88

    .line 305
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_91

    .line 307
    :cond_88
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 311
    :goto_91
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a1

    .line 312
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_aa

    .line 314
    :cond_a1
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_aa
    if-eqz v2, :cond_b0

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_b5

    .line 321
    :cond_b0
    sget p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_b5
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .registers 8

    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-eqz v0, :cond_5

    return-void

    .line 161
    :cond_5
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimationX(Landroid/view/View;)V

    goto :goto_1e

    .line 164
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    .line 165
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    :cond_1e
    :goto_1e
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimationY(Landroid/view/View;)V

    goto :goto_37

    .line 172
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_37

    .line 173
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    :cond_37
    :goto_37
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimationZ(Landroid/view/View;)V

    goto :goto_50

    .line 180
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_50

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 185
    :cond_50
    :goto_50
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 187
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_6d

    .line 188
    :cond_60
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6d

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 193
    :cond_6d
    :goto_6d
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 195
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_8a

    .line 196
    :cond_7d
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8a

    .line 197
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 200
    :cond_8a
    :goto_8a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 201
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v1, :cond_a4

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a6

    if-eqz v0, :cond_a4

    goto :goto_a6

    :cond_a4
    move v1, v3

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v1, v2

    .line 203
    :goto_a7
    sget v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 205
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAlphaAnimation(Landroid/view/View;)V

    goto :goto_e6

    .line 206
    :cond_b3
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e6

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v4, v5, v4

    if-nez v4, :cond_c5

    move v4, v2

    goto :goto_c6

    :cond_c5
    move v4, v3

    :goto_c6
    if-nez v1, :cond_d1

    if-nez v4, :cond_d1

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v4

    if-eqz v4, :cond_d1

    goto :goto_d2

    :cond_d1
    move v2, v3

    .line 211
    :goto_d2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-eqz v2, :cond_da

    const/4 v2, 0x2

    goto :goto_db

    :cond_da
    move v2, v3

    :goto_db
    if-eq v4, v2, :cond_e1

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 220
    :cond_e1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_e6
    :goto_e6
    if-eqz v1, :cond_e9

    const/4 v3, 0x4

    :cond_e9
    if-eq v3, v0, :cond_fb

    .line 226
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_f8

    move-object p0, p1

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result p0

    if-nez p0, :cond_fb

    .line 228
    :cond_f8
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_fb
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .registers 2

    .line 702
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_d

    .line 704
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 706
    :cond_d
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_1a

    .line 708
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 710
    :cond_1a
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_27

    .line 712
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 714
    :cond_27
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_34

    .line 716
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_34
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .registers 3

    .line 130
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 131
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 132
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 133
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 134
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 135
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 136
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 137
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewState { "

    .line 723
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x1

    move v1, v0

    :goto_10
    if-eqz p3, :cond_5c

    .line 728
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 730
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_1a
    if-ge v1, v3, :cond_56

    aget-object v6, v2, v1

    .line 731
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 732
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_53

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_53

    .line 733
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-eqz v7, :cond_35

    goto :goto_53

    :cond_35
    if-nez v5, :cond_3c

    const-string v5, ", "

    .line 737
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_3c
    :try_start_3c
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 741
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 744
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_52} :catch_52

    :catch_52
    move v5, v4

    :cond_53
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 749
    :cond_56
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    move v1, v5

    goto :goto_10

    :cond_5c
    const-string p0, " }"

    .line 751
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .registers 6

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    return-void
.end method

.method public isAnimating(Landroid/view/View;)Z
    .registers 3

    .line 234
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    return v0

    .line 237
    :cond_a
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    .line 240
    :cond_13
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v0

    .line 243
    :cond_1c
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_25

    return v0

    .line 246
    :cond_25
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v0

    .line 249
    :cond_2e
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .registers 3

    .line 605
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez p0, :cond_c

    const/4 p0, 0x4

    .line 606
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method
