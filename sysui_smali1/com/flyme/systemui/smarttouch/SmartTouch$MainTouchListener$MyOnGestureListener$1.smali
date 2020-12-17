.class Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;
.super Lcom/flyme/systemui/smarttouch/TargetViewHelper;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 296
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-direct {p0, p2, p3}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public updateFloatWindow(I)V
    .registers 7

    .line 299
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$602(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p1, :cond_55

    new-array p1, v2, [I

    .line 302
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 303
    aget p1, p1, v1

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$300(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v1

    if-eq p1, v1, :cond_97

    .line 304
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 305
    iput v0, p1, Landroid/os/Message;->what:I

    .line 306
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$300(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 307
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_97

    :cond_55
    new-array v3, v2, [I

    .line 312
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 313
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    sub-int/2addr p1, v4

    .line 314
    aget v1, v3, v1

    if-le v1, p1, :cond_97

    .line 315
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 316
    iput v0, v1, Landroid/os/Message;->what:I

    .line 317
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 318
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_97
    :goto_97
    return-void
.end method
