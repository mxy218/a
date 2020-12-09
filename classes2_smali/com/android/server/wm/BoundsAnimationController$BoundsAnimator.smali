.class final Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
.super Landroid/animation/ValueAnimator;
.source "BoundsAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundsAnimator"
.end annotation


# instance fields
.field private final mAnimationType:I
    .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
    .end annotation
.end field

.field private final mFrom:Landroid/graphics/Rect;

.field private mFrozenTaskHeight:I

.field private mFrozenTaskWidth:I

.field private mMoveFromFullscreen:Z

.field private mMoveToFullscreen:Z

.field private mPrevSchedulePipModeChangedState:I

.field private final mResumeRunnable:Ljava/lang/Runnable;

.field private mSchedulePipModeChangedState:I

.field private mSkipAnimationEnd:Z

.field private mSkipFinalResize:Z

.field private final mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTaskBounds:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wm/BoundsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZLandroid/graphics/Rect;)V
    .registers 11
    .param p2  # Lcom/android/server/wm/BoundsAnimationTarget;
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 191
    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    .line 192
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 152
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    .line 153
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    .line 154
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    .line 155
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    .line 183
    new-instance p1, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$BoundsAnimator$eIPNx9WcD7moTPCByy2XhPMSdCs;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$BoundsAnimator$eIPNx9WcD7moTPCByy2XhPMSdCs;-><init>(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V

    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    .line 193
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    .line 194
    iput p3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mAnimationType:I

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 196
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 197
    iput p6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    .line 198
    iput p7, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    .line 199
    iput-boolean p8, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    .line 200
    iput-boolean p9, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    .line 201
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mAnimationType:I

    if-nez p1, :cond_85

    .line 209
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 210
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    .line 211
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    goto :goto_85

    .line 213
    :cond_5f
    invoke-virtual {p10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_70

    :cond_6c
    invoke-virtual {p10}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_70
    iput p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    .line 214
    invoke-virtual {p10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_83

    :cond_7f
    invoke-virtual {p10}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_83
    iput p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    .line 217
    :cond_85
    :goto_85
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mAnimationType:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancelAndCallAnimationEnd()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    return p0
.end method

.method private cancelAndCallAnimationEnd()V
    .registers 2

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    .line 387
    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 388
    return-void
.end method


# virtual methods
.method animatingToLargerSize()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public cancel()V
    .registers 2

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    .line 394
    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$400(Lcom/android/server/wm/BoundsAnimationController;)V

    .line 398
    return-void
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$600(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$600(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0

    .line 426
    :cond_f
    invoke-super {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method isAnimatingTo(Landroid/graphics/Rect;)Z
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$new$0$BoundsAnimationController$BoundsAnimator()V
    .registers 1

    .line 185
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    .line 186
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 380
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    .line 381
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    .line 382
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 352
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/BoundsAnimationController;->access$500(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/BoundsAnimationController;->access$000(Lcom/android/server/wm/BoundsAnimationController;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 353
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {p1, v0}, Lcom/android/server/wm/BoundsAnimationController;->access$002(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    .line 354
    return-void

    .line 357
    :cond_1b
    iget-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    if-nez p1, :cond_35

    .line 363
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 364
    :goto_28
    iget-boolean v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iget-boolean v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    .line 363
    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationEnd(ZLandroid/graphics/Rect;Z)V

    .line 369
    :cond_35
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 370
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 371
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/BoundsAnimationController;->access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/BoundsAnimationController;->access$400(Lcom/android/server/wm/BoundsAnimationController;)V

    .line 375
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 419
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 8

    .line 224
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/BoundsAnimationController;->access$002(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    .line 225
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/BoundsAnimationController;->access$400(Lcom/android/server/wm/BoundsAnimationController;)V

    .line 236
    iget p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    const/4 v1, 0x1

    if-nez p1, :cond_4b

    .line 237
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne v2, v1, :cond_32

    goto :goto_33

    :cond_32
    move v1, v0

    :goto_33
    iget v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mAnimationType:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationStart(ZZI)Z

    move-result p1

    .line 243
    if-eqz p1, :cond_61

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    .line 244
    invoke-interface {v0}, Lcom/android/server/wm/BoundsAnimationTarget;->shouldDeferStartOnMoveToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->pause()V

    goto :goto_61

    .line 247
    :cond_4b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5b

    iget p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne p1, v1, :cond_5b

    .line 253
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mAnimationType:I

    invoke-interface {p1, v1, v1, v0}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationStart(ZZI)Z

    move-result p1

    goto :goto_61

    .line 259
    :cond_5b
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-interface {p1}, Lcom/android/server/wm/BoundsAnimationTarget;->isAttached()Z

    move-result p1

    .line 262
    :cond_61
    :goto_61
    if-nez p1, :cond_67

    .line 265
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    .line 266
    return-void

    .line 271
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 272
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0, v1}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 279
    iget-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    if-eqz p1, :cond_7d

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->pause()V

    .line 283
    :cond_7d
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 302
    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-interface {v0, p1}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackAlpha(F)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 304
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancelAndCallAnimationEnd()V

    .line 306
    :cond_1a
    return-void

    .line 309
    :cond_1b
    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    .line 310
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000  # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 311
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 312
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 313
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    add-float/2addr v3, v4

    float-to-int p1, v3

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 318
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    iget-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v0, v2}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_9d

    .line 329
    iget p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne p1, v1, :cond_9a

    .line 330
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    .line 335
    :cond_9a
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancelAndCallAnimationEnd()V

    .line 337
    :cond_9d
    return-void
.end method

.method public pause()V
    .registers 5

    .line 288
    invoke-super {p0}, Landroid/animation/ValueAnimator;->pause()V

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$100(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    return-void
.end method

.method public resume()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$100(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    invoke-super {p0}, Landroid/animation/ValueAnimator;->resume()V

    .line 297
    return-void
.end method
