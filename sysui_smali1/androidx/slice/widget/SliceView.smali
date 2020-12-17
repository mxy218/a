.class public Landroidx/slice/widget/SliceView;
.super Landroid/view/ViewGroup;
.source "SliceView.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceView$SliceMode;,
        Landroidx/slice/widget/SliceView$OnSliceActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionRow:Landroidx/slice/widget/ActionRow;

.field private mActionRowHeight:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mClickInfo:[I

.field private mCurrentSlice:Landroidx/slice/Slice;

.field private mCurrentSliceLoggedVisible:Z

.field private mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

.field mCurrentView:Landroidx/slice/widget/SliceChildView;

.field private mDownX:I

.field private mDownY:I

.field mHandler:Landroid/os/Handler;

.field mInLongpress:Z

.field private mLargeHeight:I

.field mListContent:Landroidx/slice/widget/ListContent;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mLongpressCheck:Ljava/lang/Runnable;

.field private mMinTemplateHeight:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mPressing:Z

.field mRefreshLastUpdated:Ljava/lang/Runnable;

.field private mShortcutSize:I

.field private mShowActionDividers:Z

.field private mShowActions:Z

.field private mShowHeaderDivider:Z

.field private mShowLastUpdated:Z

.field private mShowTitleItems:Z

.field mSliceMetadata:Landroidx/slice/SliceMetadata;

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mThemeTintColor:I

.field private mTouchSlopSquared:I

.field private mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 936
    new-instance v0, Landroidx/slice/widget/SliceView$3;

    invoke-direct {v0}, Landroidx/slice/widget/SliceView$3;-><init>()V

    sput-object v0, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    sget v0, Landroidx/slice/view/R$attr;->sliceViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 165
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 166
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 167
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 168
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 832
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 921
    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    .line 198
    sget v0, Landroidx/slice/view/R$style;->Widget_SliceView:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyConfigurations()V
    .registers 3

    .line 747
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 748
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 749
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 751
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 752
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_34

    .line 754
    :cond_2e
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :goto_34
    return-void
.end method

.method private configureViewPolicy(I)V
    .registers 4

    .line 348
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    if-lez p1, :cond_26

    .line 349
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowMaxHeight()I

    move-result v0

    if-ge p1, v0, :cond_26

    .line 350
    iget v0, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt p1, v0, :cond_20

    move p1, v0

    .line 353
    :cond_20
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxSmallHeight(I)V

    goto :goto_2c

    .line 355
    :cond_26
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxSmallHeight(I)V

    .line 357
    :goto_2c
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxHeight(I)V

    :cond_31
    return-void
.end method

.method private getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 809
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private getTintColor()I
    .registers 4

    .line 793
    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 797
    :cond_6
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 800
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    goto :goto_1f

    .line 801
    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    :goto_1f
    return p0
.end method

.method private handleTouchForLongpress(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_34

    return v2

    .line 323
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    sub-int/2addr v0, v1

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    sub-int/2addr p1, v1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    .line 326
    iget p1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    if-le v0, p1, :cond_31

    .line 327
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 328
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    :cond_31
    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    return p0

    .line 335
    :cond_34
    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 336
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 337
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 338
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return p1

    .line 314
    :cond_42
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    .line 317
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 318
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 319
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 208
    new-instance v0, Landroidx/slice/widget/SliceStyle;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceStyle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 209
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceStyle;->getTintColor()I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 210
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    .line 212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    .line 213
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    .line 215
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_action_row_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    .line 217
    new-instance p1, Landroidx/slice/widget/SliceViewPolicy;

    invoke-direct {p1}, Landroidx/slice/widget/SliceViewPolicy;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 218
    new-instance p1, Landroidx/slice/widget/TemplateView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/slice/widget/TemplateView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 219
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p1, p2}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 220
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 224
    new-instance p1, Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroidx/slice/widget/ActionRow;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 225
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const p3, -0x111112

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    .line 230
    iput p1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    .line 231
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 234
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSliceMetrics(Landroidx/slice/Slice;)V
    .registers 5
    .param p1  # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 876
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2e

    .line 879
    :cond_a
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 880
    :cond_1c
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 882
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/slice/widget/SliceMetrics;->getInstance(Landroid/content/Context;Landroid/net/Uri;)Landroidx/slice/widget/SliceMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    goto :goto_34

    .line 877
    :cond_2e
    :goto_2e
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    const/4 p1, 0x0

    .line 878
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    :cond_34
    :goto_34
    return-void
.end method

.method private logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    .registers 4

    .line 900
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_23

    .line 901
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 902
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    iget p2, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 904
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 902
    invoke-virtual {p0, p2, p1}, Landroidx/slice/widget/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    :cond_23
    return-void
.end method

.method private logSliceMetricsVisibilityChange(Z)V
    .registers 4

    .line 887
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_10

    .line 888
    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-nez v1, :cond_10

    .line 889
    invoke-virtual {v0}, Landroidx/slice/widget/SliceMetrics;->logVisible()V

    const/4 v0, 0x1

    .line 890
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    :cond_10
    if-nez p1, :cond_1e

    .line 892
    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-eqz p1, :cond_1e

    .line 893
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceMetrics;->logHidden()V

    const/4 p1, 0x0

    .line 894
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    :cond_1e
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p0, "MODE SHORTCUT"

    return-object p0

    :cond_1f
    const-string p0, "MODE LARGE"

    return-object p0

    :cond_22
    const-string p0, "MODE SMALL"

    return-object p0
.end method

.method private refreshLastUpdatedLabel(Z)V
    .registers 8

    .line 910
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->neverExpires()Z

    move-result v0

    if-nez v0, :cond_32

    if-eqz p1, :cond_2b

    .line 912
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v1}, Landroidx/slice/SliceMetadata;->isExpired()Z

    move-result v1

    const-wide/32 v2, 0xea60

    if-eqz v1, :cond_20

    goto :goto_27

    :cond_20
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 914
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getTimeToExpiry()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 912
    :goto_27
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32

    .line 916
    :cond_2b
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private updateActions()V
    .registers 7

    .line 759
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_27

    .line 761
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 763
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    .line 764
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    .line 763
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    return-void

    .line 768
    :cond_27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 769
    sget-object v0, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 770
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7c

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_7c

    .line 772
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroidx/slice/widget/ActionRow;->setActions(Ljava/util/List;I)V

    .line 773
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 778
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 779
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    .line 780
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    .line 779
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    goto :goto_9b

    .line 784
    :cond_7c
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v3}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 785
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    .line 786
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    .line 785
    invoke-virtual {v0, v1, v3, v4, v5}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 788
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_9b
    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 1

    .line 630
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p0

    return p0
