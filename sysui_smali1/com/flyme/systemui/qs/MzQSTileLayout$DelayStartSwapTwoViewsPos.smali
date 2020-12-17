.class Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;
.super Ljava/lang/Object;
.source "MzQSTileLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayStartSwapTwoViewsPos"
.end annotation


# instance fields
.field private mDragView:Landroid/view/View;

.field private mDropView:Landroid/view/View;

.field private mHostView:Landroid/view/ViewGroup;

.field private mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

.field private mSwapDelay:J

.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/ViewGroup;Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V
    .registers 5

    .line 549
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    const-wide/16 p1, 0x1f4

    .line 551
    iput-wide p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    .line 552
    new-instance p1, Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-direct {p1, p4}, Lcom/flyme/systemui/qs/SwapAnimationController;-><init>(Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    .line 553
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-virtual {p0, p3}, Lcom/flyme/systemui/qs/SwapAnimationController;->addListener(Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;)V

    return-void
.end method


# virtual methods
.method public removeMyself()V
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 589
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/flyme/systemui/qs/SwapAnimationController;->swap(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setSwapDelay(J)V
    .registers 5

    .line 557
    iget-wide v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_8

    .line 558
    iput-wide p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    :cond_8
    return-void
.end method

.method public setSwapDuration(J)V
    .registers 3

    .line 563
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->setDuration(J)V

    return-void
.end method

.method public swap(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 568
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->removeMyself()V

    .line 570
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    .line 571
    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    .line 573
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-wide v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
