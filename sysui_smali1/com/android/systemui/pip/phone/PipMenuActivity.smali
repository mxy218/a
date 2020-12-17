.class public Lcom/android/systemui/pip/phone/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mDismissButton:Landroid/view/View;

.field private mExpandButton:Landroid/widget/ImageView;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mSettingsButton:Landroid/view/View;

.field private mToControllerMessenger:Landroid/os/Messenger;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    .line 178
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$3;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 6

    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateDismissFraction(F)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/phone/PipMenuActivity;I)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(I)V

    return-void
.end method

.method private cancelDelayedFinish()V
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissPip()V
    .registers 4

    .line 538
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$guHLrBiStjvmB9r01MbFqRGaK3c;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$guHLrBiStjvmB9r01MbFqRGaK3c;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method private expandPip()V
    .registers 3

    .line 529
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$gxeJOYpgn30UbyKen9nD4GpRdFQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$gxeJOYpgn30UbyKen9nD4GpRdFQ;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method private hideMenu()V
    .registers 2

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;ZZ)V
    .registers 13

    .line 357
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_7e

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 360
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 362
    :cond_d
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 363
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 364
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 363
    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 365
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 366
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    .line 367
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    aput v4, v6, v5

    .line 366
    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 368
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    .line 369
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v0

    aput v4, v7, v5

    .line 368
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 370
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p2, v6, v0

    aput-object v1, v6, v5

    aput-object v3, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 371
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x7d

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 373
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMenuActivity$5;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_81

    .line 390
    :cond_7e
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    :goto_81
    return-void
.end method

