.class Lflyme/support/v7/view/menu/MenuItemWrapperJB;
.super Lflyme/support/v7/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Lflyme/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .registers 4

    .line 40
    new-instance v0, Lflyme/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;

    iget-object v1, p0, Lflyme/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lflyme/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;-><init>(Lflyme/support/v7/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
