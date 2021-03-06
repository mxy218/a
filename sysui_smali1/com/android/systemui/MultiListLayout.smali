.class public abstract Lcom/android/systemui/MultiListLayout;
.super Landroid/widget/LinearLayout;
.source "MultiListLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/MultiListLayout$MultiListAdapter;,
        Lcom/android/systemui/MultiListLayout$RotationListener;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

.field protected mHasOutsideTouch:Z

.field protected mRotation:I

.field protected mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    return-void
.end method


# virtual methods
.method public abstract getAnimationOffsetX()F
.end method

.method public abstract getAnimationOffsetY()F
.end method

.method protected abstract getListView()Landroid/view/ViewGroup;
.end method

.method protected abstract getSeparatedView()Landroid/view/ViewGroup;
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 83
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    .line 85
    iget v0, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-eq p1, v0, :cond_12

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/MultiListLayout;->rotate(II)V

    .line 87
    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    :cond_12
    return-void
.end method

.method protected onUpdateList()V
    .registers 2

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->removeAllItems()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->hasSeparatedItems()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/MultiListLayout;->setSeparatedViewVisibility(Z)V

    return-void
.end method

.method protected removeAllItems()V
    .registers 1

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->removeAllListViews()V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->removeAllSeparatedViews()V

    return-void
.end method

.method protected removeAllListViews()V
    .registers 1

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_9
    return-void
.end method

.method protected removeAllSeparatedViews()V
    .registers 1

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_9
    return-void
.end method

.method protected rotate(II)V
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/android/systemui/MultiListLayout;->mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;

    if-eqz p0, :cond_7

    .line 93
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/MultiListLayout$RotationListener;->onRotate(II)V

    :cond_7
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    return-void
.end method

.method public setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setOutsideTouchListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/MultiListLayout;->mHasOutsideTouch:Z

    .line 75
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/android/systemui/MultiListLayout;->mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;

    return-void
.end method

.method protected setSeparatedViewVisibility(Z)V
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateList()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    if-eqz v0, :cond_8

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->onUpdateList()V

    return-void

    .line 103
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mAdapter must be set before calling updateList"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
