.class Lflyme/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/ActionMenuView;)V
    .registers 2

    .line 805
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;->this$0:Lflyme/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/ActionMenuView;Lflyme/support/v7/widget/ActionMenuView$1;)V
    .registers 3

    .line 805
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Lflyme/support/v7/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
