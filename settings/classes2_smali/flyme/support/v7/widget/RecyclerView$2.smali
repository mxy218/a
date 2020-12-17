.class Lflyme/support/v7/widget/RecyclerView$2;
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

    .line 496
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$2;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 499
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$2;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_9

    .line 500
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 502
    :cond_9
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$2;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method
