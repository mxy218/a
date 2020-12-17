.class Lcom/flyme/systemui/qs/MzQSTileLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzQSTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/MzQSTileLayout;->showQsCustomize(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)V
    .registers 3

    .line 416
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iput-boolean p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 424
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 425
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->val$show:Z

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$502(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    .line 426
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$602(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    .line 427
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$702(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    .line 428
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->updateResources()Z

    .line 429
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$4;->val$show:Z

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 419
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
