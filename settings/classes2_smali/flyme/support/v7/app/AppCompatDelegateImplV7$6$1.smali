.class Lflyme/support/v7/app/AppCompatDelegateImplV7$6$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV7$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$6;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV7$6;)V
    .registers 2

    .line 832
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$6$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$6;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 835
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$6$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$6;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$6;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 836
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$6$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$6;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$6;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 837
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$6$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$6;

    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$6;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    .line 842
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$6$1;->this$1:Lflyme/support/v7/app/AppCompatDelegateImplV7$6;

    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$6;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
