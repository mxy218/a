.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;
.super Landroid/view/GestureDetector;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MoveGestureDetector"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Landroid/content/Context;)V
    .registers 4

    .line 263
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    .line 264
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)V

    invoke-direct {p0, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method
