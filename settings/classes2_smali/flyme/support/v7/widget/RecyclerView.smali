.class public Lflyme/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/core/view/ScrollingView;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lflyme/support/v7/widget/RecyclerView$ItemAnimator;,
        Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lflyme/support/v7/widget/RecyclerView$OnFlingListener;,
        Lflyme/support/v7/widget/RecyclerView$State;,
        Lflyme/support/v7/widget/RecyclerView$SavedState;,
        Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Lflyme/support/v7/widget/RecyclerView$SmoothScroller;,
        Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Lflyme/support/v7/widget/RecyclerView$LayoutParams;,
        Lflyme/support/v7/widget/RecyclerView$ViewHolder;,
        Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lflyme/support/v7/widget/RecyclerView$RecyclerListener;,
        Lflyme/support/v7/widget/RecyclerView$OnScrollListener;,
        Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Lflyme/support/v7/widget/RecyclerView$ItemDecoration;,
        Lflyme/support/v7/widget/RecyclerView$LayoutManager;,
        Lflyme/support/v7/widget/RecyclerView$Adapter;,
        Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Lflyme/support/v7/widget/RecyclerView$Recycler;,
        Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;,
        Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NESTED_SCROLLING_ATTRS:[I

.field static final POST_UPDATES_ON_ANIMATION:Z

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private isSelectorCanDraw:Z

.field mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lflyme/support/v7/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectPaddingBottom:I

.field private mEdgeEffectPaddingTop:I

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Lflyme/support/v7/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field final mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lflyme/support/v7/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

.field mRecyclerListener:Lflyme/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field final mState:Lflyme/support/v7/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    .line 165
    sput-object v1, Lflyme/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    .line 168
    sput-object v1, Lflyme/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 177
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_25

    const/16 v3, 0x13

    if-eq v1, v3, :cond_25

    const/16 v3, 0x14

    if-ne v1, v3, :cond_23

    goto :goto_25

    :cond_23
    move v1, v2

    goto :goto_26

    :cond_25
    :goto_25
    move v1, v0

    :goto_26
    sput-boolean v1, Lflyme/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    sput-boolean v1, Lflyme/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3b

    move v1, v0

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    sput-boolean v1, Lflyme/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_46

    move v1, v0

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    sput-boolean v1, Lflyme/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_51

    move v1, v0

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    sput-boolean v1, Lflyme/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_5a

    move v1, v0

    goto :goto_5b

    :cond_5a
    move v1, v2

    :goto_5b
    sput-boolean v1, Lflyme/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    .line 297
    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Lflyme/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 506
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 558
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 562
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 566
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 300
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 302
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 319
    new-instance v0, Lflyme/support/v7/widget/ViewInfoStore;

    invoke-direct {v0}, Lflyme/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    .line 333
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$1;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 354
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 355
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 369
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 394
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 404
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 413
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 417
    new-instance v1, Lflyme/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Lflyme/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    .line 444
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v1, -0x1

    .line 445
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    const/4 v2, 0x1

    .line 456
    iput v2, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    .line 457
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 459
    new-instance v3, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v3, p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    .line 462
    sget-boolean v3, Lflyme/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_6e

    new-instance v3, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v3}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_6f

    :cond_6e
    const/4 v3, 0x0

    :goto_6f
    iput-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 465
    new-instance v3, Lflyme/support/v7/widget/RecyclerView$State;

    invoke-direct {v3}, Lflyme/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 471
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 472
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 473
    new-instance v3, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v3, p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 475
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 481
    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v4, v3, [I

    .line 484
    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    new-array v4, v3, [I

    .line 485
    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    new-array v4, v3, [I

    .line 486
    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 493
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 496
    new-instance v4, Lflyme/support/v7/widget/RecyclerView$2;

    invoke-direct {v4, p0}, Lflyme/support/v7/widget/RecyclerView$2;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 515
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingTop:I

    .line 516
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingBottom:I

    .line 521
    new-instance v4, Lflyme/support/v7/widget/RecyclerView$4;

    invoke-direct {v4, p0}, Lflyme/support/v7/widget/RecyclerView$4;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 12976
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->isSelectorCanDraw:Z

    if-eqz p2, :cond_c3

    .line 568
    sget-object v4, Lflyme/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 569
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 570
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_c5

    .line 572
    :cond_c3
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 574
    :goto_c5
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    .line 575
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 577
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 578
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 579
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 580
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 581
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-ne v4, v3, :cond_e9

    move v3, v2

    goto :goto_ea

    :cond_e9
    move v3, v0

    :goto_ea
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 583
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 584
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 585
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 587
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_103

    .line 589
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 592
    :cond_103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 593
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 594
    new-instance v3, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v3, p0}, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    const/high16 v3, 0x40000

    if-eqz p2, :cond_17f

    .line 601
    sget-object v4, Lflyme/support/v7/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 603
    sget v5, Lflyme/support/v7/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 604
    sget v5, Lflyme/support/v7/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v1, :cond_134

    .line 607
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 609
    :cond_134
    sget v1, Lflyme/support/v7/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    .line 610
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    if-eqz v1, :cond_15f

    .line 611
    sget v1, Lflyme/support/v7/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 612
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 613
    sget v3, Lflyme/support/v7/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 614
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 615
    sget v5, Lflyme/support/v7/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 616
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 617
    sget v6, Lflyme/support/v7/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 618
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 619
    invoke-virtual {p0, v1, v3, v5, v6}, Lflyme/support/v7/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 622
    :cond_15f
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move v10, p3

    .line 623
    invoke-direct/range {v6 .. v11}, Lflyme/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 625
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_182

    .line 626
    sget-object v1, Lflyme/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 628
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 629
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, p2

    goto :goto_182

    .line 632
    :cond_17f
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 636
    :cond_182
    :goto_182
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/RecyclerView;I)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$1000(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 3

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$500(Lflyme/support/v7/widget/RecyclerView;)Z
    .registers 1

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 157
    sget-boolean v0, Lflyme/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method private addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 7

    .line 1304
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1305
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1306
    :goto_c
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1307
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1309
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    const/4 p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lflyme/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_33

    :cond_26
    if-nez v1, :cond_2e

    .line 1311
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p0, v0, v2}, Lflyme/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_33

    .line 1313
    :cond_2e
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    :goto_33
    return-void
.end method

.method private animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 8
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3901
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_9

    .line 3903
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_9
    if-eq p1, p2, :cond_1f

    if-eqz p6, :cond_10

    .line 3907
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3909
    :cond_10
    iput-object p2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 3911
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3912
    iget-object p5, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p5, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3913
    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3914
    iput-object p1, p2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 3916
    :cond_1f
    iget-object p5, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p5, p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 3917
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_2a
    return-void
.end method

.method private cancelTouch()V
    .registers 2

    .line 3014
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->resetTouch()V

    const/4 v0, 0x0

    .line 3015
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p0  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5268
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_21

    .line 5269
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_a
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 5271
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_12

    return-void

    .line 5275
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5276
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 5277
    check-cast v0, Landroid/view/View;

    goto :goto_a

    :cond_1d
    move-object v0, v1

    goto :goto_a

    .line 5282
    :cond_1f
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_21
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 13

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_11d

    .line 674
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 675
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11d

    .line 676
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 679
    :try_start_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_25

    .line 683
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 686
    :goto_25
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_2f} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_2f} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_2f} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_2f} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_2f} :catch_86

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 690
    :try_start_32
    sget-object v5, Lflyme/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 691
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p3, v6, v3

    const/4 p1, 0x2

    .line 692
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_4d} :catch_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_4d} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_4d} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_32 .. :try_end_4d} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_4d} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_4d} :catch_86

    move-object v2, v6

    goto :goto_56

    :catch_4f
    move-exception p1

    :try_start_50
    new-array p4, v4, [Ljava/lang/Class;

    .line 695
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_56
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_56} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_56} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_56} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_50 .. :try_end_56} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_56} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_56} :catch_86

    .line 702
    :goto_56
    :try_start_56
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 703
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_11d

    :catch_64
    move-exception p0

    .line 697
    invoke-virtual {p0, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 698
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ": Error creating LayoutManager "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_86} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_56 .. :try_end_86} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_56 .. :try_end_86} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_86} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_56 .. :try_end_86} :catch_86

    :catch_86
    move-exception p0

    .line 717
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_a5
    move-exception p0

    .line 714
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_c4
    move-exception p0

    .line 711
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_e1
    move-exception p0

    .line 708
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_fe
    move-exception p0

    .line 705
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_11d
    :goto_11d
    return-void
.end method

.method private didChildRangeChange(II)Z
    .registers 6

    .line 3853
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3854
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, p1, :cond_11

    aget p0, p0, v2

    if-eq p0, p2, :cond_12

    :cond_11
    move v0, v2

    :cond_12
    return v0
