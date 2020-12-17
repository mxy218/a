.class Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.super Lflyme/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV14"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
    .registers 3

    .line 177
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV14;

    .line 178
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 184
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatDelegateImplV14;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 185
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 188
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 197
    new-instance v0, Lflyme/support/v7/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV14;

    iget-object v1, v1, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lflyme/support/v7/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 205
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV14;

    invoke-static {v1, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV14;->access$000(Lflyme/support/v7/app/AppCompatDelegateImplV14;Landroid/view/ActionMode$Callback;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    .line 208
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->startMultiChoiceActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v1

    :goto_1a
    if-nez p1, :cond_22

    .line 211
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->startSupportActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;

    move-result-object p1

    :cond_22
    if-eqz p1, :cond_29

    .line 218
    invoke-virtual {v0, p1}, Lflyme/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lflyme/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_29
    return-object v1
.end method
