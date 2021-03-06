.class public Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "RowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sCanSpecifyLargerRangeBarHeight:Z


# instance fields
.field private mActionDivider:Landroid/view/View;

.field private mActionSpinner:Landroid/widget/ProgressBar;

.field private mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowTwoLines:Z

.field private mBottomDivider:Landroid/view/View;

.field private mContent:Landroid/widget/LinearLayout;

.field private mEndContainer:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mImageSize:I

.field private mIsHeader:Z

.field mIsRangeSliding:Z

.field mLastSentRangeUpdate:J

.field private mLastUpdatedText:Landroid/widget/TextView;

.field protected mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredRangeHeight:I

.field private mPrimaryText:Landroid/widget/TextView;

.field private mRangeBar:Landroid/widget/ProgressBar;

.field mRangeHasPendingUpdate:Z

.field private mRangeItem:Landroidx/slice/SliceItem;

.field mRangeMaxValue:I

.field mRangeMinValue:I

.field mRangeUpdater:Ljava/lang/Runnable;

.field mRangeUpdaterRunning:Z

.field mRangeValue:I

.field private mRootView:Landroid/widget/LinearLayout;

.field private mRowAction:Landroidx/slice/core/SliceActionImpl;

.field mRowContent:Landroidx/slice/widget/RowContent;

.field mRowIndex:I

.field private mSecondaryText:Landroid/widget/TextView;

.field private mSeeMoreView:Landroid/view/View;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSelectionItem:Landroidx/slice/SliceItem;

.field private mSelectionOptionKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionOptionValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionSpinner:Landroid/widget/Spinner;

.field mShowActionSpinner:Z

