.class Landroidx/leanback/widget/BaseCardView$4;
.super Ljava/lang/Object;
.source "BaseCardView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/BaseCardView;)V
    .registers 2

    .line 796
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$4;->this$0:Landroidx/leanback/widget/BaseCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .line 803
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$4;->this$0:Landroidx/leanback/widget/BaseCardView;

    iget p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_28

    const/4 p1, 0x0

    .line 804
    :goto_c
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView$4;->this$0:Landroidx/leanback/widget/BaseCardView;

    iget-object v0, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_28

    .line 805
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView$4;->this$0:Landroidx/leanback/widget/BaseCardView;

    iget-object v0, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_28
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
