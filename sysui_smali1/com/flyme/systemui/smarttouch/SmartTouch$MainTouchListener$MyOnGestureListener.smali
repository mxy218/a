.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyOnGestureListener"
.end annotation


# instance fields
.field isDoubleTab:Z

.field final targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)V
    .registers 4

    .line 295
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 296
    new-instance p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 p1, 0x0

    .line 324
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 343
    iput-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    goto :goto_26

    .line 344
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_26

    const/4 p1, 0x0

    .line 345
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 346
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-eqz p1, :cond_21

    .line 347
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onDoubleTapUp()Z

    goto :goto_26

    .line 349
    :cond_21
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onSingleTapUp()Z

    :cond_26
    :goto_26
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 327
    iget-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 330
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->initOnDown()V

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 410
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p3, p2}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onFling(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 376
    iget-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_long:I

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    .line 377
    invoke-static {p1, v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->access$702(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Z)Z

    .line 378
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetForMove()V

    .line 380
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    :cond_2d
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    sub-float/2addr p3, p4

    .line 387
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 388
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p4, 0x41f00000  # 30.0f

    cmpl-float p1, p1, p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_2d

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_27

    goto :goto_2d

    .line 403
    :cond_27
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0, v0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_6f

    :cond_2d
    :goto_2d
    const-wide v2, 0x4066800000000000L  # 180.0

    float-to-double p1, p2

    float-to-double p3, p3

    .line 389
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, v2

    const-wide p3, 0x400921fb54442d18L  # Math.PI

    div-double/2addr p1, p3

    .line 390
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    double-to-int p3, p3

    const/16 p4, 0x2d

    if-ge p3, p4, :cond_4e

    .line 392
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0, v1, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_6f

    :cond_4e
    const/16 p4, 0x87

    if-ge p3, p4, :cond_68

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-lez p1, :cond_60

    .line 395
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/16 p1, -0x5a

    invoke-virtual {p0, v1, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_6f

    .line 397
    :cond_60
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/16 p1, 0x5a

    invoke-virtual {p0, v1, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_6f

    .line 400
    :cond_68
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/16 p1, 0xb4

    invoke-virtual {p0, v1, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    :goto_6f
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 367
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez p1, :cond_13

    .line 368
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onSingleTapUp()Z

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 358
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-nez p1, :cond_f

    .line 359
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onSingleTapUp()Z

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onUnLock()V
    .registers 1

    .line 415
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onUnLock()V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 336
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->animateOnUp(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method