.field private mStartContainer:Landroid/widget/LinearLayout;

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mToggles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 180
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 1043
    new-instance v0, Landroidx/slice/widget/RowView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    .line 1051
    new-instance v0, Landroidx/slice/widget/RowView$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$3;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 184
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Landroidx/slice/view/R$layout;->abc_slice_small_template:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 186
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    sget p1, Landroidx/slice/view/R$id;->icon_frame:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const p1, 0x1020002

    .line 189
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    const p1, 0x1020016

    .line 190
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const p1, 0x1020010

    .line 191
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 192
    sget p1, Landroidx/slice/view/R$id;->last_updated:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 193
    sget p1, Landroidx/slice/view/R$id;->bottom_divider:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    .line 194
    sget p1, Landroidx/slice/view/R$id;->action_divider:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    .line 195
    sget p1, Landroidx/slice/view/R$id;->action_sent_indicator:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    const p1, 0x1020018

    .line 197
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .registers 13

    .line 770
    new-instance v6, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;)V

    .line 771
    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 772
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_18

    .line 773
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 776
    :cond_18
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p3

    xor-int/lit8 v0, p3, 0x1

    if-eqz p3, :cond_22

    const/4 v2, 0x3

    goto :goto_23

    :cond_22
    move v2, v1

    .line 779
    :goto_23
    new-instance v3, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v4

    iget v5, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v3, v4, v0, v2, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    const/4 v7, 0x1

    if-eqz p4, :cond_34

    .line 781
    invoke-virtual {v3, v1, v1, v7}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 783
    :cond_34
    iget-object p4, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    move-object v0, v6

    move-object v1, p1

    move-object v2, v3

    move-object v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 784
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 785
    invoke-virtual {v6, v7}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    :cond_4f
    if-eqz p3, :cond_57

    .line 788
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 790
    :cond_57
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5c
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;IZ)Z
    .registers 10

    if-eqz p3, :cond_5

    .line 802
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 803
    :goto_7
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_22

    .line 804
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v4, "action"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_22
    const-string/jumbo v1, "shortcut"

    .line 805
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 806
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v1, p2, v0, p3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    return v2

    .line 809
    :cond_34
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_43

    return v3

    .line 812
    :cond_43
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    .line 816
    :cond_51
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p3

    const-string v1, "image"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_6b

    .line 817
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p3

    const-string v4, "no_tint"

    .line 818
    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    move v5, v4

    move-object v4, v1

    goto :goto_7d

    .line 819
    :cond_6b
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p3

    const-string v4, "long"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7a

    move-object v4, p1

    move-object p3, v1

    goto :goto_7c

    :cond_7a
    move-object p3, v1

    move-object v4, p3

    :goto_7c
    move v5, v3

    :goto_7d
    if-eqz p3, :cond_be

    if-nez v5, :cond_83

    move p1, v2

    goto :goto_84

    :cond_83
    move p1, v3

    .line 825
    :goto_84
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 826
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_a0

    const/4 p3, -0x1

    if-eq p2, p3, :cond_a0

    .line 828
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 830
    :cond_a0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 831
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 832
    iget p3, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 833
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 834
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_b9

    .line 835
    iget p0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_ba

    :cond_b9
    move p0, v3

    .line 836
    :goto_ba
    invoke-virtual {v1, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_f0

    :cond_be
    if-eqz v4, :cond_f0

    .line 839
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 840
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p1, :cond_ed

    .line 842
    invoke-virtual {p1}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 843
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 845
    :cond_ed
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f0
    :goto_f0
    if-eqz v1, :cond_f3

    goto :goto_f4

    :cond_f3
    move v2, v3

    :goto_f4
    return v2
.end method

.method private addRange()V
    .registers 6

    .line 664
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 665
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 668
    :cond_b
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 669
    new-instance v1, Landroid/widget/SeekBar;

    .line 670
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    goto :goto_30

    :cond_23
    new-instance v1, Landroid/widget/ProgressBar;

    .line 671
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 672
    :goto_30
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 673
    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_45

    if-eqz v2, :cond_45

    .line 674
    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 675
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    :cond_45
    iget v2, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iget v3, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 680
    iget v2, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v2, 0x0

    .line 681
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 682
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 683
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_99

    .line 685
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 686
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    check-cast v1, Landroid/widget/SeekBar;

    if-eqz v0, :cond_80

    .line 687
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 688
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 690
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 693
    :cond_80
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 694
    iget v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    if-eq v2, v4, :cond_94

    if-eqz v0, :cond_94

    .line 695
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 696
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 698
    :cond_94
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_99
    return-void
.end method

.method private addSelection(Landroidx/slice/SliceItem;)V
    .registers 8

    .line 724
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 725
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 728
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    .line 731
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 733
    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 734
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    const-string v3, "selection_option"

    .line 735
    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_62

    :cond_38
    const-string/jumbo v3, "text"

    const-string v4, "selection_option_key"

    .line 740
    invoke-static {v2, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v5, "selection_option_value"

    .line 742
    invoke-static {v2, v3, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v4, :cond_62

    if-nez v2, :cond_4c

    goto :goto_62

    .line 747
    :cond_4c
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 751
    :cond_65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_selection:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 754
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 755
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_selection_text:I

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 756
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_row_selection_dropdown_text:I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 757
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 759
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 762
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private addSubtitle(Z)V
    .registers 11

    .line 562
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_5

    return-void

    .line 565
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 566
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_19

    :cond_13
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 567
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 569
    :goto_19
    iget-boolean v2, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    iget-wide v5, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3c

    .line 570
    invoke-direct {p0, v5, v6}, Landroidx/slice/widget/RowView;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 573
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/slice/view/R$string;->abc_slice_updated:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_3c
    move-object v2, v3

    :goto_3d
    if-eqz v0, :cond_43

    .line 576
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 577
    :cond_43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    if-eqz v0, :cond_54

    const-string v5, "partial"

    .line 578
    invoke-virtual {v0, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_56

    :cond_54
    move v0, v4

    goto :goto_57

    :cond_56
    :goto_56
    move v0, v1

    :goto_57
    if-eqz v0, :cond_96

    .line 580
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v5, :cond_96

    .line 582
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_6d

    .line 583
    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v5

    goto :goto_71

    .line 584
    :cond_6d
    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v5

    :goto_71
    int-to-float v5, v5

    .line 582
    invoke-virtual {v6, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 585
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    iget-boolean v5, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v5, :cond_8b

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 587
    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getVerticalHeaderTextPadding()I

    move-result v5

    goto :goto_91

    :cond_8b
    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 588
    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getVerticalTextPadding()I

    move-result v5

    .line 589
    :goto_91
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v5, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_96
    const/4 v5, 0x2

    if-eqz v2, :cond_e8

    .line 593
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " · "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    :cond_b0
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 597
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v3, v6, v4, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 598
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v3, :cond_e8

    .line 600
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_d5

    .line 601
    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v3

    goto :goto_d9

    :cond_d5
    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v3

    :goto_d9
    int-to-float v3, v3

    .line 600
    invoke-virtual {v6, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 602
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    :cond_e8
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_f4

    move v6, v7

    goto :goto_f5

    :cond_f4
    move v6, v4

    :goto_f5
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_fd

    move v7, v4

    :cond_fd
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget v3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-gtz v3, :cond_10b

    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    if-eqz v3, :cond_109

    goto :goto_10b

    :cond_109
    move v3, v4

    goto :goto_10c

    :cond_10b
    :goto_10b
    move v3, v1

    :goto_10c
    if-eqz v3, :cond_119

    if-nez p1, :cond_119

    if-eqz v0, :cond_119

    .line 612
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_119

    goto :goto_11a

    :cond_119
    move v5, v1

    .line 614
    :goto_11a
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-ne v5, v1, :cond_11f

    goto :goto_120

    :cond_11f
    move v1, v4

    :goto_120
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 615
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 619
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 620
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private applyRowStyle()V
    .registers 5

    .line 207
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowStyle()Landroidx/slice/widget/RowStyle;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4a

    .line 211
    :cond_b
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowStyle()Landroidx/slice/widget/RowStyle;

    move-result-object v0

    .line 212
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getTitleItemEndPadding()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/slice/widget/RowView;->setViewPaddingEnd(Landroid/view/View;I)V

    .line 213
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 214
    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getContentStartPadding()I

    move-result v2

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getContentEndPadding()I

    move-result v3

    .line 213
    invoke-direct {p0, v1, v2, v3}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 215
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 216
    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getEndItemStartPadding()I

    move-result v2

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getEndItemEndPadding()I

    move-result v3

    .line 215
    invoke-direct {p0, v1, v2, v3}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 217
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    .line 218
    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getBottomDividerStartPadding()I

    move-result v2

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getBottomDividerEndPadding()I

    move-result v3

    .line 217
    invoke-direct {p0, v1, v2, v3}, Landroidx/slice/widget/RowView;->setViewSideMargins(Landroid/view/View;II)V

    .line 219
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getActionDividerHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewHeight(Landroid/view/View;I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private getRelativeTimeString(J)Ljava/lang/CharSequence;
    .registers 8

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide p1, 0x7528ad000L

    cmp-long v2, v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_25

    .line 626
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 627
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Landroidx/slice/view/R$plurals;->abc_slice_duration_years:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 628
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 627
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-wide/32 p1, 0x5265c00

    cmp-long v2, v0, p1

    if-lez v2, :cond_41

    .line 630
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 631
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Landroidx/slice/view/R$plurals;->abc_slice_duration_days:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    const-wide/32 p1, 0xea60

    cmp-long v2, v0, p1

    if-lez v2, :cond_5d

    .line 633
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 634
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Landroidx/slice/view/R$plurals;->abc_slice_duration_min:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5d
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRowContentHeight()I
    .registers 4

    .line 261
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    .line 262
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_15

    .line 263
    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 265
    :cond_15
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_20

    .line 266
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getRowSelectionHeight()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_20
    return v0
.end method

.method private measureChildWithExactHeight(Landroid/view/View;II)V
    .registers 5

    .line 310
    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p3, v0

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    add-int/2addr p3, v0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 312
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method private populateViews(Z)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 403
    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz p1, :cond_a

    move p1, v0

    goto :goto_b

    :cond_a
    move p1, v1

    :goto_b
    if-nez p1, :cond_10

    .line 405
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    .line 408
    :cond_10
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    .line 409
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 411
    :cond_22
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 412
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->showSeeMore()V

    return-void

    .line 415
    :cond_2e
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 417
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 419
    :cond_3b
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 420
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_55

    iget v2, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-gtz v2, :cond_53

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->hasTitleItems()Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_53
    move v2, v0

    goto :goto_56

    :cond_55
    move v2, v1

    :goto_56
    if-eqz v2, :cond_60

    .line 422
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    invoke-direct {p0, v2, v3, v0}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v2

    .line 424
    :cond_60
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-eqz v2, :cond_68

    move v2, v1

    goto :goto_69

    :cond_68
    move v2, v4

    :goto_69
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 428
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_7d
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v3, :cond_9f

    .line 431
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-boolean v6, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v6, :cond_8c

    .line 432
    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getHeaderTitleSize()I

    move-result v3

    goto :goto_90

    .line 433
    :cond_8c
    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getTitleSize()I

    move-result v3

    :goto_90
    int-to-float v3, v3

    .line 431
    invoke-virtual {v5, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 434
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    :cond_9f
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_a5

    move v5, v1

    goto :goto_a6

    :cond_a5
    move v5, v4

    :goto_a6
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_ad

    move v2, v0

    goto :goto_ae

    :cond_ad
    move v2, v1

    .line 438
    :goto_ae
    invoke-direct {p0, v2}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    .line 440
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->hasBottomDivider()Z

    move-result v3

    if-eqz v3, :cond_bc

    move v4, v1

    :cond_bc
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_e9

    .line 443
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eq v2, v3, :cond_e9

    .line 444
    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v3, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 445
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 447
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2, v3, v1}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 449
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    return-void

    .line 454
    :cond_e9
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_105

    .line 456
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v2, :cond_fa

    .line 457
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 459
    :cond_fa
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_104

    .line 461
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->setRangeBounds()V

    .line 462
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->addRange()V

    :cond_104
    return-void

    .line 467
    :cond_105
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_113

    .line 469
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    .line 470
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->addSelection(Landroidx/slice/SliceItem;)V

    return-void

    .line 474
    :cond_113
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 475
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void
.end method

.method private resetViewState()V
    .registers 6

    .line 1002
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    .line 1003
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 1004
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 1005
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 1006
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1007
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1008
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1014
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1015
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 1016
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 1017
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    if-eqz v0, :cond_5d

    .line 1020
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1021
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 1023
    :cond_5d
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 1024
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    .line 1025
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 1026
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 1027
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 1028
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    const-wide/16 v0, 0x0

    .line 1029
    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 1030
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 1031
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_78

    .line 1032
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1033
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    .line 1035
    :cond_78
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_86

    .line 1037
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1038
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 1040
    :cond_86
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    return-void
.end method

.method private setRangeBounds()V
    .registers 6

    .line 641
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v1, "int"

    const-string v2, "min"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 644
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v2

    .line 646
    :goto_13
    iput v0, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 648
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v4, "max"

    invoke-static {v3, v1, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    const/16 v4, 0x64

    if-eqz v3, :cond_25

    .line 651
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    .line 653
    :cond_25
    iput v4, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 655
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string/jumbo v4, "value"

    invoke-static {v3, v1, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 658
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    sub-int v2, v1, v0

    .line 660
    :cond_38
    iput v2, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    return-void
.end method

.method private setViewClickable(Landroid/view/View;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v1, p0

    goto :goto_6

    :cond_5
    move-object v1, v0

    .line 987
    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_16

    .line 989
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x101030e

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 988
    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 991
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private setViewHeight(Landroid/view/View;I)V
    .registers 3

    if-eqz p1, :cond_d

    if-ltz p2, :cond_d

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 246
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method private setViewPaddingEnd(Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_13

    if-ltz p2, :cond_13

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_13
    return-void
.end method

.method private setViewSideMargins(Landroid/view/View;II)V
    .registers 4

    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    if-ltz p3, :cond_17

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 237
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 238
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 239
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    return-void
.end method

.method private setViewSidePaddings(Landroid/view/View;II)V
    .registers 5

    if-eqz p1, :cond_11

    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p0, p3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_11
    return-void
.end method

.method private showSeeMore()V
    .registers 4

    .line 852
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_show_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 854
    new-instance v1, Landroidx/slice/widget/RowView$1;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 880
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 882
    :cond_21
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 883
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 884
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    .line 885
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    const/16 v1, 0x8

    .line 886
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 887
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    :cond_43
    return-void
.end method

.method private updateEndItems()V
    .registers 12

    .line 479
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_5

    return-void

    .line 482
    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 485
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 486
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    if-eqz v1, :cond_15

    move-object v0, v1

    .line 492
    :cond_15
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez v1, :cond_30

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 493
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->hasTitleItems()Z

    move-result v1

    if-nez v1, :cond_30

    .line 494
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move v1, v2

    move v3, v1

    move v4, v3

    move v6, v4

    .line 502
    :goto_37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "action"

    const/4 v9, 0x1

    if-ge v1, v7, :cond_9a

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroidx/slice/SliceItem;

    if-eqz v7, :cond_4f

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    goto :goto_59

    .line 505
    :cond_4f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v7}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v7

    :goto_59
    const/4 v10, 0x3

    if-ge v3, v10, :cond_97

    .line 507
    iget v10, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    invoke-direct {p0, v7, v10, v2}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v10

    if-eqz v10, :cond_97

    if-nez v5, :cond_6d

    .line 508
    invoke-static {v7, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-eqz v10, :cond_6d

    move-object v5, v7

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v9, :cond_97

    .line 513
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_87

    .line 514
    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v6, "image"

    invoke-static {v4, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-nez v4, :cond_87

    move v4, v9

    goto :goto_88

    :cond_87
    move v4, v2

    .line 515
    :goto_88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_95

    .line 516
    invoke-static {v7, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-eqz v6, :cond_95

    goto :goto_96

    :cond_95
    move v9, v2

    :goto_96
    move v6, v9

    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 521
    :cond_9a
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-lez v3, :cond_a2

    move v7, v2

    goto :goto_a3

    :cond_a2
    move v7, v1

    :goto_a3
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v7, :cond_b9

    if-nez v4, :cond_b8

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 526
    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->hasActionDivider()Z

    move-result v4

    if-eqz v4, :cond_b9

    if-eqz v6, :cond_b9

    :cond_b8
    move v1, v2

    .line 525
    :cond_b9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_c8

    .line 529
    invoke-static {v0, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_c8

    move v0, v9

    goto :goto_c9

    :cond_c8
    move v0, v2

    :goto_c9
    if-eqz v5, :cond_cd

    move v1, v9

    goto :goto_ce

    :cond_cd
    move v1, v2

    .line 533
    :goto_ce
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v4, :cond_d8

    .line 534
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v9}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    goto :goto_11d

    :cond_d8
    if-eq v1, v0, :cond_11d

    if-eq v3, v9, :cond_de

    if-eqz v0, :cond_11d

    .line 538
    :cond_de
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 539
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/core/SliceActionImpl;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    goto :goto_117

    .line 540
    :cond_f9
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_117

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v9, :cond_117

    .line 541
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->getAction()Landroidx/slice/core/SliceActionImpl;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 543
    :cond_117
    :goto_117
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v9}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    move v2, v9

    .line 546
    :cond_11d
    :goto_11d
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_131

    if-nez v2, :cond_131

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 547
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 548
    iput-boolean v9, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    :cond_131
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 909
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_94

    .line 912
    :cond_c
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 913
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    goto :goto_29

    :cond_1f
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 914
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    :goto_29
    if-eqz v0, :cond_33

    .line 915
    instance-of p1, p1, Landroidx/slice/widget/SliceActionView;

    if-nez p1, :cond_33

    .line 918
    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->sendAction()V

    goto :goto_94

    .line 920
    :cond_33
    iget p1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez p1, :cond_3b

    .line 924
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    goto :goto_94

    .line 927
    :cond_3b
    :try_start_3b
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 928
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 929
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz p1, :cond_68

    .line 930
    new-instance p1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget v3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 932
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 934
    :cond_68
    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz p1, :cond_88

    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz p1, :cond_88

    .line 935
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {p1, v0, v1}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 936
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_88
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_8b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3b .. :try_end_8b} :catch_8c

    goto :goto_94

    :catch_8c
    move-exception p0

    const-string p1, "RowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    .line 940
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_94
    :goto_94
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 948
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_7b

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_7b

    if-ltz p3, :cond_7b

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 951
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_13

    goto :goto_7b

    .line 955
    :cond_13
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz p1, :cond_2b

    .line 956
    new-instance p1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result p2

    const/4 p4, 0x5

    const/4 p5, 0x6

    iget v0, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {p1, p2, p4, p5, v0}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 959
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object p4, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-interface {p2, p1, p4}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 962
    :cond_2b
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 965
    :try_start_33
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const/high16 p5, 0x10000000

    .line 966
    invoke-virtual {p4, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p4

    const-string p5, "android.app.slice.extra.SELECTION"

    .line 967
    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 965
    invoke-virtual {p2, p3, p1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_7b

    const/4 p1, 0x1

    .line 969
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 970
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz p1, :cond_6f

    .line 971
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p2

    iget p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {p1, p2, p3}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 972
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 974
    :cond_6f
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_72
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_33 .. :try_end_72} :catch_73

    goto :goto_7b

    :catch_73
    move-exception p0

    const-string p1, "RowView"

    const-string p2, "PendingIntent for slice cannot be sent"

    .line 977
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7b
    :goto_7b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 357
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    .line 358
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    .line 359
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p5

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p5, v0

    .line 358
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 360
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_3c

    .line 364
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p2}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result p2

    iget p3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 365
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p3

    add-int/2addr p3, p2

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p3, p2

    .line 366
    iget p2, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    add-int/2addr p2, p3

    .line 367
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto :goto_58

    .line 368
    :cond_3c
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz p2, :cond_58

    .line 369
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p2

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p2, p3

    .line 370
    iget-object p3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p2

    .line 371
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 372
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    .line 371
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/Spinner;->layout(IIII)V

    :cond_58
    :goto_58
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 319
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_18

    .line 322
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, p1, p2}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    .line 325
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    goto :goto_20

    .line 327
    :cond_18
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move p2, v0

    .line 329
    :goto_20
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4c

    .line 332
    sget-boolean v2, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    if-eqz v2, :cond_32

    .line 333
    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 334
    invoke-virtual {v2}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v2

    .line 333
    invoke-direct {p0, v1, p1, v2}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    goto :goto_39

    .line 337
    :cond_32
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 336
    invoke-virtual {p0, v1, p1, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 341
    :goto_39
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    .line 342
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_63

    .line 343
    :cond_4c
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_63

    .line 344
    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 345
    invoke-virtual {v2}, Landroidx/slice/widget/SliceStyle;->getRowSelectionHeight()I

    move-result v2

    .line 344
    invoke-direct {p0, v1, p1, v2}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    .line 346
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 349
    :cond_63
    :goto_63
    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    add-int/2addr p2, v1

    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 350
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_7e

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v1

    goto :goto_7f

    :cond_7e
    move v1, v0

    .line 351
    :goto_7f
    invoke-static {p2, p1, v0}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr v1, p2

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public resetView()V
    .registers 2

    const/4 v0, 0x0

    .line 996
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 997
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 998
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    return-void
.end method

.method sendSliderValue()V
    .registers 6

    .line 703
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_5

    return-void

    .line 708
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 709
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 710
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    iget v4, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 711
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 709
    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 712
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_4c

    .line 713
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 715
    iget v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    iput v1, v0, Landroidx/slice/widget/EventInfo;->state:I

    .line 716
    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-interface {v1, v0, p0}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_43
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception p0

    const-string v0, "RowView"

    const-string v1, "PendingIntent for slice cannot be sent"

    .line 719
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4c
    :goto_4c
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .registers 2

    .line 303
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    .line 304
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    .line 305
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_a
    return-void
.end method

.method public setInsets(IIII)V
    .registers 5

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 254
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setLastUpdated(J)V
    .registers 3

    .line 554
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 555
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_23

    .line 556
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 557
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 556
    :goto_20
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    :cond_23
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_b

    .line 898
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 899
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    goto :goto_d

    .line 901
    :cond_b
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 903
    :goto_d
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 904
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .registers 2

    .line 295
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 296
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    .line 297
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_b
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 288
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_9

    .line 289
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    :cond_9
    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .registers 10

    .line 382
    invoke-virtual {p0, p5}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    const/4 p4, 0x0

    if-eqz p1, :cond_56

    .line 385
    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p5, :cond_56

    invoke-virtual {p5}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result p5

    if-eqz p5, :cond_56

    .line 387
    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p5, :cond_1e

    new-instance v0, Landroidx/slice/SliceStructure;

    .line 388
    invoke-virtual {p5}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p5

    invoke-direct {v0, p5}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 389
    :goto_1f
    new-instance p5, Landroidx/slice/SliceStructure;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-direct {p5, v1}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 390
    invoke-virtual {v0, p5}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v1

    goto :goto_38

    :cond_37
    move v2, p4

    :goto_38
    if-eqz v0, :cond_50

    .line 392
    invoke-virtual {v0}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {v0}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p5}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {v0, p5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_50

    move p5, v1

    goto :goto_51

    :cond_50
    move p5, p4

    :goto_51
    if-eqz p5, :cond_56

    if-eqz v2, :cond_56

    goto :goto_57

    :cond_56
    move v1, p4

    .line 395
    :goto_57
    iput-boolean p4, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 396
    iput-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 397
    check-cast p1, Landroidx/slice/widget/RowContent;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 398
    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 399
    invoke-direct {p0, v1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .registers 2

    .line 202
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 203
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->applyRowStyle()V

    return-void
.end method

.method public setTint(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 273
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 274
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    .line 276
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_b
    return-void
.end method

.method updateActionSpinner()V
    .registers 2

    .line 892
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    iget-boolean p0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    const/16 p0, 0x8

    :goto_a
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
