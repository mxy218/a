.class Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$5;
.super Ljava/lang/Object;
.source "AbsPeekAndPopLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createBlurAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
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

    .line 482
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 486
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz p0, :cond_13

    .line 487
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setBlurLevel(F)V

    :cond_13
    return-void
.end method
