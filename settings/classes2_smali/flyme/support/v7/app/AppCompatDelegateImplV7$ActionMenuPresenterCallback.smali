.class final Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V
    .registers 2

    .line 1896
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$1;)V
    .registers 3

    .line 1896
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 1908
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->access$1200(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z
    .registers 3

    .line 1899
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object p0

    if-eqz p0, :cond_d

    const/16 v0, 0x6c

    .line 1901
    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_d
    const/4 p0, 0x1

    return p0
.end method