.method static synthetic lambda$updateActionViews$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$updateActionViews$4(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, -0x1

    .line 462
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 463
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$updateActionViews$5(Landroid/app/RemoteAction;)V
    .registers 3

    .line 470
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string v0, "PipMenuActivity"

    const-string v1, "Failed to send action"

    .line 472
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method private notifyActivityCallback(Landroid/os/Messenger;)V
    .registers 4

    .line 558
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x68

    .line 559
    iput v1, v0, Landroid/os/Message;->what:I

    .line 560
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string p1, "Could not notify controller of activity finished"

    .line 561
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private notifyMenuStateChange(I)V
    .registers 4

    .line 519
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    .line 520
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    .line 521
    iput v1, v0, Landroid/os/Message;->what:I

    .line 522
    iput p1, v0, Landroid/os/Message;->arg1:I

    const-string p1, "Could not notify controller of PIP menu visibility"

    .line 523
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private repostDelayedFinish(I)V
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    .line 588
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendEmptyMessage(ILjava/lang/String;)V
    .registers 4

    .line 565
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 566
    iput p1, v0, Landroid/os/Message;->what:I

    .line 567
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessage(Landroid/os/Message;Ljava/lang/String;)V
    .registers 3

    .line 571
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez p0, :cond_5

    return-void

    .line 575
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    move-exception p0

    const-string p1, "PipMenuActivity"

    .line 577
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method private setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 422
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    return-void
.end method

.method private showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 13

    .line 301
    iput-boolean p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 302
    iget p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq p3, p1, :cond_a3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p5, :cond_11

    if-eq p3, v2, :cond_f

    if-ne p1, v2, :cond_11

    :cond_f
    move p3, v1

    goto :goto_12

    :cond_11
    move p3, v0

    :goto_12
    xor-int/2addr p3, v1

    .line 307
    iput-boolean p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 309
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 310
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_22

    .line 311
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 313
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 314
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 315
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p5, v2, [F

    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, p5, v0

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, p5, v1

    .line 315
    invoke-static {p2, p3, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 317
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    sget-object p5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    .line 319
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v0

    aput v3, v4, v1

    .line 318
    invoke-static {p3, p5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 320
    iget-object p5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    .line 321
    invoke-virtual {p5}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v0

    aput v3, v5, v1

    .line 320
    invoke-static {p5, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    if-ne p1, v2, :cond_7a

    .line 323
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p2, v3, v0

    aput-object p3, v3, v1

    aput-object p5, v3, v2

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_83

    .line 325
    :cond_7a
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p5, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 327
    :goto_83
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 328
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x7d

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_9d

    .line 330
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/systemui/pip/phone/PipMenuActivity$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$4;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    :cond_9d
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_aa

    :cond_a3
    if-eqz p4, :cond_aa

    const/16 p1, 0x7d0

    .line 342
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(I)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method private showSettings()V
    .registers 6

    .line 546
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    .line 547
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 548
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 549
    new-instance v2, Landroid/content/Intent;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 550
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.user_handle"

    .line 551
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 552
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 553
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3c
    return-void
.end method

.method private updateActionViews(Landroid/graphics/Rect;)V
    .registers 10

    .line 426
    sget v0, Lcom/android/systemui/R$id;->expand_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 427
    sget v1, Lcom/android/systemui/R$id;->actions_container:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 428
    sget-object v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 433
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_104

    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    goto/16 :goto_104

    :cond_24
    const/4 v2, 0x0

    .line 436
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e2

    .line 439
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 440
    :goto_30
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 441
    sget v4, Lcom/android/systemui/R$layout;->pip_menu_action:I

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 443
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    :cond_4e
    move v1, v2

    .line 447
    :goto_4f
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_6f

    .line 448
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_67

    move v5, v2

    goto :goto_69

    :cond_67
    const/16 v5, 0x8

    :goto_69
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_6f
    if-eqz p1, :cond_7c

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le v1, p1, :cond_7c

    goto :goto_7d

    :cond_7c
    move v3, v2

    :goto_7d
    move p1, v2

    .line 456
    :goto_7e
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_e2

    .line 457
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    .line 458
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 461
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$ElzPpK0Puw-PlOEH67SuhTD5JYQ;

    invoke-direct {v6, v4}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$ElzPpK0Puw-PlOEH67SuhTD5JYQ;-><init>(Landroid/widget/ImageView;)V

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p0, v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 465
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 467
    new-instance v5, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/app/RemoteAction;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    :cond_b9
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 478
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_c9

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_cc

    :cond_c9
    const v1, 0x3f0a3d71  # 0.54f

    :goto_cc
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 482
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_dc

    if-lez p1, :cond_dc

    .line 483
    iget v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    goto :goto_dd

    :cond_dc
    move v4, v2

    :goto_dd
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_7e

    .line 490
    :cond_e2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 491
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->pip_action_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 493
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->pip_expand_container_edge_margin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 495
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_108

    :cond_104
    :goto_104
    const/4 p0, 0x4

    .line 434
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_108
    return-void
.end method

.method private updateDismissFraction(F)V
    .registers 7

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    .line 502
    iget v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/high16 v2, 0x437f0000  # 255.0f

    const v3, 0x3f19999a  # 0.6f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_25

    .line 503
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr v0, v1

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    mul-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_30

    :cond_25
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2d

    .line 511
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2d
    mul-float/2addr p1, v3

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 515
    :goto_30
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private updateFromIntent(Landroid/content/Intent;)V
    .registers 10

    const-string v0, "messenger"

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    .line 396
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_19

    const-string p1, "PipMenuActivity"

    const-string v0, "Controller messenger is null. Stopping."

    .line 397
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    return-void

    .line 401
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    const-string v0, "actions"

    .line 403
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    if-eqz v0, :cond_36

    .line 405
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 406
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_36
    const/4 v0, 0x0

    const-string v1, "menu_state"

    .line 409
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_63

    const-string/jumbo v1, "stack_bounds"

    .line 411
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/graphics/Rect;

    const-string v1, "movement_bounds"

    .line 412
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const-string v2, "allow_timeout"

    .line 413
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "resize_menu_on_show"

    .line 414
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move-object v2, p0

    .line 415
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_63
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 278
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 280
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public synthetic lambda$dismissPip$8$PipMenuActivity()V
    .registers 3

    const/16 v0, 0x67

    const-string v1, "Could not notify controller to dismiss PIP"

    .line 539
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$expandPip$7$PipMenuActivity()V
    .registers 3

    const/16 v0, 0x65

    const-string v1, "Could not notify controller to expand PIP"

    .line 530
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$PipMenuActivity(Landroid/view/View;)V
    .registers 3

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_c

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showSettings()V

    :cond_c
    return-void
.end method

.method public synthetic lambda$onCreate$1$PipMenuActivity(Landroid/view/View;)V
    .registers 2

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dismissPip()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$PipMenuActivity(Landroid/view/View;)V
    .registers 3

    .line 212
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_e

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    :cond_e
    return-void
.end method

.method public synthetic lambda$updateActionViews$6$PipMenuActivity(Landroid/app/RemoteAction;Landroid/view/View;)V
    .registers 3

    .line 468
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$KxDwr2Rt3pvR-EKt-FVSgFixejo;

    invoke-direct {p2, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$KxDwr2Rt3pvR-EKt-FVSgFixejo;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    sget p1, Lcom/android/systemui/R$layout;->pip_menu_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 194
    const-class p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 195
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 197
    sget p1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    .line 198
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget p1, Lcom/android/systemui/R$id;->menu_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    .line 200
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 201
    sget p1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    .line 202
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4MVIZwVdJN3lkWpqrFrI53Q9bPQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4MVIZwVdJN3lkWpqrFrI53Q9bPQ;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget p1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    .line 209
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$lkNLpysIkUfrlXCWX9bvozrYe1U;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$lkNLpysIkUfrlXCWX9bvozrYe1U;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    sget p1, Lcom/android/systemui/R$id;->expand_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$70yHDyzrwE1GNEVEQrmSEL7H6fY;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$70yHDyzrwE1GNEVEQrmSEL7H6fY;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    sget p1, Lcom/android/systemui/R$id;->actions_group:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->pip_between_action_padding_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    .line 219
    sget p1, Lcom/android/systemui/R$id;->expand_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 222
    sget p1, Lcom/android/systemui/R$string;->pip_menu_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 223
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setDisablePreviewScreenshots(Z)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    if-nez p1, :cond_5

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    :cond_5
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method public onUserInteraction()V
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x7d0

    .line 235
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(I)V

    :cond_9
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 1

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2

    return-void
.end method
