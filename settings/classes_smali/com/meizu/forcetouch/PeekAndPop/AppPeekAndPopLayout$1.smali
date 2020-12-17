.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;
.super Ljava/lang/Object;
.source "AppPeekAndPopLayout.java"

# interfaces
.implements Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$100(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 159
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animToNormal()V

    :cond_15
    return-void
.end method

.method public onInterceptWindowSystemUiVisiblityChanged()Z
    .registers 3

    .line 195
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x3

    if-ne p0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-static {v1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$000(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 149
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6

    .line 165
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_24

    if-eqz p1, :cond_20

    .line 167
    invoke-virtual {v0, v2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->setStatusBarTranslucent(Z)V

    .line 169
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$100(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 170
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1$1;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_20
    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->setStatusBarTranslucent(Z)V

    .line 190
    :cond_24
    :goto_24
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-ne v0, v2, :cond_2e

    if-eqz p1, :cond_2e

    iput v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    :cond_2e
    return-void
.end method
