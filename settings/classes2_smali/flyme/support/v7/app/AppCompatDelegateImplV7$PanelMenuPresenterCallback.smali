.class final Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;
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
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V
    .registers 2

    .line 1866
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$1;)V
    .registers 3

    .line 1866
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 7

    .line 1869
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->getRootMenu()Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 1871
    :goto_a
    iget-object v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    if-eqz v2, :cond_f

    move-object p1, v0

    :cond_f
    invoke-static {v3, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->access$900(Lflyme/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz v2, :cond_24

    .line 1874
    iget-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget v2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-static {p2, v2, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->access$1000(Lflyme/support/v7/app/AppCompatDelegateImplV7;ILflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1875
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {p0, p1, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->access$1100(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_29

    .line 1879
    :cond_24
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->access$1100(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z
    .registers 4

    if-nez p1, :cond_1b

    .line 1886
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-boolean v1, v0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v1, :cond_1b

    .line 1887
    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1888
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_1b

    const/16 p0, 0x6c

    .line 1889
    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method
