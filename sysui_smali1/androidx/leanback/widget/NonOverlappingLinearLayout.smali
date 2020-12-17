.class public Landroidx/leanback/widget/NonOverlappingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NonOverlappingLinearLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field mDeferFocusableViewAvailableInLayout:Z

.field mFocusableViewAvailableFixEnabled:Z

.field final mSortedAvailableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/NonOverlappingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/NonOverlappingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mFocusableViewAvailableFixEnabled:Z

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5

    .line 96
    iget-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz v0, :cond_2b

    move-object v0, p1

    :goto_5
    const/4 v1, -0x1

    if-eq v0, p0, :cond_1c

    if-eqz v0, :cond_1c

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_15

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1d

    .line 104
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_5

    :cond_1c
    move v0, v1

    :goto_1d
    if-eq v0, v1, :cond_2e

    .line 107
    iget-object p0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 110
    :cond_2b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    const/4 v0, 0x0

    .line 65
    :try_start_1
    iget-boolean v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mFocusableViewAvailableFixEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_14

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 68
    iget-boolean v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz v1, :cond_4b

    .line 69
    :goto_1b
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v1, v3, :cond_34

    .line 70
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1b

    .line 72
    :cond_34
    :goto_34
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 73
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 76
    :cond_4b
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 77
    iget-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz p1, :cond_81

    move p1, v0

    .line 78
    :goto_53
    iget-object p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_81

    move p2, v0

    .line 79
    :goto_5c
    iget-object p3, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_7e

    .line 80
    iget-object p3, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-super {p0, p3}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V
    :try_end_7b
    .catchall {:try_start_1 .. :try_end_7b} :catchall_9e

    add-int/lit8 p2, p2, 0x1

    goto :goto_5c

    :cond_7e
    add-int/lit8 p1, p1, 0x1

    goto :goto_53

    .line 85
    :cond_81
    iget-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz p1, :cond_9d

    .line 86
    iput-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 87
    :goto_87
    iget-object p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_9d

    .line 88
    iget-object p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    :cond_9d
    return-void

    :catchall_9e
    move-exception p1

    .line 85
    iget-boolean p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz p2, :cond_bb

    .line 86
    iput-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 87
    :goto_a5
    iget-object p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_bb

    .line 88
    iget-object p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 87
    :cond_bb
    throw p1
.end method