.end method

.method public isSliceViewClickable()Z
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_13

    .line 249
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 845
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 846
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 847
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 848
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    :cond_10
    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .registers 2
    .param p1  # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 434
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 263
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p1, :cond_76

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p1

    if-eqz p1, :cond_76

    .line 265
    :try_start_e
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/SliceActionImpl;

    .line 266
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    if-eqz v3, :cond_3b

    .line 270
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setActionLoading(Landroidx/slice/SliceItem;)V

    :cond_3b
    if-eqz v0, :cond_7d

    .line 272
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    array-length v0, v0

    if-le v0, v2, :cond_7d

    .line 274
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v3

    const/4 v4, 0x3

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    aget v2, v5, v2

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 276
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 277
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    :try_end_6c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_e .. :try_end_6c} :catch_6d

    goto :goto_7d

    :catch_6d
    move-exception p0

    const-string p1, "SliceView"

    const-string v0, "PendingIntent for slice cannot be sent"

    .line 280
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 282
    :cond_76
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_7d

    .line 283
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 854
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 855
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 856
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 300
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 301
    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 423
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 425
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_2c

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 427
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 428
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p1

    .line 427
    invoke-virtual {p2, p4, p1, p3, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_2c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 363
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 364
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_17

    .line 366
    iget p1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 368
    :cond_17
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v2, :cond_25

    iget v0, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    goto :goto_26

    :cond_25
    move v0, v3

    .line 371
    :goto_26
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 372
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 373
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 374
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_3b

    :cond_39
    if-nez p2, :cond_3d

    :cond_3b
    const/4 v4, -0x1

    goto :goto_3e

    :cond_3d
    move v4, v2

    .line 378
    :goto_3e
    invoke-direct {p0, v4}, Landroidx/slice/widget/SliceView;->configureViewPolicy(I)V

    .line 380
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000  # 2.0f

    if-eq p2, v4, :cond_8b

    .line 384
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v5, :cond_89

    invoke-virtual {v5}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v5

    if-nez v5, :cond_5a

    goto :goto_89

    .line 386
    :cond_5a
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v5

    if-ne v5, v1, :cond_64

    .line 388
    iget p2, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    :goto_62
    add-int/2addr p2, v0

    goto :goto_8c

    .line 390
    :cond_64
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 391
    invoke-virtual {v1, v5, v6}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v1

    add-int/2addr v1, v0

    if-gt v2, v1, :cond_87

    if-nez p2, :cond_74

    goto :goto_87

    .line 397
    :cond_74
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_82

    iget p2, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    add-int v1, p2, v0

    if-lt v2, v1, :cond_82

    goto :goto_62

    .line 400
    :cond_82
    iget p2, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt v2, p2, :cond_8b

    goto :goto_8c

    :cond_87
    :goto_87
    move p2, v1

    goto :goto_8c

    :cond_89
    :goto_89
    move p2, v0

    goto :goto_8c

    :cond_8b
    move p2, v2

    .line 409
    :goto_8c
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    if-lez v0, :cond_98

    .line 410
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_99

    :cond_98
    move v2, v3

    .line 411
    :goto_99
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    if-lez v0, :cond_aa

    goto :goto_ae

    .line 415
    :cond_aa
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    :goto_ae
    add-int/2addr p2, v3

    .line 416
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 417
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 418
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 417
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 306
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 307
    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    .line 861
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 862
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_f

    move v1, p1

    goto :goto_10

    :cond_f
    move v1, v0

    .line 863
    :goto_10
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    if-nez p2, :cond_16

    goto :goto_17

    :cond_16
    move p1, v0

    .line 864
    :goto_17
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    :cond_1a
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    .line 870
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    .line 871
    :goto_a
    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    if-nez p1, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    .line 872
    :goto_11
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void
.end method

.method public setClickInfo([I)V
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 258
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 289
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 294
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 295
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setShowActionDividers(Z)V
    .registers 2

    .line 676
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    .line 677
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p0, :cond_9

    .line 678
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->showActionDividers(Z)V

    :cond_9
    return-void
.end method

.method public setShowHeaderDivider(Z)V
    .registers 2

    .line 657
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 658
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p0, :cond_9

    .line 659
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->showHeaderDivider(Z)V

    :cond_9
    return-void
.end method

.method public setShowTitleItems(Z)V
    .registers 2

    .line 638
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 639
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p0, :cond_9

    .line 640
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->showTitleItems(Z)V

    :cond_9
    return-void
.end method

.method public setSlice(Landroidx/slice/Slice;)V
    .registers 8
    .param p1  # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 444
    invoke-static {p0}, Landroidx/slice/widget/LocationBasedViewTracker;->trackInputFocused(Landroid/view/ViewGroup;)V

    .line 445
    invoke-static {p0}, Landroidx/slice/widget/LocationBasedViewTracker;->trackA11yFocus(Landroid/view/ViewGroup;)V

    .line 446
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->initSliceMetrics(Landroidx/slice/Slice;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_23

    .line 447
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v2, :cond_23

    .line 448
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-virtual {v3}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v1

    goto :goto_24

    :cond_23
    move v2, v0

    .line 449
    :goto_24
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 450
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    .line 451
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const/4 v4, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {p1, v5}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p1

    goto :goto_39

    :cond_38
    move-object p1, v4

    :goto_39
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const/4 p1, 0x2

    if-eqz v2, :cond_4d

    .line 455
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 456
    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v3

    if-ne v3, p1, :cond_52

    .line 457
    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v2

    if-nez v2, :cond_52

    return-void

    .line 463
    :cond_4d
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 465
    :cond_52
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getListContent()Landroidx/slice/widget/ListContent;

    move-result-object v2

    goto :goto_5c

    :cond_5b
    move-object v2, v4

    :goto_5c
    iput-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 466
    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    if-eqz v2, :cond_65

    .line 467
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showTitleItems(Z)V

    .line 469
    :cond_65
    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    if-eqz v2, :cond_6c

    .line 470
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showHeaderDivider(Z)V

    .line 472
    :cond_6c
    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    if-eqz v2, :cond_73

    .line 473
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showActionDividers(Z)V

    .line 475
    :cond_73
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v2, :cond_e7

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v2

    if-nez v2, :cond_7e

    goto :goto_e7

    .line 482
    :cond_7e
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v4}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 485
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 486
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->getLastUpdatedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 487
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-boolean v3, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v3, :cond_a5

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_a5

    move v0, v1

    :cond_a5
    invoke-virtual {v2, v0}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 488
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->isPermissionSlice()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 491
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 493
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d1

    .line 494
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_d6

    .line 496
    :cond_d1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 500
    :goto_d6
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 501
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 504
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 507
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void

    .line 476
    :cond_e7
    :goto_e7
    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 477
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 478
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void
.end method

.method setSliceViewPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 239
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    return-void
.end method

.method public showActionDividers(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 688
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    return-void
.end method

.method public showHeaderDivider(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowHeaderDivider(Z)V

    return-void
.end method

.method public showTitleItems(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    return-void
.end method
