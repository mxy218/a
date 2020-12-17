.class final Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;
.super Landroid/os/Handler;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AnimatorHandler"
.end annotation


# instance fields
.field positoionSpring:Lcom/facebook/rebound/Spring;

.field springSystem:Lcom/facebook/rebound/SpringSystem;

.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V
    .registers 2

    .line 428
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 429
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 430
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const-string v0, "SmartTouch"

    .line 435
    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_196

    goto/16 :goto_194

    :pswitch_c  #0x5
    const-string p1, "handler Vibrator"

    .line 546
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_194

    .line 548
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    goto/16 :goto_194

    :pswitch_2a  #0x4
    const-string v1, "handler UpdatePositon"

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 508
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 509
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 510
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 514
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    new-instance v3, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;II)V

    invoke-virtual {v2, v3}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 531
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 532
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    invoke-virtual {p0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_89} :catch_18b

    goto/16 :goto_194

    .line 535
    :cond_8b
    :try_start_8b
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 537
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 538
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 539
    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_b3} :catch_b5

    goto/16 :goto_194

    :catch_b5
    move-exception p0

    .line 541
    :try_start_b6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_194

    :pswitch_bb  #0x3
    const-string p1, "handler AlphaOff"

    .line 502
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_194

    :pswitch_d9  #0x2
    const-string p1, "handler AlphaOn"

    .line 498
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_194

    :pswitch_fa  #0x1
    const-string p1, "handler ShowView"

    .line 449
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 470
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_194

    :pswitch_12d  #0x0
    const-string p1, "handler StableClick"

    .line 437
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p0

    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    invoke-virtual {p0, p1, v4}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V

    goto :goto_194

    :pswitch_13e  #0xffffffff
    const-string p1, "handler DismissView"

    .line 473
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 495
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_194

    :pswitch_166  #0xfffffffe
    const-string p1, "handler StablePrepare"

    .line 441
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p0

    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    invoke-virtual {p0, p1, v4}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V

    goto :goto_194

    :pswitch_177  #0xfffffffd
    const-string v1, "handler StableDrag"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p0

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-float p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_18a} :catch_18b

    goto :goto_194

    :catch_18b
    move-exception p0

    const-string p1, "handler ERROR"

    .line 553
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_194
    :goto_194
    return-void

    nop

    :pswitch_data_196
    .packed-switch -0x3
        :pswitch_177  #fffffffd
        :pswitch_166  #fffffffe
        :pswitch_13e  #ffffffff
        :pswitch_12d  #00000000
        :pswitch_fa  #00000001
        :pswitch_d9  #00000002
        :pswitch_bb  #00000003
        :pswitch_2a  #00000004
        :pswitch_c  #00000005
    .end packed-switch
.end method
