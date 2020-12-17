.class public Lflyme/support/v7/widget/FitsWindowsContentLayout;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "FitsWindowsContentLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/FitsWindowsContentLayout$OnStartActionModeListener;
    }
.end annotation


# instance fields
.field private mOnStartActionModeListener:Lflyme/support/v7/widget/FitsWindowsContentLayout$OnStartActionModeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public makeOptionalFitsSystemWindows()V
    .registers 1

    return-void
.end method

.method public setOnStartActionModeListener(Lflyme/support/v7/widget/FitsWindowsContentLayout$OnStartActionModeListener;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lflyme/support/v7/widget/FitsWindowsContentLayout;->mOnStartActionModeListener:Lflyme/support/v7/widget/FitsWindowsContentLayout$OnStartActionModeListener;

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 6

    .line 49
    iget-object v0, p0, Lflyme/support/v7/widget/FitsWindowsContentLayout;->mOnStartActionModeListener:Lflyme/support/v7/widget/FitsWindowsContentLayout$OnStartActionModeListener;

    if-eqz v0, :cond_15

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_10

    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, p2, v1}, Lflyme/support/v7/widget/FitsWindowsContentLayout$OnStartActionModeListener;->onContentStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_16

    .line 53
    :cond_10
    invoke-interface {v0, p2}, Lflyme/support/v7/widget/FitsWindowsContentLayout$OnStartActionModeListener;->onContentStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_1c

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :cond_1c
    return-object v0
.end method
