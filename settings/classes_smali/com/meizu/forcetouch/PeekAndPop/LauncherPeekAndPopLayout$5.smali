.class Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;
.super Ljava/lang/Object;
.source "LauncherPeekAndPopLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->animConfirmToPeek()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 13

    .line 496
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iget-object v0, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 497
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-object v1, v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmRect:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    .line 498
    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$200(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    const/16 v2, 0xfa

    const v3, 0x3f666666  # 0.9f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createConfirmDrawableScaleAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 500
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 501
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iget-object v3, v3, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getHitRect(Landroid/graphics/Rect;)V

    .line 502
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 504
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-static {v4}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$300(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-static {v1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$300(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRadius()F

    move-result v7

    invoke-static {}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$100()F

    move-result v8

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-static {v1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$200(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Landroid/view/animation/PathInterpolator;

    move-result-object v9

    const/16 v10, 0xfa

    invoke-static/range {v4 .. v10}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$400(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Landroid/graphics/RectF;Landroid/graphics/RectF;FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 505
    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-static {v3}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$200(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Landroid/view/animation/PathInterpolator;

    move-result-object v10

    const v4, 0x3dcccccd  # 0.1f

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3dcccccd  # 0.1f

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    const/16 v11, 0xfa

    invoke-static/range {v3 .. v11}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$500(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;FFFFFFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 506
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iget v5, v4, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mMidBlurLevel:F

    iget v6, v4, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEndBlurLevel:F

    invoke-static {v4}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$200(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Landroid/view/animation/PathInterpolator;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createBlurAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 508
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    .line 509
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 510
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iput-boolean v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 511
    iget-object v0, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 512
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 513
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5$1;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5$1;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return v3
.end method
