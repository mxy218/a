.class public Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
.super Landroid/widget/LinearLayout;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

.field private mHandler:Landroid/os/Handler;

.field private mHeightListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;

.field private mNeedsFalsingProtection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 131
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    .line 140
    sget-object p0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, p0, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->updateRowContentViewAlpha()V

    return-void
.end method

.method private animateOpen(ZIILjava/lang/Runnable;)V
    .registers 12
    .param p4  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 277
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_42

    .line 279
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v3, p1

    .line 280
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v5, p1

    .line 281
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float p1, v3

    .line 283
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 285
    invoke-static {p0, p2, p3, v2, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 p2, 0x168

    .line 286
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 287
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;

    invoke-direct {p2, p0, p4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_6d

    .line 292
    :cond_42
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 293
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 294
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xf0

    .line 295
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 296
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;

    invoke-direct {p2, p0, p4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    .line 297
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6d

    :cond_66
    const-string p0, "NotificationGuts"

    const-string p1, "Failed to animate guts open"

    .line 301
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 200
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 201
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_f
    return-void
.end method

.method private updateRowContentViewAlpha()V
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    if-eqz v0, :cond_15

    .line 475
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->updateRowContentViewAlpha()V

    :cond_15
    return-void
.end method


# virtual methods
.method animateClose(IIZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_5a

    const/4 p3, -0x1

    if-eq p1, p3, :cond_f

    if-ne p2, p3, :cond_25

    .line 313
    :cond_f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    .line 316
    :cond_25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-double v2, p3

    .line 317
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-double v4, p3

    .line 318
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p3, v2

    .line 319
    invoke-static {p0, p1, p2, p3, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 p2, 0x168

    .line 321
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 322
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-direct {p2, p0, p0, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_89

    .line 327
    :cond_5a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 328
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xf0

    .line 329
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-direct {p2, p0, p0, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    .line 331
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_89

    :cond_7d
    const-string p1, "NotificationGuts"

    const-string p2, "Failed to animate guts close"

    .line 335
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->onFinishedClosing()V

    :goto_89
    return-void
.end method

.method public closeControls(IIZZ)V
    .registers 7

    .line 250
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 251
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 252
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;->dismissCurrentBlockingHelper()Z

    move-result v0

    .line 254
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 255
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    if-eqz p1, :cond_19

    .line 256
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    :cond_19
    return-void

    .line 261
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v1, :cond_26

    .line 262
    invoke-interface {v1, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->handleCloseControls(ZZ)Z

    move-result p3

    if-eqz p3, :cond_26

    if-eqz v0, :cond_38

    :cond_26
    xor-int/lit8 p3, v0, 0x1

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->animateClose(IIZ)V

    const/4 p1, 0x0

    .line 267
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setExposed(ZZ)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    if-eqz p1, :cond_38

    .line 269
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    :cond_38
    return-void
.end method

.method public closeControls(ZZIIZ)V
    .registers 7

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v0, :cond_1f

    .line 233
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_16

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 234
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 235
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->shouldBeSaved()Z

    move-result p1

    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    :cond_1f
    return-void
.end method

.method public closeControlsWithoutAnimate(Z)V
    .registers 4

    const-string v0, "NotificationGuts"

    const-string v1, "closeControlsWithoutAnimate: enter"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 460
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setExposed(ZZ)V

    if-eqz p1, :cond_1b

    .line 462
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    if-eqz p1, :cond_1b

    .line 463
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    .line 465
    :cond_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->updateRowContentViewAlpha()V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 208
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_7
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v1, :cond_d

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getActualHeight()I

    move-result p0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    :goto_11
    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isExposed()Z
    .registers 1

    .line 407
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    return p0
.end method

.method public isLeavebehind()Z
    .registers 1

    .line 411
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 182
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 183
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->notification_guts_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 185
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_14
    return-void
.end method

.method protected onHeightChanged()V
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;

    if-eqz v0, :cond_7

    .line 379
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    :cond_7
    return-void
.end method

.method public openControls(ZIIZLjava/lang/Runnable;)V
    .registers 6
    .param p5  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 218
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->animateOpen(ZIILjava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setExposed(ZZ)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->updateRowContentViewAlpha()V

    return-void
.end method

.method public resetFalsingCheck()V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_18

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method public setActualHeight(I)V
    .registers 2

    .line 341
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mActualHeight:I

    .line 342
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 2

    .line 359
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClipBottomAmount:I

    .line 360
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2

    .line 354
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClipTopAmount:I

    .line 355
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;)V
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    return-void
.end method

.method setExposed(ZZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 385
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 386
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 387
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    .line 388
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz p1, :cond_12

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    goto :goto_19

    .line 391
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 393
    :goto_19
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eq v0, p1, :cond_31

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz p1, :cond_31

    .line 394
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x20

    .line 395
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 396
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz p0, :cond_31

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_31
    return-void
.end method

.method public setGutsContent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;)V
    .registers 4

    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 191
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_b

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

.method public willBeRemoved()Z
    .registers 1

    .line 403
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->willBeRemoved()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method
