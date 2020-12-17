.class public Lcom/meizu/forcetouch/PeekAndPop/DispatchLayout;
.super Landroid/widget/FrameLayout;
.source "DispatchLayout.java"


# instance fields
.field private mEventHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/DispatchLayout;->mEventHandler:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;

    :goto_c
    if-eqz v0, :cond_13

    .line 25
    invoke-interface {v0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;->onTouch(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0

    .line 28
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/DispatchLayout;->mEventHandler:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;

    :goto_c
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 62
    invoke-interface {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;->onInterceptWindowSystemUiVisiblityChanged()Z

    move-result v1

    :cond_13
    if-nez v1, :cond_18

    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowSystemUiVisiblityChanged(I)V

    :cond_18
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 42
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/DispatchLayout;->mEventHandler:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_f

    :cond_9
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;

    :goto_f
    if-eqz p0, :cond_14

    .line 44
    invoke-interface {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;->onDetachedFromWindow()V

    :cond_14
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 51
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/DispatchLayout;->mEventHandler:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_f

    :cond_9
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;

    :goto_f
    if-eqz p0, :cond_14

    .line 53
    invoke-interface {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;->onWindowFocusChanged(Z)V

    :cond_14
    return-void
.end method

.method public setTouchEventHandler(Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/DispatchLayout;->mEventHandler:Ljava/lang/ref/WeakReference;

    goto :goto_d

    .line 35
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/DispatchLayout;->mEventHandler:Ljava/lang/ref/WeakReference;

    :goto_d
    return-void
.end method
