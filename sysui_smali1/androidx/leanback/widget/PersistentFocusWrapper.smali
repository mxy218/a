.class Landroidx/leanback/widget/PersistentFocusWrapper;
.super Landroid/widget/FrameLayout;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;
    }
.end annotation


# instance fields
.field private mPersistFocusVertical:Z

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    return-void
.end method

.method private shouldPersistFocusFromDirection(I)Z
    .registers 3

    .line 86
    iget-boolean v0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x21

    if-eq p1, v0, :cond_18

    const/16 v0, 0x82

    if-eq p1, v0, :cond_18

    :cond_c
    iget-boolean p0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-nez p0, :cond_1a

    const/16 p0, 0x11

    if-eq p1, p0, :cond_18

    const/16 p0, 0x42

    if-ne p1, p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroidx/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v0

    if-eqz v0, :cond_17

    .line 95
    invoke-direct {p0, p2}, Landroidx/leanback/widget/PersistentFocusWrapper;->shouldPersistFocusFromDirection(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_17

    .line 99
    :cond_13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 96
    :cond_17
    :goto_17
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_1a
    return-void
.end method

.method getGrandChildCount()I
    .registers 2

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_a

    goto :goto_e

    .line 58
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_e
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 173
    instance-of v0, p1, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;

    if-nez v0, :cond_8

    .line 174
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 177
    :cond_8
    check-cast p1, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;

    .line 178
    iget v0, p1, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    iput v0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 180
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 166
    new-instance v0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 167
    iget p0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    iput p0, v0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    return-object v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :goto_3
    if-eqz p2, :cond_12

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_12

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_3

    :cond_12
    if-nez p2, :cond_16

    const/4 p1, -0x1

    goto :goto_1c

    .line 110
    :cond_16
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    :goto_1c
    iput p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 121
    iget v1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    if-ltz v1, :cond_21

    invoke-virtual {p0}, Landroidx/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 122
    iget v1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p0, 0x1

    return p0

    .line 127
    :cond_21
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method
