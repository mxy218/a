.class Lflyme/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
.super Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AppCompatDelegateImplV23;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV23;

    .line 55
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 60
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV23;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatDelegateImplV14;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_b

    goto :goto_10

    .line 64
    :cond_b
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 68
    :cond_10
    :goto_10
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
