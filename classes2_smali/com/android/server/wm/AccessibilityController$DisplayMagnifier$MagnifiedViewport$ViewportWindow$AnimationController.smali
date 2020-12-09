.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimationController"
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final MSG_FRAME_SHOWN_STATE_CHANGED:I = 0x1

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"


# instance fields
.field private final mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 924
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 925
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 926
    const/4 p3, 0x2

    new-array p3, p3, [I

    fill-array-data p3, :array_32

    const-string v0, "alpha"

    invoke-static {p1, v0, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 929
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40200000  # 2.5f

    invoke-direct {p1, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 930
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0002

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 934
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 935
    return-void

    nop

    :array_32
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 944
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_46

    .line 946
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 947
    :goto_e
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    .line 949
    :goto_14
    if-eqz v1, :cond_32

    .line 950
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 951
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_46

    .line 953
    :cond_24
    if-eqz v0, :cond_2c

    .line 954
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_46

    .line 956
    :cond_2c
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_46

    .line 960
    :cond_32
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 961
    if-eqz v0, :cond_41

    .line 962
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    goto :goto_46

    .line 964
    :cond_41
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    .line 969
    :goto_46
    return-void
.end method

.method public onFrameShownStateChanged(ZZ)V
    .registers 4

    .line 938
    nop

    .line 939
    nop

    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 939
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 940
    return-void
.end method
