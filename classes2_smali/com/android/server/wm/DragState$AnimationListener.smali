.class Lcom/android/server/wm/DragState$AnimationListener;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/DragState;)V
    .registers 2

    .line 696
    iput-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V
    .registers 3

    .line 696
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 720
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 727
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 730
    iget-object p1, p1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 731
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 723
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 717
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    .line 700
    const-string v0, "scale"

    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 701
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v2, "x"

    .line 703
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "y"

    .line 704
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 701
    invoke-virtual {v7, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 705
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v2, "alpha"

    .line 707
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 705
    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 708
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v2, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 710
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 711
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 708
    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 712
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_5e

    .line 713
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 714
    return-void

    .line 700
    :catchall_5e
    move-exception p1

    :try_start_5f
    throw p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 713
    :catchall_60
    move-exception v0

    :try_start_61
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_69
    throw v0
.end method
