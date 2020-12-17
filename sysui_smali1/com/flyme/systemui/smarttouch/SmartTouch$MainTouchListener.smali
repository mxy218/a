.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.super Ljava/lang/Object;
.source "SmartTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;
    }
.end annotation


# instance fields
.field private final detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

.field private final moveDetector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

.field private moveState:Z

.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V
    .registers 4

    .line 182
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    .line 419
    new-instance p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Landroid/content/Context;Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;)V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    .line 421
    new-instance p1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveDetector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

    return-void
.end method

.method static synthetic access$702(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Z)Z
    .registers 2

    .line 182
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_1c

    .line 189
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_29

    :cond_1c
    if-ne p1, v2, :cond_29

    .line 192
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_29
    :goto_29
    const/4 v3, 0x0

    if-ne p1, v2, :cond_ce

    const-string v4, "SmartTouch"

    const-string/jumbo v5, "up"

    .line 196
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    if-eqz v4, :cond_ce

    new-array v1, v1, [I

    .line 199
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 201
    aget v4, v1, v2

    const/4 v5, 0x4

    const/16 v6, 0x3c

    if-ge v4, v6, :cond_6c

    .line 202
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4, v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$302(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    .line 203
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 204
    iput v5, v4, Landroid/os/Message;->what:I

    .line 205
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$300(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 206
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_6c
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "smarttouch"

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 210
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$500(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v6

    const-string v7, "position_x"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$300(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v6

    const-string v7, "position_y"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$600(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v4

    if-eqz v4, :cond_ce

    .line 214
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$600(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v4

    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x14

    .line 215
    aget v1, v1, v2

    if-le v1, v4, :cond_ce

    .line 216
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 217
    iput v5, v1, Landroid/os/Message;->what:I

    .line 218
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 219
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_ce
    if-eqz p1, :cond_da

    .line 226
    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    if-eqz v1, :cond_dc

    .line 227
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveDetector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 231
    :cond_da
    iput-boolean v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    .line 234
    :cond_dc
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-eq p1, v2, :cond_e5

    if-ne p1, v0, :cond_ea

    .line 237
    :cond_e5
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    invoke-virtual {p0, p2}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->onUp(Landroid/view/MotionEvent;)V

    :cond_ea
    return v2
.end method
