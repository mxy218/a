.class Lflyme/support/v7/widget/ActionBarOverlayLayout$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


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

    .line 139
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .line 148
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$002(Lflyme/support/v7/widget/ActionBarOverlayLayout;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 149
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$102(Lflyme/support/v7/widget/ActionBarOverlayLayout;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 142
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$002(Lflyme/support/v7/widget/ActionBarOverlayLayout;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 143
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->access$102(Lflyme/support/v7/widget/ActionBarOverlayLayout;Z)Z

    return-void
.end method
