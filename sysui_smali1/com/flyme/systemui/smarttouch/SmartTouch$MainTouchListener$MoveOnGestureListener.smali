.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MoveOnGestureListener"
.end annotation


# instance fields
.field startY:F

.field state:Z

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->startY:F

    const/4 p1, 0x0

    .line 275
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->state:Z

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 281
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    iget p4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 285
    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p2, p2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p2, p3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$502(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    .line 286
    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p2, p2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p2, p3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$302(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    .line 287
    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p2, p2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object p2

    const-string/jumbo p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 288
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    return p0
.end method
