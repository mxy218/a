.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;)V
    .registers 2

    .line 1393
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29$1;->this$1:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1396
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29$1;->this$1:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;

    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1397
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29$1;->this$1:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-static {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$1400(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    return-void
.end method
