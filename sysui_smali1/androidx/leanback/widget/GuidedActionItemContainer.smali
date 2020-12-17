.class Landroidx/leanback/widget/GuidedActionItemContainer;
.super Landroidx/leanback/widget/NonOverlappingLinearLayoutWithForeground;
.source "GuidedActionItemContainer.java"


# instance fields
.field private mFocusOutAllowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/GuidedActionItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/NonOverlappingLinearLayoutWithForeground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/leanback/widget/GuidedActionItemContainer;->mFocusOutAllowed:Z

    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4

    .line 42
    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionItemContainer;->mFocusOutAllowed:Z

    if-nez v0, :cond_18

    invoke-static {p0, p1}, Landroidx/leanback/widget/Util;->isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    .line 45
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroidx/leanback/widget/Util;->isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_16

    return-object p1

    :cond_16
    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
