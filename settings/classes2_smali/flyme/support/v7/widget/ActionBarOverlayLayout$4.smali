.class Lflyme/support/v7/widget/ActionBarOverlayLayout$4;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/ActionBarOverlayLayout;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 182
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$300(Lflyme/support/v7/widget/ActionBarOverlayLayout;)V

    .line 183
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$500(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    .line 184
    invoke-static {v2}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$500(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    .line 185
    invoke-static {v2}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$400(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Landroidx/core/view/ViewPropertyAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 183
    invoke-static {v0, v1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$002(Lflyme/support/v7/widget/ActionBarOverlayLayout;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 186
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$600(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$600(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_64

    .line 187
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$600(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    .line 188
    invoke-static {v2}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$600(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$4;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    .line 189
    invoke-static {p0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$700(Lflyme/support/v7/widget/ActionBarOverlayLayout;)Landroidx/core/view/ViewPropertyAnimatorListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 187
    invoke-static {v0, v1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$202(Lflyme/support/v7/widget/ActionBarOverlayLayout;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_64
    return-void
.end method
