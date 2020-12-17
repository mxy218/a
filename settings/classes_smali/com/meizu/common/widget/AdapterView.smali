.class public abstract Lcom/meizu/common/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AdapterView$SelectionNotifier;,
        Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;,
        Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;,
        Lcom/meizu/common/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field mBlockLayoutRequests:Z

.field private mContext:Landroid/content/Context;

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/common/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 230
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 84
    iput-wide v1, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    const/4 v3, -0x1

    .line 152
    iput v3, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v3, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v3, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v1, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 231
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 67
    iput p2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 84
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean p2, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean p2, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    const/4 v2, -0x1

    .line 152
    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean p2, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 236
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 240
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 67
    iput p2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 84
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean p2, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean p2, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    const/4 p3, -0x1

    .line 152
    iput p3, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput p3, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput p3, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean p2, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 241
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x1

    .line 244
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_29
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 1

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AdapterView;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/AdapterView;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .registers 8

    .line 891
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    return-void

    .line 894
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1e

    .line 896
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 897
    iget-object v1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    .line 898
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, p0

    .line 897
    invoke-interface/range {v1 .. v6}, Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_23

    .line 900
    :cond_1e
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/meizu/common/widget/AdapterView;)V

    :goto_23
    return-void
.end method

.method private isScrollableForAccessibility()Z
    .registers 5

    .line 963
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 965
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1c

    .line 967
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_1b

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getLastVisiblePosition()I

    move-result p0

    sub-int/2addr v0, v2

    if-ge p0, v0, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    return v1
.end method

.method private performAccessibilityActionsOnSelected()V
    .registers 2

    .line 908
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x4

    .line 911
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_a
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .registers 8

    .line 734
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    move p1, v1

    :cond_8
    const/16 v0, 0x8

    if-eqz p1, :cond_34

    .line 739
    iget-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_17

    .line 740
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1a

    .line 744
    :cond_17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 750
    :goto_1a
    iget-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-eqz p1, :cond_3e

    const/4 v1, 0x0

    .line 751
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView;->onLayout(ZIIII)V

    goto :goto_3e

    .line 754
    :cond_34
    iget-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3b

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_3b
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    .line 456
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    .line 469
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 497
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 482
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected canAnimate()Z
    .registers 2

    .line 974
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method checkFocus()V
    .registers 6

    .line 715
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 716
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v2

    :goto_12
    if-eqz v3, :cond_1d

    .line 717
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move v3, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v3, v2

    :goto_1e
    if-eqz v3, :cond_26

    .line 721
    iget-boolean v4, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v4, :cond_26

    move v4, v2

    goto :goto_27

    :cond_26
    move v4, v1

    :goto_27
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_32

    .line 722
    iget-boolean v3, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_32

    move v3, v2

    goto :goto_33

    :cond_32
    move v3, v1

    :goto_33
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 723
    iget-object v3, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_46

    if-eqz v0, :cond_42

    .line 724
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_42
    move v1, v2

    :cond_43
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/AdapterView;->updateEmptyStatus(Z)V

    :cond_46
    return-void
.end method

