.class Lcom/meizu/common/widget/StretchSearchView$9;
.super Ljava/lang/Object;
.source "StretchSearchView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->stretchAmin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/StretchSearchView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/StretchSearchView;)V
    .registers 2

    .line 967
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 977
    iget-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-virtual {p1}, Lcom/meizu/common/widget/StretchSearchView;->afterStretchViewState()V

    .line 978
    iget-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/meizu/common/widget/StretchSearchView;->access$202(Lcom/meizu/common/widget/StretchSearchView;I)I

    .line 979
    iget-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {p1}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 980
    iget-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {p1}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {p0}, Lcom/meizu/common/widget/StretchSearchView;->access$900(Lcom/meizu/common/widget/StretchSearchView;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;->onStetchAnimationEnd(Landroid/view/View;)V

    :cond_22
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 970
    iget-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {p1}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 971
    iget-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {p1}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {p0}, Lcom/meizu/common/widget/StretchSearchView;->access$900(Lcom/meizu/common/widget/StretchSearchView;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;->onStetchAnimationStart(Landroid/view/View;)V

    :cond_17
    return-void
.end method
