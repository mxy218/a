.class Lflyme/support/v7/widget/DefaultItemAnimator$2;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$2;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lflyme/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 148
    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .line 149
    iget-object v2, p0, Lflyme/support/v7/widget/DefaultItemAnimator$2;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    goto :goto_6

    .line 151
    :cond_18
    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$2;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Lflyme/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method