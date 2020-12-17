.class Lcom/meizu/common/widget/SubscribeButton$2;
.super Ljava/lang/Object;
.source "SubscribeButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SubscribeButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SubscribeButton;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 505
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 508
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-boolean v1, v0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_a9

    .line 509
    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$200(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/SubscribeButton;->access$102(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 510
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$100(Lcom/meizu/common/widget/SubscribeButton;)F

    move-result v1

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/meizu/common/widget/SubscribeButton;->access$302(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 512
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v0

    if-gez v0, :cond_6b

    .line 513
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/meizu/common/widget/SubscribeButton;->access$502(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 514
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {p1}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$500(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_140

    .line 516
    :cond_6b
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/meizu/common/widget/SubscribeButton;->access$1002(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 517
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {p1}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$1000(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_140

    .line 520
    :cond_a9
    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$200(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/SubscribeButton;->access$302(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 521
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$300(Lcom/meizu/common/widget/SubscribeButton;)F

    move-result v1

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/meizu/common/widget/SubscribeButton;->access$102(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 523
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v0

    if-gez v0, :cond_10b

    .line 524
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/meizu/common/widget/SubscribeButton;->access$1002(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 525
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {p1}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$1000(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_140

    .line 527
    :cond_10b
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/meizu/common/widget/SubscribeButton;->access$502(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 528
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {p1}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$500(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 531
    :goto_140
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method