.end method

.method private dispatchContentChangedIfNecessary()V
    .registers 4

    .line 3224
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    .line 3225
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_1c

    .line 3226
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3227
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    .line 3228
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3229
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3230
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1c
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 9

    .line 3562
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3563
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3564
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3565
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ViewInfoStore;->clear()V

    .line 3566
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3567
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3568
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 3569
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3570
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3571
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3572
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3573
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3575
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_ae

    .line 3577
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_4e
    if-ge v1, v0, :cond_ae

    .line 3579
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3580
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_ab

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_6f

    goto :goto_ab

    .line 3583
    :cond_6f
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 3585
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 3586
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3584
    invoke-virtual {v4, v5, v3, v6, v7}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3587
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Lflyme/support/v7/widget/ViewInfoStore;->addToPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3588
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v4, :cond_ab

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 3589
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_ab

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 3590
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3598
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v6, v4, v5, v3}, Lflyme/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_ab
    :goto_ab
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 3602
    :cond_ae
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_116

    .line 3609
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 3610
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3611
    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3613
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3, v4, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3614
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v2

    .line 3616
    :goto_c9
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_112

    .line 3617
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3618
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3619
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_e2

    goto :goto_10f

    .line 3622
    :cond_e2
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lflyme/support/v7/widget/ViewInfoStore;->isInPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_10f

    .line 3623
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    const/16 v4, 0x2000

    .line 3625
    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_f8

    or-int/lit16 v3, v3, 0x1000

    .line 3629
    :cond_f8
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 3630
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3629
    invoke-virtual {v5, v6, v1, v3, v7}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    if-eqz v4, :cond_10a

    .line 3632
    invoke-virtual {p0, v1, v3}, Lflyme/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_10f

    .line 3634
    :cond_10a
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v1, v3}, Lflyme/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_10f
    :goto_10f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    .line 3639
    :cond_112
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_119

    .line 3641
    :cond_116
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3643
    :goto_119
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3644
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3645
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3646
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->doSomethingWhenStructureChange()V

    return-void
.end method

