.class Lcom/flyme/systemui/fullscreen/views/EdgeBackView$1;
.super Ljava/lang/Object;
.source "EdgeBackView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->triggerBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fullscreen/views/EdgeBackView;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$1;->this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$1;->this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$1;->this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    iget v2, v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mBackViewWidth:F

    iget v1, v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->mMaxHeight:F

    invoke-static {v0, p1, v2, v1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->access$000(Lcom/flyme/systemui/fullscreen/views/EdgeBackView;FFF)V

    .line 326
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$1;->this$0:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
