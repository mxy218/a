.class Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5$1;->this$1:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 516
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5$1;->this$1:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;

    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    const/4 v0, 0x3

    iput v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 518
    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 519
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 522
    :cond_12
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5$1;->this$1:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$5;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz p0, :cond_1d

    .line 523
    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setStatic(Z)V

    :cond_1d
    return-void
.end method