.method private dispatchLayoutStep2()V
    .registers 5

    .line 3654
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3655
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3656
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3657
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3658
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3659
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3662
    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3663
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3665
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v2, 0x0

    .line 3666
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    .line 3669
    iget-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    move v2, v1

    :goto_3b
    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3670
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3671
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3672
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .registers 12

    .line 3680
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3681
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3682
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3683
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3684
    iget-boolean v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_8d

    .line 3688
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1c
    if-ltz v0, :cond_86

    .line 3689
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3690
    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_83

    .line 3693
    :cond_2f
    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v2

    .line 3694
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 3695
    invoke-virtual {v4, v6, v5}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3696
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v6, v2, v3}, Lflyme/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_7e

    .line 3697
    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 3708
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Lflyme/support/v7/widget/ViewInfoStore;->isDisappearing(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    .line 3710
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v5}, Lflyme/support/v7/widget/ViewInfoStore;->isDisappearing(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v8, :cond_5f

    if-ne v6, v5, :cond_5f

    .line 3713
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Lflyme/support/v7/widget/ViewInfoStore;->addToPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_83

    .line 3715
    :cond_5f
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Lflyme/support/v7/widget/ViewInfoStore;->popFromPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3718
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v10, v5, v4}, Lflyme/support/v7/widget/ViewInfoStore;->addToPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3719
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/ViewInfoStore;->popFromPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v10

    if-nez v7, :cond_76

    .line 3721
    invoke-direct {p0, v2, v3, v5, v6}, Lflyme/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_83

    :cond_76
    move-object v3, p0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    .line 3723
    invoke-direct/range {v3 .. v9}, Lflyme/support/v7/widget/RecyclerView;->animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_83

    .line 3728
    :cond_7e
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Lflyme/support/v7/widget/ViewInfoStore;->addToPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :goto_83
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 3733
    :cond_86
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/ViewInfoStore;->process(Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 3736
    :cond_8d
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 3737
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    iput v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    const/4 v2, 0x0

    .line 3738
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3739
    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3741
    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3742
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3743
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_ae

    .line 3744
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3746
    :cond_ae
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v3, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v3, :cond_bd

    .line 3749
    iput v2, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 3750
    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3751
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 3754
    :cond_bd
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3755
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3756
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3757
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ViewInfoStore;->clear()V

    .line 3758
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, v3, v0}, Lflyme/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 3759
    invoke-virtual {p0, v2, v2}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3761
    :cond_de
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 3762
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 2704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2705
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    const/4 v3, 0x0

    if-nez v0, :cond_f

    .line 2708
    iput-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    goto :goto_1a

    .line 2710
    :cond_f
    invoke-interface {v1, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 p1, 0x3

    if-eq v0, p1, :cond_17

    if-ne v0, v2, :cond_19

    .line 2713
    :cond_17
    iput-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_19
    return v2

    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 2722
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_24
    if-ge v3, v0, :cond_3a

    .line 2724
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2725
    invoke-interface {v4, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2726
    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    return v2

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 2687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_c

    :cond_9
    const/4 v2, 0x0

    .line 2689
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2692
    :cond_c
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_2d

    .line 2694
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2695
    invoke-interface {v5, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2a

    if-eq v0, v1, :cond_2a

    .line 2696
    iput-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2d
    return v3
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .registers 10

    .line 3827
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 p0, -0x1

    .line 3829
    aput p0, p1, v2

    .line 3830
    aput p0, p1, v1

    return-void

    :cond_10
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_18
    if-ge v3, v0, :cond_38

    .line 3836
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 3837
    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_35

    .line 3840
    :cond_2b
    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ge v6, v4, :cond_32

    move v4, v6

    :cond_32
    if-le v6, v5, :cond_35

    move v5, v6

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3848
    :cond_38
    aput v4, p1, v2

    .line 3849
    aput v5, p1, v1

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView;
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5246
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 5249
    :cond_6
    instance-of v0, p0, Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_d

    .line 5250
    check-cast p0, Lflyme/support/v7/widget/RecyclerView;

    return-object p0

    .line 5252
    :cond_d
    check-cast p0, Landroid/view/ViewGroup;

    .line 5253
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_24

    .line 5255
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5256
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_21

    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3442
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3445
    :goto_9
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_27

    .line 3447
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_27

    .line 3451
    :cond_19
    iget-object v4, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3452
    iget-object p0, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3455
    :cond_27
    :goto_27
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2d
    const/4 v1, 0x0

    if-ltz v0, :cond_45

    .line 3457
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_37

    return-object v1

    .line 3461
    :cond_37
    iget-object v1, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3462
    iget-object p0, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_45
    return-object v1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4364
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8

    .line 4635
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 4636
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4637
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4638
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 4639
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 4640
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 4637
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 4

    .line 3543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    .line 3544
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_26

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3545
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3546
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3548
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    goto :goto_4

    :cond_26
    return p0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    .line 725
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1d

    .line 726
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "."

    .line 728
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_26

    return-object p2

    .line 731
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class p1, Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getScrollFactor()F
    .registers 5

    .line 3069
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    .line 3070
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3071
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3074
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3073
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    return p0

    .line 3079
    :cond_33
    :goto_33
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    return p0
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .registers 2

    .line 12761
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_b

    .line 12762
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 12764
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    return-object p0
.end method

.method private handleMissingPreInfoForChangeError(JLflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 10

    .line 3783
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_67

    .line 3785
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3786
    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_16

    goto :goto_64

    .line 3790
    :cond_16
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_64

    .line 3792
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    const-string p1, " \n View Holder 2:"

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_47

    .line 3793
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3797
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3805
    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found but it is necessary for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .registers 6

    .line 1694
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_28

    .line 1696
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1697
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_25

    .line 1700
    :cond_1d
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_28
    return v1
.end method

.method private initChildrenHelper()V
    .registers 3

    .line 735
    new-instance v0, Lflyme/support/v7/widget/ChildHelper;

    new-instance v1, Lflyme/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/RecyclerView$5;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ChildHelper;-><init>(Lflyme/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_42

    if-ne p2, p0, :cond_6

    goto :goto_42

    :cond_6
    const/4 v1, 0x1

    if-nez p1, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x2

    if-eq p3, v2, :cond_15

    if-ne p3, v1, :cond_10

    goto :goto_15

    .line 2446
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 2434
    :cond_15
    :goto_15
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v0

    :goto_20
    if-ne p3, v2, :cond_23

    move v0, v1

    :cond_23
    xor-int/2addr v0, v3

    if-eqz v0, :cond_29

    const/16 v0, 0x42

    goto :goto_2b

    :cond_29
    const/16 v0, 0x11

    .line 2437
    :goto_2b
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_32

    return v1

    :cond_32
    if-ne p3, v2, :cond_3b

    const/16 p3, 0x82

    .line 2441
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_3b
    const/16 p3, 0x21

    .line 2443
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_42
    :goto_42
    return v0
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .registers 8

    .line 2455
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2456
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2457
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2458
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 p1, 0x11

    const/4 p2, 0x1

    if-eq p3, p1, :cond_9e

    const/16 p1, 0x21

    if-eq p3, p1, :cond_83

    const/16 p1, 0x42

    if-eq p3, p1, :cond_68

    const/16 p1, 0x82

    if-ne p3, p1, :cond_51

    .line 2473
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt p3, v0, :cond_44

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p1, v0, :cond_4f

    :cond_44
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p0, :cond_4f

    goto :goto_50

    :cond_4f
    move p2, v3

    :goto_50
    return p2

    .line 2477
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "direction must be absolute. received:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2465
    :cond_68
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt p3, v0, :cond_76

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_81

    :cond_76
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, p0, :cond_81

    goto :goto_82

    :cond_81
    move p2, v3

    :goto_82
    return p2

    .line 2469
    :cond_83
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p3, v0, :cond_91

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-lt p1, v0, :cond_9c

    :cond_91
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-le p1, p0, :cond_9c

    goto :goto_9d

    :cond_9c
    move p2, v3

    :goto_9d
    return p2

    .line 2461
    :cond_9e
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gt p3, v0, :cond_ac

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_b7

    :cond_ac
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-le p1, p0, :cond_b7

    goto :goto_b8

    :cond_b7
    move p2, v3

    :goto_b8
    return p2
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 3019
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 3020
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_2d

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 3023
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3024
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3025
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    :cond_2d
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    .line 3313
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .registers 6

    .line 3323
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_e

    .line 3326
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->reset()V

    .line 3327
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Lflyme/support/v7/widget/RecyclerView;)V

    .line 3332
    :cond_e
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3333
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->preProcess()V

    goto :goto_1f

    .line 3335
    :cond_1a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3337
    :goto_1f
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    move v0, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v0, v2

    .line 3338
    :goto_2d
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_51

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_51

    iget-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_43

    if-nez v0, :cond_43

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_51

    :cond_43
    iget-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    .line 3344
    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4f
    move v4, v2

    goto :goto_52

    :cond_51
    move v4, v1

    :goto_52
    iput-boolean v4, v3, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3345
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v3, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_67

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_67

    .line 3348
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_67

    move v1, v2

    :cond_67
    iput-boolean v1, v3, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .registers 11

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    if-gez v1, :cond_24

    .line 2171
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2172
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-float v4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    sub-float p3, v2, p3

    invoke-virtual {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result p3

    if-eqz p3, :cond_41

    :goto_22
    move p3, v3

    goto :goto_42

    :cond_24
    cmpl-float v1, p2, v0

    if-lez v1, :cond_41

    .line 2176
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2177
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-virtual {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result p3

    if-eqz p3, :cond_41

    goto :goto_22

    :cond_41
    const/4 p3, 0x0

    :goto_42
    cmpg-float v1, p4, v0

    if-gez v1, :cond_5f

    .line 2183
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2184
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-float v2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    invoke-virtual {v1, v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result p1

    if-eqz p1, :cond_7d

    goto :goto_7e

    :cond_5f
    cmpl-float v1, p4, v0

    if-lez v1, :cond_7d

    .line 2188
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2189
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p1, v5

    sub-float/2addr v2, p1

    invoke-virtual {v1, v4, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result p1

    if-eqz p1, :cond_7d

    goto :goto_7e

    :cond_7d
    move v3, p3

    :goto_7e
    if-nez v3, :cond_88

    cmpl-float p1, p2, v0

    if-nez p1, :cond_88

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_8b

    .line 2195
    :cond_88
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_8b
    return-void
.end method

.method private recoverFocusFromState()V
    .registers 7

    .line 3469
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 3470
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_b2

    .line 3471
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_b2

    .line 3479
    :cond_26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_55

    .line 3480
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3481
    sget-boolean v1, Lflyme/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_4c

    .line 3482
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 3494
    :cond_40
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_55

    .line 3497
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void

    .line 3500
    :cond_4c
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_55

    return-void

    .line 3510
    :cond_55
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-wide v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3511
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-wide v4, v0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_72

    :cond_71
    move-object v0, v1

    :goto_72
    if-eqz v0, :cond_8a

    .line 3514
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v5, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_8a

    iget-object v4, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3515
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_87

    goto :goto_8a

    .line 3528
    :cond_87
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_96

    .line 3516
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_96

    .line 3523
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    :cond_96
    :goto_96
    if-eqz v1, :cond_b2

    .line 3532
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_ae

    .line 3533
    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_ae

    .line 3534
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_ae

    goto :goto_af

    :cond_ae
    move-object p0, v1

    .line 3538
    :goto_af
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_b2
    :goto_b2
    return-void
.end method

.method private releaseGlows()V
    .registers 3

    .line 2201
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2202
    :goto_a
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2203
    :cond_13
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2204
    :cond_1c
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_25
    if-eqz v0, :cond_2a

    .line 2206
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2a
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .registers 14
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_5

    :cond_4
    move-object v0, p1

    .line 2499
    :goto_5
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2504
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2505
    instance-of v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_41

    .line 2507
    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 2508
    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_41

    .line 2509
    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2510
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2511
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2512
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2513
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_41
    if-eqz p2, :cond_4d

    .line 2518
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2519
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2521
    :cond_4d
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_5a

    move v10, v1

    goto :goto_5b

    :cond_5a
    move v10, v4

    :goto_5b
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .registers 3

    .line 3427
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    const/4 v0, -0x1

    .line 3428
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3429
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetTouch()V
    .registers 2

    .line 3006
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 3007
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3009
    :cond_7
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 3010
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private saveFocusInfo()V
    .registers 5

    .line 3407
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_14

    .line 3408
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    if-nez v0, :cond_18

    goto :goto_1c

    .line 3411
    :cond_18
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_1c
    if-nez v1, :cond_22

    .line 3413
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_56

    .line 3415
    :cond_22
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_33

    :cond_31
    const-wide/16 v2, -0x1

    :goto_33
    iput-wide v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3419
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_3d

    const/4 v2, -0x1

    goto :goto_4a

    .line 3420
    :cond_3d
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_4a

    .line 3421
    :cond_46
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    :goto_4a
    iput v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3422
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    :goto_56
    return-void
.end method

.method private setAdapterInternal(Lflyme/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .registers 6

    .line 1073
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_e

    .line 1074
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1075
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    :cond_e
    if-eqz p2, :cond_12

    if-eqz p3, :cond_15

    .line 1078
    :cond_12
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1080
    :cond_15
    iget-object p3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {p3}, Lflyme/support/v7/widget/AdapterHelper;->reset()V

    .line 1081
    iget-object p3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    .line 1082
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_28

    .line 1084
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1085
    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 1087
    :cond_28
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_31

    .line 1088
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 1090
    :cond_31
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 1091
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1092
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    .line 2140
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2141
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_c

    .line 2142
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_c
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .registers 5

    if-gez p1, :cond_c

    .line 2231
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2232
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_16

    :cond_c
    if-lez p1, :cond_16

    .line 2234
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2235
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_16
    :goto_16
    if-gez p2, :cond_22

    .line 2239
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2240
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_2c

    :cond_22
    if-lez p2, :cond_2c

    .line 2242
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2243
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_2c
    :goto_2c
    if-nez p1, :cond_30

    if-eqz p2, :cond_33

    .line 2247
    :cond_30
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_33
    return-void
.end method

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

    .line 2532
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Lflyme/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2533
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_d
    return-void
.end method

.method public addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V
    .registers 3

    const/4 v0, -0x1

    .line 1470
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView;->addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .registers 5

    .line 1441
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 1442
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1445
    :cond_9
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 1446
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :cond_15
    if-gez p2, :cond_1d

    .line 1449
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1451
    :cond_1d
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1453
    :goto_22
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1454
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnItemTouchListener(Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .registers 2

    .line 2671
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 3

    .line 1538
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1541
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3883
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3884
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3885
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_f
    return-void
.end method

.method animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3891
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 3892
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3893
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3894
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_12
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 2640
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p1, :cond_10

    .line 2642
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2645
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2647
    :cond_16
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p0, :cond_28

    .line 2648
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p1, "RecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    return-void
.end method

.method canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 4206
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz p0, :cond_11

    .line 4207
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    .line 4206
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 4024
    instance-of v0, p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method clearOldPositions()V
    .registers 5

    .line 4078
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4080
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4081
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4082
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4085
    :cond_1f
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    .line 1840
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1843
    :cond_6
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    .line 1815
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1818
    :cond_6
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    .line 1863
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1866
    :cond_6
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    .line 1912
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1915
    :cond_6
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .line 1888
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1891
    :cond_6
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    .line 1935
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1938
    :cond_6
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .registers 5

    .line 2212
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_13

    if-lez p1, :cond_13

    .line 2213
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 2215
    :goto_14
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_27

    if-gez p1, :cond_27

    .line 2216
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2218
    :cond_27
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3a

    if-lez p2, :cond_3a

    .line 2219
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2221
    :cond_3a
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4d

    if-gez p2, :cond_4d

    .line 2222
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_4d
    if-eqz v0, :cond_52

    .line 2225
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_52
    return-void
.end method

.method consumePendingUpdateOperations()V
    .registers 4

    .line 1653
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_b

    goto :goto_67

    .line 1659
    :cond_b
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1665
    :cond_14
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    const/16 v2, 0xb

    .line 1666
    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "RV PartialInvalidate"

    .line 1668
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1670
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1671
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->preProcess()V

    .line 1672
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_4a

    .line 1673
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1674
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_4a

    .line 1677
    :cond_45
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    .line 1680
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1681
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1682
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_66

    .line 1683
    :cond_55
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1684
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1686
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    :cond_66
    :goto_66
    return-void

    .line 1654
    :cond_67
    :goto_67
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1656
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void
.end method

.method protected contentFits()Z
    .registers 9

    .line 12808
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 12812
    :cond_8
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 12813
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    if-eq v0, v2, :cond_16

    return v3

    .line 12818
    :cond_16
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v4, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v4, :cond_13f

    .line 12819
    check-cast v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    .line 12820
    invoke-virtual {v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_b1

    .line 12821
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    .line 12822
    invoke-virtual {v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getReverseLayout()Z

    move-result p0

    if-eqz p0, :cond_75

    .line 12823
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p0

    .line 12824
    aget v4, p0, v3

    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_46

    return v3

    .line 12828
    :cond_46
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    move v5, v4

    move v4, v1

    .line 12829
    :goto_4c
    array-length v6, p0

    if-ge v4, v6, :cond_65

    .line 12830
    aget v6, p0, v4

    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_58

    return v3

    .line 12834
    :cond_58
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v7

    if-le v5, v7, :cond_62

    .line 12835
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 12838
    :cond_65
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_6c

    return v3

    .line 12842
    :cond_6c
    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p0, v5

    if-gt p0, v0, :cond_13b

    goto/16 :goto_13c

    .line 12845
    :cond_75
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p0

    .line 12846
    aget v4, p0, v3

    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_82

    return v3

    .line 12850
    :cond_82
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v4

    move v5, v4

    move v4, v1

    .line 12851
    :goto_88
    array-length v6, p0

    if-ge v4, v6, :cond_a1

    .line 12852
    aget v6, p0, v4

    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_94

    return v3

    .line 12856
    :cond_94
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v7

    if-ge v5, v7, :cond_9e

    .line 12857
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    .line 12860
    :cond_a1
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_a8

    return v3

    .line 12864
    :cond_a8
    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v5, p0

    if-gt v5, v0, :cond_13b

    goto/16 :goto_13c

    .line 12868
    :cond_b1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    .line 12869
    invoke-virtual {v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getReverseLayout()Z

    move-result p0

    if-eqz p0, :cond_100

    .line 12870
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p0

    .line 12871
    aget v4, p0, v3

    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_d2

    return v3

    .line 12875
    :cond_d2
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v4

    move v5, v4

    move v4, v1

    .line 12876
    :goto_d8
    array-length v6, p0

    if-ge v4, v6, :cond_f1

    .line 12877
    aget v6, p0, v4

    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_e4

    return v3

    .line 12881
    :cond_e4
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v7

    if-le v5, v7, :cond_ee

    .line 12882
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v5

    :cond_ee
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 12885
    :cond_f1
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_f8

    return v3

    .line 12889
    :cond_f8
    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p0, v5

    if-gt p0, v0, :cond_13b

    goto :goto_13c

    .line 12893
    :cond_100
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p0

    .line 12894
    aget v4, p0, v3

    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_10d

    return v3

    .line 12898
    :cond_10d
    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v4

    move v5, v4

    move v4, v1

    .line 12899
    :goto_113
    array-length v6, p0

    if-ge v4, v6, :cond_12c

    .line 12900
    aget v6, p0, v4

    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_11f

    return v3

    .line 12904
    :cond_11f
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v7

    if-ge v5, v7, :cond_129

    .line 12905
    invoke-virtual {v2, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    :cond_129
    add-int/lit8 v4, v4, 0x1

    goto :goto_113

    .line 12908
    :cond_12c
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_133

    return v3

    .line 12912
    :cond_133
    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v5, p0

    if-gt v5, v0, :cond_13b

    goto :goto_13c

    :cond_13b
    move v1, v3

    :goto_13c
    move v3, v1

    goto/16 :goto_1e0

    .line 12916
    :cond_13f
    instance-of v4, v2, Lflyme/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_1e0

    .line 12917
    check-cast v2, Lflyme/support/v7/widget/LinearLayoutManager;

    .line 12918
    invoke-virtual {v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    if-ne v4, v1, :cond_195

    .line 12919
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v4, p0

    .line 12920
    invoke-virtual {v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p0

    if-eqz p0, :cond_17a

    sub-int/2addr v0, v1

    .line 12921
    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    .line 12922
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_179

    if-nez v0, :cond_16d

    goto :goto_179

    .line 12926
    :cond_16d
    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    if-gt v0, v4, :cond_13b

    goto :goto_13c

    :cond_179
    :goto_179
    return v3

    :cond_17a
    sub-int/2addr v0, v1

    .line 12929
    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    .line 12930
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_194

    if-nez p0, :cond_188

    goto :goto_194

    .line 12934
    :cond_188
    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p0, v0

    if-gt p0, v4, :cond_13b

    goto :goto_13c

    :cond_194
    :goto_194
    return v3

    .line 12939
    :cond_195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v4, p0

    .line 12940
    invoke-virtual {v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p0

    if-eqz p0, :cond_1c5

    sub-int/2addr v0, v1

    .line 12941
    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    .line 12942
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_1c4

    if-nez v0, :cond_1b7

    goto :goto_1c4

    .line 12946
    :cond_1b7
    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    if-gt v0, v4, :cond_1e0

    goto/16 :goto_13c

    :cond_1c4
    :goto_1c4
    return v3

    :cond_1c5
    sub-int/2addr v0, v1

    .line 12949
    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    .line 12950
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e0

    if-nez p0, :cond_1d3

    goto :goto_1e0

    .line 12954
    :cond_1d3
    invoke-virtual {v2, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p0, v0

    if-gt p0, v4, :cond_1e0

    goto/16 :goto_13c

    :cond_1e0
    :goto_1e0
    return v3
.end method

.method defaultOnMeasure(II)V
    .registers 5

    .line 3162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3163
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    .line 3161
    invoke-static {p1, v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 3165
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 3166
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 3164
    invoke-static {p2, v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 3168
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .registers 4

    .line 6958
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6959
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6960
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 6961
    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6963
    :cond_10
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 6964
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    if-ltz v0, :cond_2a

    .line 6966
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .registers 4

    .line 6944
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6945
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6946
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 6947
    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6949
    :cond_10
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 6950
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    if-ltz v0, :cond_2a

    .line 6952
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method dispatchLayout()V
    .registers 3

    .line 3377
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    const-string v1, "RecyclerView"

    if-nez v0, :cond_c

    const-string p0, "No adapter attached; skipping layout"

    .line 3378
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3382
    :cond_c
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    const-string p0, "No layout manager attached; skipping layout"

    .line 3383
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3387
    :cond_16
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3388
    iget v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 3389
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3390
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V

    .line 3391
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_5b

    .line 3392
    :cond_2c
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 3393
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4d

    goto :goto_53

    .line 3400
    :cond_4d
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V

    goto :goto_5b

    .line 3396
    :cond_53
    :goto_53
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V

    .line 3397
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3402
    :goto_5b
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 4

    .line 10955
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 3

    .line 10960
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 5

    .line 10950
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 10944
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method dispatchOnScrollStateChanged(I)V
    .registers 4

    .line 4733
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_7

    .line 4734
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4739
    :cond_7
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4742
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_11

    .line 4743
    invoke-virtual {v0, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V

    .line 4745
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 4746
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_2b

    .line 4747
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method dispatchOnScrolled(II)V
    .registers 5

    .line 4693
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4696
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 4697
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 4698
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 4701
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 4705
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1b

    .line 4706
    invoke-virtual {v0, p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 4708
    :cond_1b
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_35

    .line 4709
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    .line 4710
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 4713
    :cond_35
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .registers 6

    .line 10868
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_30

    .line 10869
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 10870
    iget-object v2, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2d

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_2d

    .line 10873
    :cond_21
    iget v2, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 10876
    iget-object v4, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 10877
    iput v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 10881
    :cond_30
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
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

    .line 1292
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

    .line 1284
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected doSomethingWhenStructureChange()V
    .registers 1

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 3949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3951
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1d

    .line 3953
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4002
    :cond_1d
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_32

    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_32

    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    .line 4003
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 v1, 0x1

    :cond_32
    if-eqz v1, :cond_37

    .line 4008
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_37
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    .line 4569
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method eatRequestLayout()V
    .registers 3

    .line 1943
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1944
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1945
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_11
    return-void
.end method

.method ensureBottomGlow()V
    .registers 5

    .line 2292
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    return-void

    .line 2295
    :cond_5
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 2296
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2297
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2298
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2297
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_43

    .line 2300
    :cond_36
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_43
    return-void
.end method

.method ensureLeftGlow()V
    .registers 5

    .line 2252
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    return-void

    .line 2255
    :cond_5
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 2256
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2257
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2257
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_43

    .line 2260
    :cond_36
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_43
    return-void
.end method

.method ensureRightGlow()V
    .registers 5

    .line 2265
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    return-void

    .line 2268
    :cond_5
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 2269
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2270
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2271
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2270
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_43

    .line 2273
    :cond_36
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_43
    return-void
.end method

.method ensureTopGlow()V
    .registers 5

    .line 2278
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    return-void

    .line 2281
    :cond_5
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 2282
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2283
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2284
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2283
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_43

    .line 2286
    :cond_36
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_43
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .registers 3

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .registers 8

    .line 4552
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_44

    .line 4554
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4555
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    .line 4556
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    .line 4557
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_41

    .line 4558
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_41

    .line 4559
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_41

    .line 4560
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_41

    return-object v1

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4337
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    .line 4338
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_14

    .line 4339
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4340
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_14
    if-ne v0, p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4355
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 4356
    :cond_8
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public findViewHolderForAdapterPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .line 4466
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 4469
    :cond_6
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_37

    .line 4473
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 4474
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView;->getAdapterPositionFor(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_34

    .line 4475
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v4, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v1, v3

    goto :goto_34

    :cond_33
    return-object v3

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_37
    return-object v1
.end method

.method public findViewHolderForItemId(J)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 9

    .line 4526
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3f

    .line 4529
    :cond_c
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_3f

    .line 4532
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 4533
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3c

    .line 4534
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v4, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object v1, v3

    goto :goto_3c

    :cond_3b
    return-object v3

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_3f
    :goto_3f
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    const/4 v0, 0x0

    .line 4445
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method findViewHolderForPosition(IZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 8

    .line 4486
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_3a

    .line 4489
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4490
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_37

    if-eqz p2, :cond_23

    .line 4492
    iget v4, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_2a

    goto :goto_37

    .line 4495
    :cond_23
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2a

    goto :goto_37

    .line 4498
    :cond_2a
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v4, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_36

    move-object v1, v3

    goto :goto_37

    :cond_36
    return-object v3

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3a
    return-object v1
.end method

.method public fling(II)Z
    .registers 9

    .line 2086
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "RecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2087
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2091
    :cond_d
    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_12

    return v1

    .line 2095
    :cond_12
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2096
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_26

    .line 2098
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_27

    :cond_26
    move p1, v1

    :cond_27
    if-eqz v2, :cond_31

    .line 2101
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_32

    :cond_31
    move p2, v1

    :cond_32
    if-nez p1, :cond_37

    if-nez p2, :cond_37

    return v1

    :cond_37
    int-to-float v3, p1

    int-to-float v4, p2

    .line 2109
    invoke-virtual {p0, v3, v4}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_74

    const/4 v5, 0x1

    if-nez v0, :cond_47

    if-eqz v2, :cond_45

    goto :goto_47

    :cond_45
    move v0, v1

    goto :goto_48

    :cond_47
    :goto_47
    move v0, v5

    .line 2111
    :goto_48
    invoke-virtual {p0, v3, v4, v0}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2113
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mOnFlingListener:Lflyme/support/v7/widget/RecyclerView$OnFlingListener;

    if-eqz v2, :cond_56

    invoke-virtual {v2, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v2

    if-eqz v2, :cond_56

    return v5

    :cond_56
    if-eqz v0, :cond_74

    .line 2118
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2119
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2120
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_74
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    .line 2340
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 2344
    :cond_9
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1f

    .line 2345
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    .line 2347
    :goto_20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_9b

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2c

    if-ne p2, v1, :cond_9b

    .line 2353
    :cond_2c
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4a

    if-ne p2, v5, :cond_39

    const/16 v0, 0x82

    goto :goto_3b

    :cond_39
    const/16 v0, 0x21

    .line 2356
    :goto_3b
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_43

    move v6, v1

    goto :goto_44

    :cond_43
    move v6, v2

    .line 2358
    :goto_44
    sget-boolean v7, Lflyme/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v7, :cond_4b

    move p2, v0

    goto :goto_4b

    :cond_4a
    move v6, v2

    :cond_4b
    :goto_4b
    if-nez v6, :cond_7b

    .line 2363
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2364
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_5f

    move v0, v1

    goto :goto_60

    :cond_5f
    move v0, v2

    :goto_60
    if-ne p2, v5, :cond_64

    move v5, v1

    goto :goto_65

    :cond_64
    move v5, v2

    :goto_65
    xor-int/2addr v0, v5

    if-eqz v0, :cond_6b

    const/16 v0, 0x42

    goto :goto_6d

    :cond_6b
    const/16 v0, 0x11

    .line 2367
    :goto_6d
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_75

    move v6, v1

    goto :goto_76

    :cond_75
    move v6, v2

    .line 2369
    :goto_76
    sget-boolean v1, Lflyme/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v1, :cond_7b

    move p2, v0

    :cond_7b
    if-eqz v6, :cond_96

    .line 2375
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2376
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_87

    return-object v4

    .line 2381
    :cond_87
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2382
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    .line 2383
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2385
    :cond_96
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_bf

    .line 2387
    :cond_9b
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_be

    if-eqz v0, :cond_be

    .line 2389
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2390
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_ad

    return-object v4

    .line 2395
    :cond_ad
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2396
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2397
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_bf

    :cond_be
    move-object v0, v1

    :goto_bf
    if-eqz v0, :cond_d6

    .line 2400
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 2401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d2

    .line 2404
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 2410
    :cond_d2
    invoke-direct {p0, v0, v4}, Lflyme/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    .line 2413
    :cond_d6
    invoke-direct {p0, p1, v0, p2}, Lflyme/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_dd

    goto :goto_e1

    .line 2414
    :cond_dd
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_e1
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 4029
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_9

    .line 4032
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4030
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 4037
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    .line 4040
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4038
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecyclerView has no LayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 4045
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_9

    .line 4048
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4046
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecyclerView has no LayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;
    .registers 1

    .line 1102
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method getAdapterPositionFor(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 3

    const/16 v0, 0x20c

    .line 10885
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 10887
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 10890
    :cond_f
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    iget p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, -0x1

    return p0
.end method

.method public getBaseline()I
    .registers 2

    .line 1129
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 1130
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result p0

    return p0

    .line 1132
    :cond_9
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0
.end method

.method getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J
    .registers 2

    .line 3878
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide p0

    goto :goto_10

    :cond_d
    iget p0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long p0, p0

    :goto_10
    return-wide p0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    .line 12731
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_9

    .line 12732
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0

    .line 12734
    :cond_9
    invoke-interface {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 2

    .line 4398
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4399
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 4314
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_28

    if-ne v0, p0, :cond_9

    goto :goto_28

    .line 4316
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4319
    :cond_28
    :goto_28
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public getClipToPadding()Z
    .registers 1

    .line 976
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return p0
.end method

.method public getCompatAccessibilityDelegate()Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .registers 1

    .line 655
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object p0
.end method

.method public getItemAnimator()Lflyme/support/v7/widget/RecyclerView$ItemAnimator;
    .registers 1

    .line 3298
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10

    .line 4644
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 4645
    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_d

    .line 4646
    iget-object p0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 4649
    :cond_d
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4651
    :cond_21
    iget-object p0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 4653
    :cond_24
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 4654
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4655
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_31
    if-ge v4, v3, :cond_68

    .line 4657
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4658
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 4659
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4660
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4661
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4662
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 4664
    :cond_68
    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    .registers 1

    .line 1346
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public getMaxFlingVelocity()I
    .registers 1

    .line 2162
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .registers 1

    .line 2152
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return p0
.end method

.method getNanoTime()J
    .registers 3

    .line 5293
    sget-boolean p0, Lflyme/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz p0, :cond_9

    .line 5294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Lflyme/support/v7/widget/RecyclerView$OnFlingListener;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1248
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnFlingListener:Lflyme/support/v7/widget/RecyclerView$OnFlingListener;

    return-object p0
.end method

.method public getPreserveFocusAfterLayout()Z
    .registers 1

    .line 4286
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return p0
.end method

.method public getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;
    .registers 1

    .line 1358
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    return-object p0
.end method

.method public getScrollState()I
    .registers 1

    .line 1406
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .registers 1

    .line 10938
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    .line 4766
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_13

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    .line 4767
    invoke-virtual {p0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method initAdapterManager()V
    .registers 3

    .line 847
    new-instance v0, Lflyme/support/v7/widget/AdapterHelper;

    new-instance v1, Lflyme/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/RecyclerView$6;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/AdapterHelper;-><init>(Lflyme/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    return-void
.end method

.method public initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .registers 15
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_27

    .line 10906
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10907
    new-instance v1, Lflyme/support/v7/widget/FastScroller;

    sget v2, Lflyme/support/v7/R$dimen;->fastscroll_default_thickness:I

    .line 10909
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Lflyme/support/v7/R$dimen;->fastscroll_minimum_range:I

    .line 10910
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Lflyme/support/v7/R$dimen;->fastscroll_margin:I

    .line 10911
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lflyme/support/v7/widget/FastScroller;-><init>(Lflyme/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    .line 10903
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10904
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method invalidateGlows()V
    .registers 2

    const/4 v0, 0x0

    .line 2305
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    return-void
.end method

.method isAccessibilityEnabled()Z
    .registers 1

    .line 3220
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isAttachedToWindow()Z
    .registers 1

    .line 2611
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    return p0
.end method

.method public isComputingLayout()Z
    .registers 1

    .line 3254
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 1

    .line 10923
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public isSelectorCanDraw()Z
    .registers 1

    .line 12979
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView;->isSelectorCanDraw:Z

    return p0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .registers 3

    .line 1587
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_5

    return-void

    .line 1590
    :cond_5
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1591
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .registers 5

    .line 3939
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 3941
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3942
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3944
    :cond_1b
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .line 4247
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 4249
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4250
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x6

    .line 4251
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4254
    :cond_22
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4255
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5

    .line 4617
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 4619
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5

    .line 4579
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 4581
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 9

    .line 4123
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4126
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v1, 0x0

    move v3, v1

    :goto_d
    if-ge v3, v0, :cond_2f

    .line 4129
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 4130
    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_2c

    iget v5, v4, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_2c

    .line 4135
    invoke-virtual {v4, p2, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4136
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v4, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4139
    :cond_2f
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4140
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 12

    .line 4089
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_e

    const/4 v2, -0x1

    move v3, p2

    move v4, v2

    move v2, p1

    goto :goto_11

    :cond_e
    move v3, p1

    move v2, p2

    move v4, v1

    :goto_11
    const/4 v5, 0x0

    move v6, v5

    :goto_13
    if-ge v6, v0, :cond_3a

    .line 4102
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 4103
    iget v8, v7, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v2, :cond_37

    if-le v8, v3, :cond_28

    goto :goto_37

    :cond_28
    if-ne v8, p1, :cond_30

    sub-int v8, p2, p1

    .line 4111
    invoke-virtual {v7, v8, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_33

    .line 4113
    :cond_30
    invoke-virtual {v7, v4, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4116
    :goto_33
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v7, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_37
    :goto_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 4118
    :cond_3a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4119
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 11

    add-int v0, p1, p2

    .line 4146
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 4149
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_3e

    .line 4152
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 4153
    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 4154
    iget v5, v4, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, v0, :cond_2f

    neg-int v5, p2

    .line 4160
    invoke-virtual {v4, v5, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4161
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v4, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_3b

    :cond_2f
    if-lt v5, p1, :cond_3b

    add-int/lit8 v5, p1, -0x1

    neg-int v6, p2

    .line 4167
    invoke-virtual {v4, v5, v6, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4169
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v4, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4173
    :cond_3e
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4174
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 2549
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2550
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    .line 2551
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2552
    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2553
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1e

    .line 2554
    invoke-virtual {v1, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V

    .line 2556
    :cond_1e
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2558
    sget-boolean v0, Lflyme/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_6d

    .line 2560
    sget-object v0, Lflyme/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/GapWorker;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    .line 2561
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    if-nez v0, :cond_68

    .line 2562
    new-instance v0, Lflyme/support/v7/widget/GapWorker;

    invoke-direct {v0}, Lflyme/support/v7/widget/GapWorker;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    const/4 v0, 0x0

    .line 2567
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_44

    .line 2568
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    :cond_44
    const/high16 v1, 0x42700000  # 60.0f

    .line 2571
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_59

    if-eqz v0, :cond_59

    .line 2572
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v2, 0x41f00000  # 30.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v1

    .line 2577
    :goto_5a
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    const v2, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Lflyme/support/v7/widget/GapWorker;->mFrameIntervalNs:J

    .line 2578
    sget-object v0, Lflyme/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2580
    :cond_68
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/GapWorker;->add(Lflyme/support/v7/widget/RecyclerView;)V

    :cond_6d
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 2586
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2587
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_a

    .line 2588
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2590
    :cond_a
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 2591
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2592
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_19

    .line 2593
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 2595
    :cond_19
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2596
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2597
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ViewInfoStore;->onDetach()V

    .line 2599
    sget-boolean v0, Lflyme/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_34

    .line 2601
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/GapWorker;->remove(Lflyme/support/v7/widget/RecyclerView;)V

    const/4 v0, 0x0

    .line 2602
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    :cond_34
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 4014
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4016
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    .line 4018
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .registers 2

    .line 3203
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .registers 3

    .line 3207
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3208
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_13

    const/4 v0, 0x0

    .line 3213
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3214
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3215
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_13
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 3031
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3034
    :cond_6
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_b

    return v1

    .line 3037
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_50

    .line 3038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_50

    .line 3040
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    const/16 v0, 0x9

    .line 3044
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    neg-float v0, v0

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 3048
    :goto_2d
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_3c

    const/16 v3, 0xa

    .line 3050
    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v3

    goto :goto_3d

    :cond_3c
    move v3, v2

    :goto_3d
    cmpl-float v4, v0, v2

    if-nez v4, :cond_45

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_50

    .line 3056
    :cond_45
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v2

    mul-float/2addr v3, v2

    float-to-int v3, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3057
    invoke-virtual {p0, v3, v0, p1}, Lflyme/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_50
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 2736
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2741
    :cond_6
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 2742
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    return v2

    .line 2746
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    return v1

    .line 2750
    :cond_16
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2751
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 2753
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2a

    .line 2754
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2756
    :cond_2a
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2758
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2759
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v4, :cond_ea

    if-eq v4, v2, :cond_e1

    if-eq v4, v6, :cond_71

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6c

    const/4 v0, 0x5

    if-eq v4, v0, :cond_50

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4b

    goto/16 :goto_12c

    .line 2828
    :cond_4b
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_12c

    .line 2794
    :cond_50
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2795
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2796
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_12c

    .line 2837
    :cond_6c
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_12c

    .line 2800
    :cond_71
    iget v4, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_97

    .line 2802
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2807
    :cond_97
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 2808
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 2809
    iget v4, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v4, v2, :cond_12c

    .line 2810
    iget v4, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int/2addr v5, v4

    .line 2811
    iget v4, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int/2addr p1, v4

    const/4 v4, -0x1

    if-eqz v0, :cond_c5

    .line 2813
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v6, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v6, :cond_c5

    .line 2814
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    if-gez v5, :cond_be

    move v5, v4

    goto :goto_bf

    :cond_be
    move v5, v2

    :goto_bf
    mul-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    move v0, v2

    goto :goto_c6

    :cond_c5
    move v0, v1

    :goto_c6
    if-eqz v3, :cond_db

    .line 2817
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v5, :cond_db

    .line 2818
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    if-gez p1, :cond_d5

    goto :goto_d6

    :cond_d5
    move v4, v2

    :goto_d6
    mul-int/2addr v5, v4

    add-int/2addr v0, v5

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    move v0, v2

    :cond_db
    if-eqz v0, :cond_12c

    .line 2822
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_12c

    .line 2832
    :cond_e1
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 2833
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto :goto_12c

    .line 2763
    :cond_ea
    iget-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_f0

    .line 2764
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2766
    :cond_f0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2770
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v6, :cond_11a

    .line 2773
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_117

    .line 2775
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2777
    :cond_117
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2781
    :cond_11a
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v0, :cond_124

    move p1, v2

    goto :goto_125

    :cond_124
    move p1, v1

    :goto_125
    if-eqz v3, :cond_129

    or-int/lit8 p1, p1, 0x2

    .line 2790
    :cond_129
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    .line 2840
    :cond_12c
    :goto_12c
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p0, v2, :cond_131

    move v1, v2

    :cond_131
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    const-string p1, "RV OnLayout"

    .line 3923
    invoke-static {p1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3925
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    const/4 p1, 0x1

    .line 3926
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 3084
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_8

    .line 3085
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    .line 3088
    :cond_8
    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_72

    .line 3089
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3090
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v0, v4, :cond_1d

    if-ne v1, v4, :cond_1d

    move v3, v2

    .line 3093
    :cond_1d
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v5, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    if-nez v3, :cond_71

    .line 3094
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_2d

    goto :goto_71

    .line 3097
    :cond_2d
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v0, v2, :cond_36

    .line 3098
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3102
    :cond_36
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3103
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3104
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3107
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3111
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 3112
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 3113
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3112
    invoke-virtual {v0, v1, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3115
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3116
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3118
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_c9

    :cond_71
    :goto_71
    return-void

    .line 3121
    :cond_72
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v1, :cond_7e

    .line 3122
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    return-void

    .line 3126
    :cond_7e
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_a5

    .line 3127
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3128
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3129
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3130
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3132
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v1, :cond_97

    .line 3133
    iput-boolean v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_a0

    .line 3136
    :cond_97
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3137
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3139
    :goto_a0
    iput-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3140
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3143
    :cond_a5
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b2

    .line 3144
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_b6

    .line 3146
    :cond_b2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput v3, v0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3148
    :goto_b6
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    .line 3150
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3151
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    :cond_c9
    :goto_c9
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4

    .line 2539
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2544
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1267
    instance-of v0, p1, Lflyme/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_8

    .line 1268
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1272
    :cond_8
    check-cast p1, Lflyme/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    .line 1273
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1274
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_22

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz p0, :cond_22

    .line 1275
    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_22
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1253
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1254
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_11

    .line 1255
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$SavedState;->copyFrom(Lflyme/support/v7/widget/RecyclerView$SavedState;)V

    goto :goto_1f

    .line 1256
    :cond_11
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_1c

    .line 1257
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Lflyme/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_1f

    :cond_1c
    const/4 p0, 0x0

    .line 1259
    iput-object p0, v0, Lflyme/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_1f
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onScrolled(II)V
    .registers 3

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 3173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    .line 3175
    :cond_7
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->invalidateGlows()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 2855
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1cd

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_b

    goto/16 :goto_1cd

    .line 2858
    :cond_b
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 2859
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    return v2

    .line 2863
    :cond_16
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1b

    return v1

    .line 2867
    :cond_1b
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2868
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 2870
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2f

    .line 2871
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2875
    :cond_2f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2876
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    .line 2877
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    if-nez v5, :cond_43

    .line 2880
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v7, v2

    aput v1, v7, v1

    .line 2882
    :cond_43
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v7, v1

    int-to-float v8, v8

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v5, :cond_19c

    if-eq v5, v2, :cond_150

    const/4 v8, 0x2

    if-eq v5, v8, :cond_88

    const/4 v0, 0x3

    if-eq v5, v0, :cond_83

    const/4 v0, 0x5

    if-eq v5, v0, :cond_67

    const/4 v0, 0x6

    if-eq v5, v0, :cond_62

    goto/16 :goto_1c2

    .line 2968
    :cond_62
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1c2

    .line 2901
    :cond_67
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2902
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2903
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1c2

    .line 2993
    :cond_83
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1c2

    .line 2907
    :cond_88
    iget v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_ae

    .line 2909
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2914
    :cond_ae
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 2915
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 2916
    iget v5, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v5, v6

    .line 2917
    iget v7, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v7, p1

    .line 2919
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual {p0, v5, v7, v8, v9}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 2920
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v9, v8, v1

    sub-int/2addr v5, v9

    .line 2921
    aget v8, v8, v2

    sub-int/2addr v7, v8

    .line 2922
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v8, v1

    int-to-float v9, v9

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v4, v9, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2924
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v9, v8, v1

    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v11, v10, v1

    add-int/2addr v9, v11

    aput v9, v8, v1

    .line 2925
    aget v9, v8, v2

    aget v10, v10, v2

    add-int/2addr v9, v10

    aput v9, v8, v2

    .line 2928
    :cond_ef
    iget v8, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v8, v2, :cond_11a

    if-eqz v0, :cond_104

    .line 2930
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_104

    if-lez v5, :cond_101

    sub-int/2addr v5, v9

    goto :goto_102

    :cond_101
    add-int/2addr v5, v9

    :goto_102
    move v8, v2

    goto :goto_105

    :cond_104
    move v8, v1

    :goto_105
    if-eqz v3, :cond_115

    .line 2938
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v9, v10, :cond_115

    if-lez v7, :cond_113

    sub-int/2addr v7, v10

    goto :goto_114

    :cond_113
    add-int/2addr v7, v10

    :goto_114
    move v8, v2

    :cond_115
    if-eqz v8, :cond_11a

    .line 2947
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2951
    :cond_11a
    iget v8, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v8, v2, :cond_1c2

    .line 2952
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v8, v1

    sub-int/2addr v6, v9

    iput v6, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2953
    aget v6, v8, v2

    sub-int/2addr p1, v6

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    if-eqz v0, :cond_12e

    move p1, v5

    goto :goto_12f

    :cond_12e
    move p1, v1

    :goto_12f
    if-eqz v3, :cond_133

    move v0, v7

    goto :goto_134

    :cond_133
    move v0, v1

    .line 2955
    :goto_134
    invoke-virtual {p0, p1, v0, v4}, Lflyme/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_141

    .line 2959
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2961
    :cond_141
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    if-eqz p1, :cond_1c2

    if-nez v5, :cond_149

    if-eqz v7, :cond_1c2

    .line 2962
    :cond_149
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mGapWorker:Lflyme/support/v7/widget/GapWorker;

    invoke-virtual {p1, p0, v5, v7}, Lflyme/support/v7/widget/GapWorker;->postFromTraversal(Lflyme/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_1c2

    .line 2972
    :cond_150
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2974
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 p1, 0x0

    if-eqz v0, :cond_16c

    .line 2975
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2976
    invoke-static {v0, v5}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    goto :goto_16d

    :cond_16c
    move v0, p1

    :goto_16d
    if-eqz v3, :cond_179

    .line 2977
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2978
    invoke-static {v3, v5}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    neg-float v3, v3

    goto :goto_17a

    :cond_179
    move v3, p1

    .line 2981
    :goto_17a
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v5

    if-eqz v5, :cond_184

    .line 2982
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_197

    :cond_184
    cmpl-float v5, v0, p1

    if-nez v5, :cond_18c

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_194

    :cond_18c
    float-to-int p1, v0

    float-to-int v0, v3

    .line 2984
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_197

    .line 2985
    :cond_194
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2989
    :cond_197
    :goto_197
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->resetTouch()V

    move v1, v2

    goto :goto_1c2

    .line 2886
    :cond_19c
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v5, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    if-eqz v0, :cond_1ba

    move p1, v2

    goto :goto_1bb

    :cond_1ba
    move p1, v1

    :goto_1bb
    if-eqz v3, :cond_1bf

    or-int/lit8 p1, p1, 0x2

    .line 2897
    :cond_1bf
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    :cond_1c2
    :goto_1c2
    if-nez v1, :cond_1c9

    .line 2998
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3000
    :cond_1c9
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_1cd
    :goto_1cd
    return v1
.end method

.method postAnimationRunner()V
    .registers 2

    .line 3306
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_10

    .line 3307
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3308
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_10
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 3817
    invoke-virtual {p1, v0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3818
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3819
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3820
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3821
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lflyme/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3823
    :cond_27
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/ViewInfoStore;->addToPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public releaseEdgeEffect()V
    .registers 2

    .line 12969
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 12970
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 12971
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 12972
    :cond_15
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 12973
    :cond_1c
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .registers 3

    .line 1047
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_7

    .line 1048
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1054
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_17

    .line 1055
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1056
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1059
    :cond_17
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .registers 4

    .line 1324
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1325
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1327
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 1328
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1329
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_19
    xor-int/lit8 p1, v0, 0x1

    .line 1335
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 5

    .line 3860
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3862
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3863
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_2e

    .line 3864
    :cond_10
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_2e

    .line 3865
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3869
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3870
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V
    .registers 4

    .line 1483
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    .line 1484
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1487
    :cond_9
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1488
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 1491
    :cond_23
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1492
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeOnItemTouchListener(Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3

    .line 2680
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2681
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 2682
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 2

    .line 1550
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz p0, :cond_7

    .line 1551
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method repositionShadowingViews()V
    .registers 8

    .line 5000
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_3f

    .line 5002
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5003
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 5004
    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_3c

    .line 5005
    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5006
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 5007
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5008
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_2f

    .line 5009
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_3c

    .line 5011
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 5012
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 5010
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3f
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 2482
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 2483
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2485
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 2527
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 5

    .line 2845
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2847
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2848
    invoke-interface {v2, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2850
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 3931
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_c

    .line 3932
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_f

    :cond_c
    const/4 v0, 0x1

    .line 3934
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    :goto_f
    return-void
.end method

.method resumeRequestLayout(Z)V
    .registers 5

    .line 1950
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 1955
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 1966
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1968
    :cond_c
    iget v2, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v2, v1, :cond_2b

    if-eqz p1, :cond_25

    .line 1970
    iget-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_25

    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_25

    .line 1972
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1974
    :cond_25
    iget-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_2b

    .line 1975
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1978
    :cond_2b
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    sub-int/2addr p1, v1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    return-void
.end method

.method saveOldPositions()V
    .registers 5

    .line 4064
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4066
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4071
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4072
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 6

    .line 1629
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1630
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1634
    :cond_c
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_11

    return-void

    .line 1637
    :cond_11
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1638
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_1f

    if-eqz v1, :cond_2c

    :cond_1f
    const/4 v2, 0x0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move p1, v2

    :goto_24
    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    move p2, v2

    :goto_28
    const/4 v0, 0x0

    .line 1640
    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_2c
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 15

    .line 1722
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1723
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 1724
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1725
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    .line 1726
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    if-eqz p1, :cond_22

    .line 1728
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    sub-int v2, p1, v0

    goto :goto_24

    :cond_22
    move v0, v1

    move v2, v0

    :goto_24
    if-eqz p2, :cond_33

    .line 1732
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, p2, v4, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v3

    sub-int v4, p2, v3

    goto :goto_35

    :cond_33
    move v3, v1

    move v4, v3

    .line 1735
    :goto_35
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 1736
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1737
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1738
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_46

    :cond_42
    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 1742
    :goto_46
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_58

    .line 1745
    :cond_4d
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_58

    .line 1746
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1750
    :cond_58
    :goto_58
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v5, p0

    move v6, v0

    move v7, v3

    move v8, v2

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_94

    .line 1752
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, p2, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1753
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    aget v2, p2, v6

    sub-int/2addr p1, v2

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    if-eqz p3, :cond_81

    .line 1755
    aget p1, p2, v1

    int-to-float p1, p1

    aget p2, p2, v6

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1757
    :cond_81
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget p2, p1, v1

    iget-object p3, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, p3, v1

    add-int/2addr p2, v2

    aput p2, p1, v1

    .line 1758
    aget p2, p1, v6

    aget p3, p3, v6

    add-int/2addr p2, p3

    aput p2, p1, v6

    goto :goto_ba

    .line 1759
    :cond_94
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_ba

    .line 1767
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    if-ne v5, v6, :cond_a8

    .line 1768
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v5

    if-eqz v5, :cond_a8

    goto :goto_ba

    :cond_a8
    if-eqz p3, :cond_b7

    .line 1772
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v4, v4

    invoke-direct {p0, v5, v2, p3, v4}, Lflyme/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1774
    :cond_b7
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_ba
    :goto_ba
    if-nez v0, :cond_be

    if-eqz v3, :cond_c1

    .line 1779
    :cond_be
    invoke-virtual {p0, v0, v3}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1783
    :cond_c1
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result p1

    if-eqz p1, :cond_c8

    goto :goto_d1

    .line 1786
    :cond_c8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_d1

    .line 1787
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_d1
    :goto_d1
    if-nez v0, :cond_d5

    if-eqz v3, :cond_d6

    :cond_d5
    move v1, v6

    :cond_d6
    return v1
.end method

.method public scrollTo(II)V
    .registers 3

    const-string p0, "RecyclerView"

    const-string p1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 1623
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .registers 3

    .line 1573
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    return-void

    .line 1576
    :cond_5
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1577
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_14

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1578
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1582
    :cond_14
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1583
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 3282
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3285
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 665
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .registers 4

    const/4 v0, 0x0

    .line 1037
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    .line 1038
    invoke-direct {p0, p1, v0, v1}, Lflyme/support/v7/widget/RecyclerView;->setAdapterInternal(Lflyme/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 1039
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .registers 3

    .line 1508
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_5

    return-void

    .line 1511
    :cond_5
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1512
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method setChildImportantForAccessibilityInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 10858
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10859
    iput p2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10860
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    .line 10863
    :cond_f
    iget-object p0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setClipToPadding(Z)V
    .registers 3

    .line 952
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_7

    .line 953
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 955
    :cond_7
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 956
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 957
    iget-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_13

    .line 958
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_13
    return-void
.end method

.method setDataSetChangedAfterLayout()V
    .registers 5

    .line 4224
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 4227
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4228
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2b

    .line 4230
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 4231
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_28

    const/16 v3, 0x200

    .line 4232
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4235
    :cond_2b
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 4239
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .registers 2

    .line 939
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Lflyme/support/v7/widget/RecyclerView$ItemAnimator;)V
    .registers 4

    .line 3192
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    .line 3193
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3194
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3196
    :cond_d
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    .line 3197
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_18

    .line 3198
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_18
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .registers 2

    .line 1396
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 11

    .line 2004
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_38

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    .line 2005
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_20

    const/4 p1, 0x0

    .line 2007
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2008
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1d

    .line 2009
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2011
    :cond_1d
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_38

    .line 2013
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 2014
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2016
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 2017
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2018
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2019
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    :cond_38
    :goto_38
    return-void
.end method

.method public setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 4

    .line 1189
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_5

    return-void

    .line 1192
    :cond_5
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1195
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3a

    .line 1197
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_13

    .line 1198
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1200
    :cond_13
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1201
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1202
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1204
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_31

    .line 1205
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1207
    :cond_31
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 1208
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    goto :goto_3f

    .line 1210
    :cond_3a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1213
    :goto_3f
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1214
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_7c

    .line 1216
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5b

    .line 1220
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 1221
    iget-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_7c

    .line 1222
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V

    goto :goto_7c

    .line 1217
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a RecyclerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1225
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1226
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 2

    .line 10918
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnFlingListener(Lflyme/support/v7/widget/RecyclerView$OnFlingListener;)V
    .registers 2
    .param p1  # Lflyme/support/v7/widget/RecyclerView$OnFlingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1238
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mOnFlingListener:Lflyme/support/v7/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1525
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .registers 2

    .line 4304
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .registers 2

    .line 1370
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lflyme/support/v7/widget/RecyclerView$RecyclerListener;)V
    .registers 2

    .line 1116
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecyclerListener:Lflyme/support/v7/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method protected setScrollState(I)V
    .registers 3

    .line 1412
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    return-void

    .line 1419
    :cond_5
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    .line 1421
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1423
    :cond_d
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .registers 5

    .line 989
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_30

    const/4 v1, 0x1

    if-eq p1, v1, :cond_29

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1000
    :cond_29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_36

    .line 996
    :cond_30
    :goto_30
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    :goto_36
    return-void
.end method

.method public setSelectorCanDraw(Z)V
    .registers 2

    .line 12983
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->isSelectorCanDraw:Z

    return-void
.end method

.method public setViewCacheExtension(Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .registers 2

    .line 1381
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method setupChild(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 3266
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_e

    .line 3269
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_f

    :cond_e
    move p1, v1

    :goto_f
    if-nez p1, :cond_12

    move p1, v1

    .line 3274
    :cond_12
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public smoothScrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    .line 2041
    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 6

    .line 2053
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2054
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2058
    :cond_c
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_11

    return-void

    .line 2061
    :cond_11
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    move p1, v1

    .line 2064
    :cond_19
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_22

    move p2, v1

    :cond_22
    if-nez p1, :cond_26

    if-eqz p2, :cond_2b

    .line 2068
    :cond_26
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :cond_2b
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 4

    .line 1610
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    return-void

    .line 1613
    :cond_5
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_11

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1614
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1618
    :cond_11
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;I)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 2

    .line 10928
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public stopNestedScroll()V
    .registers 1

    .line 10933
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 2132
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2133
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .registers 10

    .line 4184
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_37

    .line 4188
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4189
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 4190
    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_34

    .line 4193
    :cond_1e
    iget v5, v4, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_34

    if-ge v5, v1, :cond_34

    const/4 v5, 0x2

    .line 4196
    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4197
    invoke-virtual {v4, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4199
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4202
    :cond_37
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