.method checkSelectionChanged()V
    .registers 5

    .line 1044
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1045
    :cond_e
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->selectionChanged()V

    .line 1046
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 1047
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    :cond_19
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 917
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 919
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 794
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 786
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method findSyncPosition()I
    .registers 15

    .line 1060
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 1066
    :cond_6
    iget-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1067
    iget v4, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v2, v5

    if-nez v5, :cond_11

    return v1

    :cond_11
    const/4 v5, 0x0

    .line 1075
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .line 1076
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1078
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    .line 1099
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    if-nez p0, :cond_2a

    return v1

    :cond_2a
    move v9, v4

    move v10, v9

    move v11, v5

    .line 1104
    :cond_2d
    :goto_2d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v7

    if-gtz v12, :cond_64

    .line 1105
    invoke-interface {p0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    cmp-long v12, v12, v2

    if-nez v12, :cond_3e

    return v4

    :cond_3e
    if-ne v9, v0, :cond_42

    move v12, v6

    goto :goto_43

    :cond_42
    move v12, v5

    :goto_43
    if-nez v10, :cond_47

    move v13, v6

    goto :goto_48

    :cond_47
    move v13, v5

    :goto_48
    if-eqz v12, :cond_4d

    if-eqz v13, :cond_4d

    goto :goto_64

    :cond_4d
    if-nez v13, :cond_5f

    if-eqz v11, :cond_54

    if-nez v12, :cond_54

    goto :goto_5f

    :cond_54
    if-nez v12, :cond_5a

    if-nez v11, :cond_2d

    if-nez v13, :cond_2d

    :cond_5a
    add-int/lit8 v10, v10, -0x1

    move v11, v6

    move v4, v10

    goto :goto_2d

    :cond_5f
    :goto_5f
    add-int/lit8 v9, v9, 0x1

    move v11, v5

    move v4, v9

    goto :goto_2d

    :cond_64
    :goto_64
    return v1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 586
    iget p0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    return p0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 1

    .line 675
    iget-object p0, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method public getFirstVisiblePosition()I
    .registers 1

    .line 629
    iget p0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    return p0
.end method

.method public getItemIdAtPosition(I)J
    .registers 2

    .line 771
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    if-eqz p0, :cond_e

    if-gez p1, :cond_9

    goto :goto_e

    .line 772
    :cond_9
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide p0

    goto :goto_10

    :cond_e
    :goto_e
    const-wide/high16 p0, -0x8000000000000000L

    :goto_10
    return-wide p0
.end method

.method public getLastVisiblePosition()I
    .registers 2

    .line 639
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/meizu/common/widget/AdapterView$OnItemClickListener;
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method public final getOnItemLongClickListener()Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;
    .registers 1

    .line 351
    iget-object p0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method public final getOnItemSelectedListener()Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;
    .registers 1

    .line 397
    iget-object p0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 6

    :goto_0
    const/4 v0, -0x1

    .line 602
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_b} :catch_27

    if-nez v2, :cond_f

    move-object p1, v1

    goto :goto_0

    .line 611
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_27

    .line 613
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 614
    iget p0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p0, v2

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catch_27
    :cond_27
    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 3

    .line 570
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 571
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result p0

    if-eqz v0, :cond_17

    .line 572
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_17

    if-ltz p0, :cond_17

    .line 573
    invoke-interface {v0, p0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 556
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 547
    iget p0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    return p0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 6

    .line 978
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_41

    .line 986
    iget-boolean v3, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    if-eqz v3, :cond_1d

    .line 989
    iput-boolean v2, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 993
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->findSyncPosition()I

    move-result v3

    if-ltz v3, :cond_1d

    .line 996
    invoke-virtual {p0, v3, v1}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    if-ne v4, v3, :cond_1d

    .line 999
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    if-nez v3, :cond_3f

    .line 1006
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-lt v4, v0, :cond_28

    sub-int/2addr v0, v1

    goto :goto_29

    :cond_28
    move v0, v4

    :goto_29
    if-gez v0, :cond_2c

    move v0, v2

    .line 1017
    :cond_2c
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    if-gez v4, :cond_36

    .line 1020
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    :cond_36
    if-ltz v4, :cond_3f

    .line 1023
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_42

    :cond_3f
    move v1, v3

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    if-nez v1, :cond_54

    const/4 v0, -0x1

    .line 1031
    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 1032
    iput-wide v3, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 1033
    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 1034
    iput-wide v3, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 1035
    iput-boolean v2, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 1036
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    :cond_54
    return-void
.end method

.method isInFilterMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3

    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 850
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 851
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 950
    const-class v0, Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 951
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 952
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 954
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 956
    :cond_20
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 957
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 958
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 959
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 938
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 939
    const-class v0, Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 940
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 941
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 943
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_20
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mLayoutHeight:I

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 924
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 926
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 927
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 929
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 930
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 12

    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 299
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 303
    :cond_e
    iget-object v1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/meizu/common/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    return v0

    :cond_18
    return v1
.end method

.method rememberSyncState()V
    .registers 6

    .line 1180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5a

    const/4 v0, 0x1

    .line 1181
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 1182
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/meizu/common/widget/AdapterView;->mSyncHeight:J

    .line 1183
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2d

    .line 1185
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1186
    iget-wide v3, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1187
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    if-eqz v0, :cond_2a

    .line 1189
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mSpecificTop:I

    .line 1191
    :cond_2a
    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncMode:I

    goto :goto_5a

    .line 1194
    :cond_2d
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1195
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1196
    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_48

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 1197
    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    goto :goto_4c

    :cond_48
    const-wide/16 v2, -0x1

    .line 1199
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1201
    :goto_4c
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_58

    .line 1203
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mSpecificTop:I

    .line 1205
    :cond_58
    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncMode:I

    :cond_5a
    :goto_5a
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    .line 532
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "removeAllViews() is not supported in AdapterView"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2

    .line 510
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "removeView(View) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewAt(I)V
    .registers 2

    .line 522
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method selectionChanged()V
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_25

    .line 874
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_d

    goto :goto_14

    .line 884
    :cond_d
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->fireOnSelected()V

    .line 885
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_25

    .line 879
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_20

    .line 880
    new-instance v0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;-><init>(Lcom/meizu/common/widget/AdapterView;Lcom/meizu/common/widget/AdapterView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    .line 882
    :cond_20
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 4

    .line 654
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 658
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 659
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 662
    :cond_e
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 663
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 664
    :cond_1c
    :goto_1c
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AdapterView;->updateEmptyStatus(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .registers 5

    .line 690
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 691
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    .line 693
    :goto_12
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    if-nez p1, :cond_18

    .line 695
    iput-boolean v2, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :cond_18
    if-eqz p1, :cond_23

    if-eqz v0, :cond_24

    .line 698
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :cond_24
    :goto_24
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5

    .line 703
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 704
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 706
    :goto_12
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_18

    .line 708
    iput-boolean v2, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    :cond_18
    if-eqz p1, :cond_23

    if-eqz v0, :cond_22

    .line 711
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_23

    :cond_22
    move v1, v2

    :cond_23
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4

    .line 1165
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 1166
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 1168
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1169
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    .line 1170
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 777
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnItemClickListener(Lcom/meizu/common/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3

    .line 340
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 341
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 343
    :cond_a
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4

    .line 1155
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 1156
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    return-void
.end method

.method public abstract setSelection(I)V
.end method
