.class Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 11958
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    const/4 v0, 0x1

    .line 11963
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 11964
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_f

    .line 11965
    iput-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 11969
    :cond_f
    iput-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 11970
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$1300(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 11971
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 11972
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_2f
    return-void
.end method
