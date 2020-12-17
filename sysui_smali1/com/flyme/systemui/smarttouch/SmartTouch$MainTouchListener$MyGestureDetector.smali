.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;
.super Landroid/view/GestureDetector;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyGestureDetector"
.end annotation


# instance fields
.field public final listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Landroid/content/Context;Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;)V
    .registers 4

    .line 246
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    .line 247
    invoke-direct {p0, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 248
    iput-object p3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    const/4 p1, 0x1

    .line 249
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onUnLock()V
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->onUnLock()V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    return-void
.end method
