.class public Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;
.super Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;
.source "SlideSelectListView.java"


# instance fields
.field private mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHapticFeedback_ClickMenu:I

.field private mLastPosition:I

.field private mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 46
    sget v0, Lcom/meizu/forcetouch/R$attr;->SlideSelectListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    .line 42
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mHapticFeedback_ClickMenu:I

    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mLastPosition:I

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 48
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v3, Lcom/meizu/forcetouch/R$attr;->SlideSelectListViewStyle:I

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_39

    .line 51
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/meizu/forcetouch/R$drawable;->app_list_item_divider:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 52
    sget p1, Lcom/meizu/forcetouch/R$drawable;->app_list_item_pressed:I

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelector(I)V

    .line 53
    sget p1, Lcom/meizu/forcetouch/R$drawable;->peek_pop_menu_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 57
    :cond_39
    :try_start_39
    const-class p1, Landroid/view/HapticFeedbackConstants;

    const-string v2, "FLYME_UTIL_GENERAL_B"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mHapticFeedback_ClickMenu:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4d} :catch_4e

    goto :goto_58

    :catch_4e
    move-exception p1

    const-string v1, "PeekAndPop"

    const-string v2, "get HapticFeedbackConstants fail"

    .line 61
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mHapticFeedback_ClickMenu:I

    :goto_58
    return-void
.end method

.method private clearPressedItem()V
    .registers 2

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mDrawsInPressedState:Z

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setPressed(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->drawableStateChanged()V

    .line 154
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_13

    .line 155
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_13
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .registers 5

    .line 144
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 145
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .registers 6

    .line 162
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mDrawsInPressedState:Z

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setPressed(Z)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 171
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 172
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->setSelectorEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V

    .line 183
    invoke-virtual {p0}, Landroid/widget/ListView;->isHapticFeedbackEnabled()Z

    move-result p1

    if-eqz p1, :cond_32

    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mLastPosition:I

    if-eq p1, p2, :cond_32

    .line 184
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mHapticFeedback_ClickMenu:I

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->performHapticFeedback(I)Z

    .line 185
    iput p2, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mLastPosition:I

    :cond_32
    return-void
.end method


# virtual methods
.method public onForwardedEvent(Landroid/view/MotionEvent;Z)Z
    .registers 11

    .line 72
    invoke-virtual {p0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 76
    :cond_8
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1f

    if-eq v0, v3, :cond_1d

    if-eq v0, v2, :cond_1f

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1a

    :cond_17
    :goto_17
    move p2, v1

    move v4, v3

    goto :goto_59

    :cond_1a
    move p2, v1

    move v4, p2

    goto :goto_59

    :cond_1d
    move v4, v1

    goto :goto_20

    :cond_1f
    move v4, v3

    :goto_20
    const/4 v5, -0x1

    if-nez v0, :cond_25

    .line 92
    iput v5, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mLastPosition:I

    :cond_25
    new-array v2, v2, [I

    .line 95
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    if-eqz p2, :cond_3c

    .line 100
    aget p2, v2, v1

    sub-int/2addr v6, p2

    .line 101
    aget p2, v2, v3

    sub-int/2addr v7, p2

    .line 103
    :cond_3c
    invoke-virtual {p0, v6, v7}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p2

    if-ne p2, v5, :cond_44

    move p2, v3

    goto :goto_59

    .line 110
    :cond_44
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v4, v6

    int-to-float v5, v7

    .line 111
    invoke-direct {p0, v2, p2, v4, v5}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->setPressedItem(Landroid/view/View;IFF)V

    if-ne v0, v3, :cond_17

    .line 115
    invoke-direct {p0, v2, p2}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_17

    :goto_59
    if-eqz v4, :cond_5d

    if-eqz p2, :cond_60

    .line 122
    :cond_5d
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->clearPressedItem()V

    :cond_60
    if-eqz v4, :cond_78

    .line 127
    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-nez p2, :cond_6d

    .line 128
    new-instance p2, Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-direct {p2, p0}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 130
    :cond_6d
    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, v3}, Landroidx/core/widget/AutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    .line 131
    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, p0, p1}, Landroidx/core/widget/AutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_7f

    .line 132
    :cond_78
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-eqz p0, :cond_7f

    .line 133
    invoke-virtual {p0, v1}, Landroidx/core/widget/AutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    :cond_7f
    :goto_7f
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->onForwardedEvent(Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
