.class Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FlymeWindowModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeWindowModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"  # Landroid/view/MotionEvent;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$000(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$100(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/view/MotionEvent;)V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"  # Landroid/view/MotionEvent;

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$000(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$100(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/view/MotionEvent;)V

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
