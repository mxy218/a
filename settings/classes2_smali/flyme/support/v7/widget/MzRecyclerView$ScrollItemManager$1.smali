.class Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager$1;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->startSmoothBackToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;)V
    .registers 2

    .line 3020
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 3023
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;

    invoke-static {p0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->access$3300(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3024
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;

    .line 3025
    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getOffsetBeforeSmoothBack()F

    move-result v1

    .line 3026
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->translateItemY(F)V

    goto :goto_e

    :cond_2d
    return-void
.end method
