.class Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
.super Lflyme/support/v7/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnActionExpandListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/view/menu/BaseWrapper<",
        "Landroid/view/MenuItem$OnActionExpandListener;",
        ">;",
        "Landroid/view/MenuItem$OnActionExpandListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lflyme/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V
    .registers 3

    .line 332
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lflyme/support/v7/view/menu/MenuItemWrapperICS;

    .line 333
    invoke-direct {p0, p2}, Lflyme/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 3

    .line 343
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lflyme/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3

    .line 338
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lflyme/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
