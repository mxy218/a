.class Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/ActionMenuView;)V
    .registers 2

    .line 790
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/ActionMenuView;Lflyme/support/v7/widget/ActionMenuView$1;)V
    .registers 3

    .line 790
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Lflyme/support/v7/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 793
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lflyme/support/v7/widget/ActionMenuView;

    invoke-static {p1}, Lflyme/support/v7/widget/ActionMenuView;->access$200(Lflyme/support/v7/widget/ActionMenuView;)Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lflyme/support/v7/widget/ActionMenuView;

    .line 794
    invoke-static {p0}, Lflyme/support/v7/widget/ActionMenuView;->access$200(Lflyme/support/v7/widget/ActionMenuView;)Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lflyme/support/v7/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public onMenuModeChange(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .line 799
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lflyme/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Lflyme/support/v7/widget/ActionMenuView;->access$300(Lflyme/support/v7/widget/ActionMenuView;)Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 800
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lflyme/support/v7/widget/ActionMenuView;

    invoke-static {p0}, Lflyme/support/v7/widget/ActionMenuView;->access$300(Lflyme/support/v7/widget/ActionMenuView;)Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lflyme/support/v7/view/menu/MenuBuilder;)V

    :cond_11
    return-void
.end method
