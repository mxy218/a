.class Lflyme/support/v7/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$1;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 336
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$1;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    .line 340
    :cond_d
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$1;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_17

    .line 341
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void

    .line 345
    :cond_17
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    return-void

    .line 349
    :cond_1f
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    :cond_22
    :goto_22
    return-void
.end method
