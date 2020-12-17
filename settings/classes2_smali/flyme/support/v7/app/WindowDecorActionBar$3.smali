.class Lflyme/support/v7/app/WindowDecorActionBar$3;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/WindowDecorActionBar;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 197
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$300(Lflyme/support/v7/app/WindowDecorActionBar;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$400(Lflyme/support/v7/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 198
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$400(Lflyme/support/v7/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 199
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$500(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 204
    :cond_23
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$000(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_36

    .line 206
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$000(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 208
    :cond_36
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$500(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$500(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 210
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$202(Lflyme/support/v7/app/WindowDecorActionBar;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 212
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->access$102(Lflyme/support/v7/app/WindowDecorActionBar;Z)Z

    .line 214
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-virtual {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 215
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$600(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarOverlayLayout;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 216
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$3;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->access$600(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarOverlayLayout;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_6a
    return-void
.end method
