.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->onTouchMove(Landroid/view/MotionEvent;)V
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

    .line 608
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$8;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 612
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$8;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget v0, v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v0, 0x3

    .line 613
    iput v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    .line 614
    :cond_c
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$8;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 615
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz p0, :cond_19

    const/4 p1, 0x1

    .line 616
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setStatic(Z)V

    :cond_19
    return-void
.end method
