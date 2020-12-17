.class Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->onDestroyActionMode(Lflyme/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;)V
    .registers 2

    .line 1844
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 1847
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1848
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_17

    .line 1849
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_30

    .line 1850
    :cond_17
    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_30

    .line 1851
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1853
    :cond_30
    :goto_30
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1854
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1855
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method
