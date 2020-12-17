.class Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$4;
.super Ljava/lang/Object;
.source "AbsPeekAndPopLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createConfirmDrawableScaleAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$4;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$4;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    .line 470
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$4;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
