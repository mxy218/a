.class Landroid/support/v4/app/FragmentManagerImpl$2$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/app/FragmentManagerImpl$2;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl$2;)V
    .registers 2

    .line 1658
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1661
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1662
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1663
    iget-object p0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_22
    return-void
.end method
