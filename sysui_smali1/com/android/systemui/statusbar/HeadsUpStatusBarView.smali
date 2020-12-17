.class public Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "HeadsUpStatusBarView.java"


# instance fields
.field private mAbsoluteStartPadding:I

.field private mCutOutBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mCutOutInset:I

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEndMargin:I

.field private mFirstLayout:Z

.field private mIconDrawingRect:Landroid/graphics/Rect;

.field private mIconPlaceholder:Landroid/view/View;

.field private mLayoutedIconRect:Landroid/graphics/Rect;

.field private mMaxWidth:I

.field private mOnDrawingRectChangedListener:Ljava/lang/Runnable;

.field private mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mSysWinInset:I

.field private mTextView:Landroid/widget/TextView;

.field private mTmpPosition:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 86
    sget p2, Lcom/android/systemui/R$dimen;->heads_up_notification_icon_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    const p2, 0x105019c

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    .line 90
    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2, p3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;)V

    .line 154
    iput-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 155
    iput-object p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private getDisplaySize()V
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_b

    .line 287
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    .line 289
    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateDrawingRect()V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 233
    iget-object v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_25

    .line 236
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_25
    return-void
.end method

.method private updateMaxWidth()V
    .registers 3

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 96
    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-eq v0, v1, :cond_13

    .line 99
    iput v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_13
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 5

    .line 242
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    iget v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_b

    :cond_9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    :goto_b
    iput v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    .line 244
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    if-eqz v0, :cond_1f

    .line 246
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_25

    :cond_1f
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_25

    :cond_24
    move v0, v2

    .line 247
    :goto_25
    iput v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    if-eqz v1, :cond_41

    .line 252
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    if-nez v0, :cond_41

    .line 253
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    if-nez v0, :cond_41

    .line 254
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    .line 262
    :cond_41
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    if-eqz v0, :cond_47

    .line 263
    iput v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 266
    :cond_47
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getIconDrawingRect()Landroid/graphics/Rect;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getShowingEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public synthetic lambda$setEntry$0$HeadsUpStatusBarView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 294
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 116
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 278
    iget-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 161
    sget v0, Lcom/android/systemui/R$id;->icon_placeholder:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 162
    sget v0, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 182
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p3

    sub-float/2addr p1, p3

    float-to-int p1, p1

    .line 185
    iget-object p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 p4, 0x1

    aget p3, p3, p4

    .line 186
    iget-object p4, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p1

    .line 187
    iget-object p5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    add-int/2addr p5, p3

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    .line 190
    iget p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget p5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    add-int/2addr p3, p5

    iget p5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    add-int/2addr p3, p5

    .line 191
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p5

    if-eqz p5, :cond_44

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p4

    :cond_44
    if-eq p1, p3, :cond_78

    .line 195
    iget-object p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    if-eqz p3, :cond_6b

    .line 196
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    if-eqz p5, :cond_64

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_66

    :cond_64
    iget v0, p4, Landroid/graphics/Rect;->left:I

    :goto_66
    if-le p1, v0, :cond_4e

    .line 200
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 206
    :cond_6b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 209
    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    invoke-virtual {p0, p1, p2, p3, p2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 212
    :cond_78
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    if-eqz p1, :cond_83

    const/16 p1, 0x8

    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    :cond_83
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-lez v0, :cond_16

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 108
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 111
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_3b

    .line 134
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_7

    goto :goto_3b

    .line 139
    :cond_7
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "heads_up_status_bar_view_super_parcelable"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 141
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    const-string v1, "first_layout"

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    const-string/jumbo v0, "visibility"

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2b
    const-string v0, "alpha"

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_3a
    return-void

    .line 135
    :cond_3b
    :goto_3b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "heads_up_status_bar_view_super_parcelable"

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    const-string v2, "first_layout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    const-string v1, "alpha"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public bridge synthetic onSaveInstanceState()Landroid/os/Parcelable;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 168
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 170
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    .line 172
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$9LEXjhJrDwN7VfE5FR5-LkCG-lg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$9LEXjhJrDwN7VfE5FR5-LkCG-lg;-><init>(Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setOnSensitiveChangedListener(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 174
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_28

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setOnSensitiveChangedListener(Ljava/lang/Runnable;)V

    .line 176
    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_28
    :goto_28
    return-void
.end method

.method public setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelTranslation(F)V
    .registers 2

    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    return-void
.end method
