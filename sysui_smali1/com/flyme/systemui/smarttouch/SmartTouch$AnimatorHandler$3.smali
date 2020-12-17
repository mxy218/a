.class Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field intEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

.field final synthetic val$startY:I

.field final synthetic val$toY:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;II)V
    .registers 4

    .line 514
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iput p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$startY:I

    iput p3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$toY:I

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    .line 515
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->intEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .registers 6

    .line 519
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 520
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 522
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->intEvaluator:Landroid/animation/IntEvaluator;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    double-to-float p1, v2

    iget v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$startY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$toY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 523
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, p1, :cond_63

    .line 524
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 525
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 526
    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_63
    return-void
.end method
