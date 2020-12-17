.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ScrollingView;
.implements Landroid/support/v4/view/NestedScrollingChild2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$OnFlingListener;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;,
        Landroid/support/v7/widget/RecyclerView$Orientation;
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
.field mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Landroid/support/v7/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field mIsAttached:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private final mScrollConsumed:[I

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private final mScrollStepConsumed:[I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    .line 169
    sput-object v1, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    .line 172
    sput-object v1, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 181
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
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3b

    move v1, v0

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_46

    move v1, v0

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_51

    move v1, v0

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_5a

    move v1, v0

    goto :goto_5b

    :cond_5a
    move v1, v2

    :goto_5b
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    .line 309
    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 549
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 601
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 605
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 312
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 314
    new-instance v0, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 331
    new-instance v0, Landroid/support/v7/widget/ViewInfoStore;

    invoke-direct {v0}, Landroid/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    .line 345
    new-instance v0, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 366
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 367
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 417
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 426
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 436
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 445
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 447
    new-instance v1, Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;

    .line 451
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 478
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v1, -0x1

    .line 479
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    const/4 v2, 0x1

    .line 491
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 492
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v2, 0x1

    .line 494
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 496
    new-instance v3, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 499
    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_79

    new-instance v3, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v3}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_7a

    :cond_79
    const/4 v3, 0x0

    :goto_7a
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 502
    new-instance v3, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 508
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 509
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 510
    new-instance v3, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 512
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 518
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v4, v3, [I

    .line 521
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    new-array v4, v3, [I

    .line 522
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    new-array v4, v3, [I

    .line 523
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    new-array v4, v3, [I

    .line 529
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    .line 536
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 539
    new-instance v4, Landroid/support/v7/widget/RecyclerView$2;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 560
    new-instance v4, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    if-eqz p2, :cond_cc

    .line 607
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 608
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 609
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_ce

    .line 611
    :cond_cc
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 613
    :goto_ce
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    .line 614
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 616
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 617
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 619
    invoke-static {v4, p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 621
    invoke-static {v4, p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 622
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 623
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-ne v4, v3, :cond_fe

    move v3, v2

    goto :goto_ff

    :cond_fe
    move v3, v0

    :goto_ff
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 626
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 627
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 628
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 629
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initAutofill()V

    .line 631
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_11b

    .line 633
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 636
    :cond_11b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 637
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 638
    new-instance v3, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    const/high16 v3, 0x40000

    if-eqz p2, :cond_197

    .line 645
    sget-object v4, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 647
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 648
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v1, :cond_14c

    .line 651
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 653
    :cond_14c
    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    .line 654
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    if-eqz v1, :cond_177

    .line 655
    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 656
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 657
    sget v3, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 658
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 659
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 660
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 661
    sget v6, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 662
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 663
    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/support/v7/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 666
    :cond_177
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move v10, p3

    .line 667
    invoke-direct/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 669
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_19a

    .line 670
    sget-object v1, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 672
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 673
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, p2

    goto :goto_19a

    .line 676
    :cond_197
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 680
    :cond_19a
    :goto_19a
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 2

    .line 161
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 161
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 3

    .line 161
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/RecyclerView;)[I
    .registers 1

    .line 161
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView;)[I
    .registers 1

    .line 161
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;II[I)V
    .registers 4

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->scrollStep(II[I)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 1

    .line 161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 7

    .line 1380
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1381
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1382
    :goto_c
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1383
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1385
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    const/4 p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_33

    :cond_26
    if-nez v1, :cond_2e

    .line 1387
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_33

    .line 1389
    :cond_2e
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    :goto_33
    return-void
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 8
    .param p1  # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4125
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_9

    .line 4127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_9
    if-eq p1, p2, :cond_1f

    if-eqz p6, :cond_10

    .line 4131
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4133
    :cond_10
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4136
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p5, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4137
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4138
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4140
    :cond_1f
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 4141
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_2a
    return-void
.end method

.method private cancelTouch()V
    .registers 2

    .line 3193
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    const/4 v0, 0x0

    .line 3194
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p0  # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 5546
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_21

    .line 5547
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_a
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 5549
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_12

    return-void

    .line 5553
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5554
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 5555
    check-cast v0, Landroid/view/View;

    goto :goto_a

    :cond_1d
    move-object v0, v1

    goto :goto_a

    .line 5560
    :cond_1f
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_21
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 13

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_11d

    .line 733
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 734
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11d

    .line 735
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 738
    :try_start_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 740
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_25

    .line 742
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 745
    :goto_25
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

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

    .line 749
    :try_start_32
    sget-object v5, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 750
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p3, v6, v3

    const/4 p1, 0x2

    .line 751
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

    .line 754
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_56
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_56} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_56} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_56} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_50 .. :try_end_56} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_56} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_56} :catch_86

    .line 761
    :goto_56
    :try_start_56
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 762
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_11d

    :catch_64
    move-exception p0

    .line 756
    invoke-virtual {p0, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 757
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

    .line 776
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

    .line 773
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

    .line 770
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

    .line 767
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

    .line 764
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

    .line 4071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4072
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

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

    .line 3425
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    .line 3426
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_1c

    .line 3427
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3428
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    .line 3429
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3430
    invoke-static {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3431
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1c
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 9

    .line 3777
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3780
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3781
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 3782
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3783
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3784
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 3785
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3786
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3788
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3789
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3791
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_b3

    .line 3793
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_53
    if-ge v1, v0, :cond_b3

    .line 3795
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3796
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_b0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_74

    goto :goto_b0

    .line 3799
    :cond_74
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 3801
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 3802
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3800
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3803
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3804
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v4, :cond_b0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 3805
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_b0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 3806
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3814
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v6, v4, v5, v3}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_b0
    :goto_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 3818
    :cond_b3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_11b

    .line 3825
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 3826
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3827
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3829
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3830
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v2

    .line 3832
    :goto_ce
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_117

    .line 3833
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3834
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3835
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_e7

    goto :goto_114

    .line 3838
    :cond_e7
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ViewInfoStore;->isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_114

    .line 3839
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    const/16 v4, 0x2000

    .line 3841
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_fd

    or-int/lit16 v3, v3, 0x1000

    .line 3845
    :cond_fd
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 3846
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3845
    invoke-virtual {v5, v6, v1, v3, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    if-eqz v4, :cond_10f

    .line 3848
    invoke-virtual {p0, v1, v3}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_114

    .line 3850
    :cond_10f
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v1, v3}, Landroid/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_114
    :goto_114
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    .line 3855
    :cond_117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_11e

    .line 3857
    :cond_11b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3859
    :goto_11e
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3860
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3861
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    return-void
.end method

.method private dispatchLayoutStep2()V
    .registers 5

    .line 3869
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3870
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3873
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3874
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3877
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3878
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3880
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v2, 0x0

    .line 3881
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3884
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    move v2, v1

    :goto_3b
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3885
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3886
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3887
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .registers 12

    .line 3895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3896
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3897
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3898
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3899
    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_8d

    .line 3903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1c
    if-ltz v0, :cond_86

    .line 3904
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3905
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_83

    .line 3908
    :cond_2f
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v2

    .line 3909
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 3910
    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3911
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_7e

    .line 3912
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 3923
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    .line 3925
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v8, :cond_5f

    if-ne v6, v5, :cond_5f

    .line 3928
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_83

    .line 3930
    :cond_5f
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ViewInfoStore;->popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3933
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v10, v5, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3934
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ViewInfoStore;->popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v10

    if-nez v7, :cond_76

    .line 3936
    invoke-direct {p0, v2, v3, v5, v6}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_83

    :cond_76
    move-object v3, p0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    .line 3938
    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_83

    .line 3943
    :cond_7e
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :goto_83
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 3948
    :cond_86
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ViewInfoStore;->process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 3951
    :cond_8d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 3952
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    const/4 v2, 0x0

    .line 3953
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3954
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 3955
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3957
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3958
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3959
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_b0

    .line 3960
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3962
    :cond_b0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v3, :cond_bf

    .line 3965
    iput v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 3966
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 3970
    :cond_bf
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3971
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3972
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3973
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 3974
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 3975
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3977
    :cond_e0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 3978
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 2895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2896
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    const/4 v3, 0x0

    if-nez v0, :cond_f

    .line 2899
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    goto :goto_1a

    .line 2901
    :cond_f
    invoke-interface {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 p1, 0x3

    if-eq v0, p1, :cond_17

    if-ne v0, v2, :cond_19

    .line 2904
    :cond_17
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_19
    return v2

    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 2913
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_24
    if-ge v3, v0, :cond_3a

    .line 2915
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2916
    invoke-interface {v4, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2917
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    return v2

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 2878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_c

    :cond_9
    const/4 v2, 0x0

    .line 2880
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2883
    :cond_c
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_2d

    .line 2885
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2886
    invoke-interface {v5, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2a

    if-eq v0, v1, :cond_2a

    .line 2887
    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

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

    .line 4045
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 p0, -0x1

    .line 4047
    aput p0, p1, v2

    .line 4048
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

    .line 4054
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 4055
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_35

    .line 4058
    :cond_2b
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

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

    .line 4066
    :cond_38
    aput v4, p1, v2

    .line 4067
    aput v5, p1, v1

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 5524
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 5527
    :cond_6
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_d

    .line 5528
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 5530
    :cond_d
    check-cast p0, Landroid/view/ViewGroup;

    .line 5531
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_24

    .line 5533
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5534
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 3646
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3649
    :goto_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_27

    .line 3651
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_27

    .line 3655
    :cond_19
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3656
    iget-object p0, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3659
    :cond_27
    :goto_27
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2d
    const/4 v1, 0x0

    if-ltz v0, :cond_45

    .line 3661
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_37

    return-object v1

    .line 3665
    :cond_37
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3666
    iget-object p0, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_45
    return-object v1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4563
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8

    .line 4840
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 4841
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4842
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4843
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 4844
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 4845
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 4842
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 4

    .line 3747
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    .line 3748
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

    .line 3749
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3750
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3752
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    goto :goto_4

    :cond_26
    return p0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    .line 784
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1d

    .line 785
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

    .line 787
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_26

    return-object p2

    .line 790
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class p1, Landroid/support/v7/widget/RecyclerView;

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

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .registers 2

    .line 13204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_b

    .line 13205
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 13207
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object p0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 10

    .line 3999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_75

    .line 4001
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4002
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_16

    goto :goto_72

    .line 4006
    :cond_16
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_72

    .line 4008
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const-string p2, " \n View Holder 2:"

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 4009
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4012
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4014
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4018
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4023
    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be found but it is necessary for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4025
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    .line 4023
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .registers 6

    .line 1851
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_28

    .line 1853
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1854
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_25

    .line 1857
    :cond_1d
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

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

.method private initAutofill()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 702
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x8

    .line 703
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    :cond_b
    return-void
.end method

.method private initChildrenHelper()V
    .registers 3

    .line 794
    new-instance v0, Landroid/support/v7/widget/ChildHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_106

    if-ne p2, p0, :cond_7

    goto/16 :goto_106

    .line 2621
    :cond_7
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    const/4 v1, 0x1

    if-nez p1, :cond_12

    return v1

    .line 2628
    :cond_12
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_19

    return v1

    .line 2632
    :cond_19
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2633
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2634
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2635
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2636
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, v1, :cond_48

    move p1, p2

    goto :goto_49

    :cond_48
    move p1, v1

    .line 2638
    :goto_49
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_57

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v2, v4, :cond_63

    :cond_57
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_63

    move v2, v1

    goto :goto_7e

    .line 2642
    :cond_63
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_71

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_7d

    :cond_71
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_7d

    move v2, p2

    goto :goto_7e

    :cond_7d
    move v2, v0

    .line 2648
    :goto_7e
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_8c

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v5, :cond_98

    :cond_8c
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_98

    move p2, v1

    goto :goto_b2

    .line 2652
    :cond_98
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_a6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v3, v5, :cond_b1

    :cond_a6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_b1

    goto :goto_b2

    :cond_b1
    move p2, v0

    :goto_b2
    if-eq p3, v1, :cond_fe

    const/4 v3, 0x2

    if-eq p3, v3, :cond_f5

    const/16 p1, 0x11

    if-eq p3, p1, :cond_f1

    const/16 p1, 0x21

    if-eq p3, p1, :cond_ed

    const/16 p1, 0x42

    if-eq p3, p1, :cond_e9

    const/16 p1, 0x82

    if-ne p3, p1, :cond_cb

    if-lez p2, :cond_ca

    move v0, v1

    :cond_ca
    return v0

    .line 2671
    :cond_cb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e9
    if-lez v2, :cond_ec

    move v0, v1

    :cond_ec
    return v0

    :cond_ed
    if-gez p2, :cond_f0

    move v0, v1

    :cond_f0
    return v0

    :cond_f1
    if-gez v2, :cond_f4

    move v0, v1

    :cond_f4
    return v0

    :cond_f5
    if-gtz p2, :cond_fc

    if-nez p2, :cond_fd

    mul-int/2addr v2, p1

    if-ltz v2, :cond_fd

    :cond_fc
    move v0, v1

    :cond_fd
    return v0

    :cond_fe
    if-ltz p2, :cond_105

    if-nez p2, :cond_106

    mul-int/2addr v2, p1

    if-gtz v2, :cond_106

    :cond_105
    move v0, v1

    :cond_106
    :goto_106
    return v0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 3198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_2d

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 3202
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3203
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    :cond_2d
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    .line 3515
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

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

    .line 3525
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_12

    .line 3528
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 3529
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_12

    .line 3530
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 3536
    :cond_12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3537
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    goto :goto_23

    .line 3539
    :cond_1e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3541
    :goto_23
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_30

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    move v0, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v0, v2

    .line 3542
    :goto_31
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_55

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_55

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_47

    if-nez v0, :cond_47

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_55

    :cond_47
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_53

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 3548
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_55

    :cond_53
    move v4, v2

    goto :goto_56

    :cond_55
    move v4, v1

    :goto_56
    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3549
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_6b

    if-eqz v0, :cond_6b

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_6b

    .line 3552
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_6b

    move v1, v2

    :cond_6b
    iput-boolean v1, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .registers 11

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    if-gez v1, :cond_21

    .line 2323
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2324
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

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

    invoke-static {v1, v4, p3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    :goto_1f
    move p3, v3

    goto :goto_3c

    :cond_21
    cmpl-float v1, p2, v0

    if-lez v1, :cond_3b

    .line 2327
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2328
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-static {v1, v4, p3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_1f

    :cond_3b
    const/4 p3, 0x0

    :goto_3c
    cmpg-float v1, p4, v0

    if-gez v1, :cond_56

    .line 2333
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2334
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p3, v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_72

    :cond_56
    cmpl-float v1, p4, v0

    if-lez v1, :cond_71

    .line 2337
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2338
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v2, p1

    invoke-static {p3, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_72

    :cond_71
    move v3, p3

    :goto_72
    if-nez v3, :cond_7c

    cmpl-float p1, p2, v0

    if-nez p1, :cond_7c

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_7f

    .line 2343
    :cond_7c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_7f
    return-void
.end method

.method private recoverFocusFromState()V
    .registers 7

    .line 3673
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 3674
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_b2

    .line 3675
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_b2

    .line 3683
    :cond_26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_55

    .line 3684
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3685
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_4c

    .line 3686
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 3698
    :cond_40
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_55

    .line 3701
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void

    .line 3704
    :cond_4c
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_55

    return-void

    .line 3714
    :cond_55
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3715
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v4, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_72

    :cond_71
    move-object v0, v1

    :goto_72
    if-eqz v0, :cond_8a

    .line 3718
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_8a

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3719
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_87

    goto :goto_8a

    .line 3732
    :cond_87
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_96

    .line 3720
    :cond_8a
    :goto_8a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_96

    .line 3727
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    :cond_96
    :goto_96
    if-eqz v1, :cond_b2

    .line 3736
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget p0, p0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_ae

    .line 3737
    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_ae

    .line 3738
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_ae

    goto :goto_af

    :cond_ae
    move-object p0, v1

    .line 3742
    :goto_af
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_b2
    :goto_b2
    return-void
.end method

.method private releaseGlows()V
    .registers 3

    .line 2349
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    .line 2350
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2351
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2353
    :goto_f
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1d

    .line 2354
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2355
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2357
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2b

    .line 2358
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2359
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2361
    :cond_2b
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_39

    .line 2362
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2363
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_39
    if-eqz v0, :cond_3e

    .line 2366
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3e
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .registers 14
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_5

    :cond_4
    move-object v0, p1

    .line 2693
    :goto_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2698
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2699
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_41

    .line 2701
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2702
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_41

    .line 2703
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2704
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2705
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2706
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2707
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_41
    if-eqz p2, :cond_4d

    .line 2712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2713
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2715
    :cond_4d
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

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

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .registers 3

    .line 3631
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    const/4 v0, -0x1

    .line 3632
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3633
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetTouch()V
    .registers 2

    .line 3185
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 3186
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_7
    const/4 v0, 0x0

    .line 3188
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3189
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private saveFocusInfo()V
    .registers 5

    .line 3611
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_14

    .line 3612
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    if-nez v0, :cond_18

    goto :goto_1c

    .line 3615
    :cond_18
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_1c
    if-nez v1, :cond_22

    .line 3617
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_56

    .line 3619
    :cond_22
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_33

    :cond_31
    const-wide/16 v2, -0x1

    :goto_33
    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3623
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_3d

    const/4 v2, -0x1

    goto :goto_4a

    .line 3624
    :cond_3d
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_4a

    .line 3625
    :cond_46
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    :goto_4a
    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3626
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    :goto_56
    return-void
.end method

.method private scrollStep(II[I)V
    .registers 8
    .param p3  # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1774
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1775
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    .line 1777
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 1783
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_1f

    :cond_1e
    move p1, v0

    :goto_1f
    if-eqz p2, :cond_2c

    .line 1786
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, p2, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_2d

    :cond_2c
    move p2, v0

    .line 1789
    :goto_2d
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1790
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1792
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1793
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    if-eqz p3, :cond_40

    .line 1796
    aput p1, p3, v0

    const/4 p0, 0x1

    .line 1797
    aput p2, p3, p0

    :cond_40
    return-void
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .registers 6
    .param p1  # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_e

    .line 1147
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1148
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_e
    if-eqz p2, :cond_12

    if-eqz p3, :cond_15

    .line 1151
    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1153
    :cond_15
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 1154
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1155
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_28

    .line 1157
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1158
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1160
    :cond_28
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_31

    .line 1161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1163
    :cond_31
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 1164
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    .line 2292
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2293
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_c

    .line 2294
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_c
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .registers 5

    if-gez p1, :cond_c

    .line 2395
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2396
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_16

    :cond_c
    if-lez p1, :cond_16

    .line 2398
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2399
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_16
    :goto_16
    if-gez p2, :cond_22

    .line 2403
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2404
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2c

    :cond_22
    if-lez p2, :cond_2c

    .line 2406
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_2c
    :goto_2c
    if-nez p1, :cond_30

    if-eqz p2, :cond_33

    .line 2411
    :cond_30
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

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

    .line 2726
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2727
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_d
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .registers 3
    .param p1  # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 1546
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .registers 5
    .param p1  # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1517
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 1518
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1521
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 1522
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :cond_15
    if-gez p2, :cond_1d

    .line 1525
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1527
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1529
    :goto_22
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1530
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .registers 2
    .param p1  # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2862
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 3
    .param p1  # Landroid/support/v7/widget/RecyclerView$OnScrollListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1658
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1  # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4107
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4109
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_f
    return-void
.end method

.method animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1  # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 4115
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 4116
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4118
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_12
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4

    .line 2831
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p1, :cond_23

    .line 2833
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2836
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2838
    :cond_29
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_4e

    .line 2839
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "RecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 2839
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 4418
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz p0, :cond_11

    .line 4419
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    .line 4418
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

    .line 4244
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_10

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

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

    .line 4298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4300
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4301
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4302
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4305
    :cond_1f
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    .line 1961
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1964
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    .line 1936
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1939
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    .line 1984
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1987
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    .line 2033
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2036
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .line 2009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2012
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    .line 2056
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2059
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .registers 5

    .line 2372
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_18

    if-lez p1, :cond_18

    .line 2373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2374
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2376
    :goto_19
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_31

    if-gez p1, :cond_31

    .line 2377
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2378
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2380
    :cond_31
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_49

    if-lez p2, :cond_49

    .line 2381
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2382
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2384
    :cond_49
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_61

    if-gez p2, :cond_61

    .line 2385
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2386
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_61
    if-eqz v0, :cond_66

    .line 2389
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_66
    return-void
.end method

.method consumePendingUpdateOperations()V
    .registers 4

    .line 1810
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_b

    goto :goto_67

    .line 1816
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1822
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/16 v2, 0xb

    .line 1823
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "RV PartialInvalidate"

    .line 1825
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1827
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1828
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 1829
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_4a

    .line 1830
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1831
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_4a

    .line 1834
    :cond_45
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    .line 1837
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1838
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1839
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_66

    .line 1840
    :cond_55
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1841
    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1843
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :cond_66
    :goto_66
    return-void

    .line 1811
    :cond_67
    :goto_67
    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1813
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void
.end method

.method defaultOnMeasure(II)V
    .registers 5

    .line 3357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3358
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    .line 3356
    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 3360
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 3361
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 3359
    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 3363
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .registers 4

    .line 7221
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7222
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 7223
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 7224
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7226
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 7227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    if-ltz v0, :cond_2a

    .line 7229
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .registers 4

    .line 7207
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7208
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 7209
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 7210
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7212
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 7213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    if-ltz v0, :cond_2a

    .line 7215
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method dispatchLayout()V
    .registers 3

    .line 3581
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const-string v1, "RecyclerView"

    if-nez v0, :cond_c

    const-string p0, "No adapter attached; skipping layout"

    .line 3582
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3586
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    const-string p0, "No layout manager attached; skipping layout"

    .line 3587
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3591
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3592
    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 3593
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3594
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3595
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_5b

    .line 3596
    :cond_2c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 3597
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4d

    goto :goto_53

    .line 3604
    :cond_4d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_5b

    .line 3600
    :cond_53
    :goto_53
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3601
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3606
    :goto_5b
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 4

    .line 11286
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 3

    .line 11291
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 5

    .line 11274
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 11280
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 11261
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    .line 11268
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p0

    return p0
.end method

.method dispatchOnScrollStateChanged(I)V
    .registers 4

    .line 4938
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_7

    .line 4939
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4944
    :cond_7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4947
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_11

    .line 4948
    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4950
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 4951
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_2b

    .line 4952
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method dispatchOnScrolled(II)V
    .registers 5

    .line 4898
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 4902
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 4903
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 4906
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 4910
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1b

    .line 4911
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4913
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_35

    .line 4914
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    .line 4915
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 4918
    :cond_35
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .registers 6

    .line 11173
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_30

    .line 11174
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 11175
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2d

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_2d

    .line 11178
    :cond_21
    iget v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 11181
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 11182
    iput v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11186
    :cond_30
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

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

    .line 1368
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

    .line 1360
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 4173
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 4175
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1d

    .line 4177
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4182
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_57

    .line 4183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4184
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_35

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    goto :goto_36

    :cond_35
    move v3, v1

    :goto_36
    const/high16 v4, 0x43870000  # 270.0f

    .line 4185
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4186
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4187
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_52

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_52

    move v3, v2

    goto :goto_53

    :cond_52
    move v3, v1

    .line 4188
    :goto_53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_58

    :cond_57
    move v3, v1

    .line 4190
    :goto_58
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_88

    .line 4191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4192
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_77

    .line 4193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4195
    :cond_77
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_83

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_83

    move v4, v2

    goto :goto_84

    :cond_83
    move v4, v1

    :goto_84
    or-int/2addr v3, v4

    .line 4196
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4198
    :cond_88
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 4199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 4201
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_a3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    goto :goto_a4

    :cond_a3
    move v5, v1

    :goto_a4
    const/high16 v6, 0x42b40000  # 90.0f

    .line 4202
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 4203
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4204
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_bc

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_bc

    move v4, v2

    goto :goto_bd

    :cond_bc
    move v4, v1

    :goto_bd
    or-int/2addr v3, v4

    .line 4205
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4207
    :cond_c1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_111

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_111

    .line 4208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000  # 180.0f

    .line 4209
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4210
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_f2

    .line 4211
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_101

    .line 4213
    :cond_f2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4215
    :goto_101
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_10c

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_10c

    move v1, v2

    :cond_10c
    or-int/2addr v1, v3

    .line 4216
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_112

    :cond_111
    move v1, v3

    :goto_112
    if-nez v1, :cond_129

    .line 4222
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_129

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_129

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 4223
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_129

    move v1, v2

    :cond_129
    if-eqz v1, :cond_12e

    .line 4228
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_12e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    .line 4774
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method ensureBottomGlow()V
    .registers 5

    .line 2456
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    .line 2459
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2460
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_34

    .line 2461
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2462
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2461
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_41

    .line 2464
    :cond_34
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_41
    return-void
.end method

.method ensureLeftGlow()V
    .registers 5

    .line 2416
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    .line 2419
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2420
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_34

    .line 2421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2422
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2421
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_41

    .line 2424
    :cond_34
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_41
    return-void
.end method

.method ensureRightGlow()V
    .registers 5

    .line 2429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    .line 2432
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2433
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_34

    .line 2434
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2435
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2434
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_41

    .line 2437
    :cond_34
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_41
    return-void
.end method

.method ensureTopGlow()V
    .registers 5

    .line 2442
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    .line 2445
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2446
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_34

    .line 2447
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2448
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 2447
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_41

    .line 2450
    :cond_34
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_41
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .registers 3

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 4

    .line 3759
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 3760
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->access$400(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/widget/OverScroller;

    move-result-object p0

    .line 3761
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 3762
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_29

    :cond_24
    const/4 p0, 0x0

    .line 3764
    iput p0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 3765
    iput p0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    :goto_29
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4536
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    .line 4537
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_14

    .line 4538
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4539
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

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4554
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 4555
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4668
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 4671
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_37

    .line 4675
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 4676
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_34

    .line 4677
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_34

    .line 4678
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

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

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 9

    .line 4730
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3f

    .line 4733
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_3f

    .line 4736
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 4737
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3c

    .line 4738
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

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

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 4690
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_3a

    .line 4693
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4694
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_37

    if-eqz p2, :cond_23

    .line 4696
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_2a

    goto :goto_37

    .line 4699
    :cond_23
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2a

    goto :goto_37

    .line 4702
    :cond_2a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

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
    .registers 10

    .line 2229
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "RecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2230
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2234
    :cond_d
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_12

    return v1

    .line 2238
    :cond_12
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2239
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_26

    .line 2241
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_27

    :cond_26
    move p1, v1

    :cond_27
    if-eqz v2, :cond_31

    .line 2244
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

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

    .line 2252
    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_7e

    const/4 v5, 0x1

    if-nez v0, :cond_47

    if-eqz v2, :cond_45

    goto :goto_47

    :cond_45
    move v6, v1

    goto :goto_48

    :cond_47
    :goto_47
    move v6, v5

    .line 2254
    :goto_48
    invoke-virtual {p0, v3, v4, v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2256
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    if-eqz v3, :cond_56

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_56

    return v5

    :cond_56
    if-eqz v6, :cond_7e

    if-eqz v0, :cond_5b

    move v1, v5

    :cond_5b
    if-eqz v2, :cond_5f

    or-int/lit8 v1, v1, 0x2

    .line 2268
    :cond_5f
    invoke-virtual {p0, v1, v5}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2270
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2271
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2272
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_7e
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    .line 2531
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 2535
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1f

    .line 2536
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    .line 2538
    :goto_20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_9b

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2c

    if-ne p2, v1, :cond_9b

    .line 2544
    :cond_2c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4a

    if-ne p2, v5, :cond_39

    const/16 v0, 0x82

    goto :goto_3b

    :cond_39
    const/16 v0, 0x21

    .line 2547
    :goto_3b
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_43

    move v6, v1

    goto :goto_44

    :cond_43
    move v6, v2

    .line 2549
    :goto_44
    sget-boolean v7, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v7, :cond_4b

    move p2, v0

    goto :goto_4b

    :cond_4a
    move v6, v2

    :cond_4b
    :goto_4b
    if-nez v6, :cond_7b

    .line 2554
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

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

    .line 2558
    :goto_6d
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_75

    move v6, v1

    goto :goto_76

    :cond_75
    move v6, v2

    .line 2560
    :goto_76
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v1, :cond_7b

    move p2, v0

    :cond_7b
    if-eqz v6, :cond_96

    .line 2566
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2567
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_87

    return-object v4

    .line 2572
    :cond_87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    .line 2574
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2576
    :cond_96
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_bf

    .line 2578
    :cond_9b
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_be

    if-eqz v0, :cond_be

    .line 2580
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2581
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_ad

    return-object v4

    .line 2586
    :cond_ad
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2587
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2588
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_bf

    :cond_be
    move-object v0, v1

    :goto_bf
    if-eqz v0, :cond_d6

    .line 2591
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 2592
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d2

    .line 2595
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 2601
    :cond_d2
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    .line 2604
    :cond_d6
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_dd

    goto :goto_e1

    .line 2605
    :cond_dd
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_e1
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 4249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 4252
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4250
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 4257
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    .line 4260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4258
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 4265
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 4268
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 4266
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 3

    const/16 v0, 0x20c

    .line 11190
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 11192
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 11195
    :cond_f
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    iget p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, -0x1

    return p0
.end method

.method public getBaseline()I
    .registers 2

    .line 1202
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 1203
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result p0

    return p0

    .line 1205
    :cond_9
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .registers 2

    .line 4102
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide p0

    goto :goto_10

    :cond_d
    iget p0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long p0, p0

    :goto_10
    return-wide p0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    .line 13174
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_9

    .line 13175
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0

    .line 13177
    :cond_9
    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 4597
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4598
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 4513
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_28

    if-ne v0, p0, :cond_9

    goto :goto_28

    .line 4515
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

    .line 4518
    :cond_28
    :goto_28
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public getClipToPadding()Z
    .registers 1

    .line 1048
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return p0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10

    .line 4849
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 4850
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_d

    .line 4851
    iget-object p0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 4854
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4856
    :cond_21
    iget-object p0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 4858
    :cond_24
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 4859
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4860
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_31
    if-ge v4, v3, :cond_68

    .line 4862
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4863
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 4864
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4865
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4866
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4867
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 4869
    :cond_68
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1423
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method getNanoTime()J
    .registers 3

    .line 5571
    sget-boolean p0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz p0, :cond_9

    .line 5572
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getScrollState()I
    .registers 1

    .line 1484
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .registers 1

    .line 11250
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 2

    .line 11255
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p0

    return p0
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    .line 4971
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_13

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 4972
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

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

    .line 917
    new-instance v0, Landroid/support/v7/widget/AdapterHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .registers 15
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_2d

    if-eqz p3, :cond_2d

    if-eqz p4, :cond_2d

    .line 11208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11209
    new-instance v1, Landroid/support/v7/widget/FastScroller;

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 11211
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 11212
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_margin:I

    .line 11213
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Landroid/support/v7/widget/FastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    .line 11204
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11205
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

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

    .line 2469
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isAccessibilityEnabled()Z
    .registers 1

    .line 3421
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

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

    .line 2802
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return p0
.end method

.method public isComputingLayout()Z
    .registers 1

    .line 3455
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

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

    .line 11225
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .registers 3

    .line 1704
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_5

    return-void

    .line 1707
    :cond_5
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1708
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .registers 5

    .line 4163
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 4165
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4166
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4168
    :cond_1b
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .line 4446
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 4448
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4449
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x6

    .line 4450
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4453
    :cond_22
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4454
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 4822
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 4824
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 4784
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 4786
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 8

    .line 4343
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2b

    .line 4345
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 4346
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_28

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_28

    .line 4351
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4352
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4355
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4356
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 12

    .line 4309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

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

    .line 4322
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 4323
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v2, :cond_37

    if-le v8, v3, :cond_28

    goto :goto_37

    :cond_28
    if-ne v8, p1, :cond_30

    sub-int v8, p2, p1

    .line 4331
    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_33

    .line 4333
    :cond_30
    invoke-virtual {v7, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4336
    :goto_33
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v7, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_37
    :goto_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 4338
    :cond_3a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4339
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 11

    add-int v0, p1, p2

    .line 4362
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_3a

    .line 4364
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4365
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_37

    .line 4366
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_2b

    neg-int v4, p2

    .line 4372
    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4373
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v5, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_37

    :cond_2b
    if-lt v4, p1, :cond_37

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 4379
    invoke-virtual {v3, v4, v6, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4381
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v5, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4385
    :cond_3a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4386
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 2743
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2744
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    .line 2745
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2746
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2747
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1e

    .line 2748
    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 2750
    :cond_1e
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2752
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_66

    .line 2754
    sget-object v0, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GapWorker;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    .line 2755
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-nez v0, :cond_61

    .line 2756
    new-instance v0, Landroid/support/v7/widget/GapWorker;

    invoke-direct {v0}, Landroid/support/v7/widget/GapWorker;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    .line 2760
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    const/high16 v1, 0x42700000  # 60.0f

    .line 2762
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_52

    if-eqz v0, :cond_52

    .line 2763
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v2, 0x41f00000  # 30.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    .line 2768
    :goto_53
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    const v2, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Landroid/support/v7/widget/GapWorker;->mFrameIntervalNs:J

    .line 2769
    sget-object v0, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2771
    :cond_61
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/GapWorker;->add(Landroid/support/v7/widget/RecyclerView;)V

    :cond_66
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 2777
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_a

    .line 2779
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2781
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 2782
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_19

    .line 2784
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2786
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->onDetach()V

    .line 2790
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v0, :cond_36

    .line 2792
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/GapWorker;->remove(Landroid/support/v7/widget/RecyclerView;)V

    const/4 v0, 0x0

    .line 2793
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    :cond_36
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 4234
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    .line 4238
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .registers 2

    .line 3398
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .registers 2

    const/4 v0, 0x1

    .line 3402
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .registers 4

    .line 3406
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3407
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_15

    const/4 v0, 0x0

    .line 3412
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_15

    .line 3414
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3415
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_15
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 3210
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3213
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_b

    return v1

    .line 3216
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_77

    .line 3218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    .line 3219
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x9

    .line 3222
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 3226
    :goto_2d
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_3c

    const/16 v3, 0xa

    .line 3227
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_64

    :cond_3c
    :goto_3c
    move v3, v2

    goto :goto_64

    .line 3231
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_62

    const/16 v0, 0x1a

    .line 3232
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3233
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_57

    neg-float v0, v0

    goto :goto_3c

    .line 3238
    :cond_57
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_62

    move v3, v0

    move v0, v2

    goto :goto_64

    :cond_62
    move v0, v2

    move v3, v0

    :goto_64
    cmpl-float v4, v0, v2

    if-nez v4, :cond_6c

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_77

    .line 3251
    :cond_6c
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_77
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 2927
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2932
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 2933
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    return v2

    .line 2937
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    return v1

    .line 2941
    :cond_16
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2942
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 2944
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2a

    .line 2945
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2947
    :cond_2a
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2949
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 2950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v4, :cond_da

    if-eq v4, v2, :cond_d1

    if-eq v4, v6, :cond_71

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6c

    const/4 v0, 0x5

    if-eq v4, v0, :cond_50

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4b

    goto/16 :goto_11a

    .line 3014
    :cond_4b
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_11a

    .line 2980
    :cond_50
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2981
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2982
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_11a

    .line 3023
    :cond_6c
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_11a

    .line 2986
    :cond_71
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_97

    .line 2988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2993
    :cond_97
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 2994
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 2995
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v4, v2, :cond_11a

    .line 2996
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v4, v5, v4

    .line 2997
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_bd

    .line 2999
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v4, :cond_bd

    .line 3000
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move v0, v2

    goto :goto_be

    :cond_bd
    move v0, v1

    :goto_be
    if-eqz v3, :cond_cb

    .line 3003
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_cb

    .line 3004
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move v0, v2

    :cond_cb
    if-eqz v0, :cond_11a

    .line 3008
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_11a

    .line 3018
    :cond_d1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 3019
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    goto :goto_11a

    .line 2954
    :cond_da
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_e0

    .line 2955
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2957
    :cond_e0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2961
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v6, :cond_108

    .line 2962
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2963
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2967
    :cond_108
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v0, :cond_112

    move p1, v2

    goto :goto_113

    :cond_112
    move p1, v1

    :goto_113
    if-eqz v3, :cond_117

    or-int/lit8 p1, p1, 0x2

    .line 2976
    :cond_117
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 3026
    :cond_11a
    :goto_11a
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p0, v2, :cond_11f

    move v1, v2

    :cond_11f
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    const-string p1, "RV OnLayout"

    .line 4147
    invoke-static {p1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 4149
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    const/4 p1, 0x1

    .line 4150
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 3260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_8

    .line 3261
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    .line 3264
    :cond_8
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_74

    .line 3265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3266
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3275
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v0, v4, :cond_28

    if-ne v3, v4, :cond_28

    move v2, v1

    :cond_28
    if-nez v2, :cond_73

    .line 3279
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_2f

    goto :goto_73

    .line 3283
    :cond_2f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v0, v1, :cond_38

    .line 3284
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3288
    :cond_38
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3289
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3290
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3297
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 3298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 3299
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3300
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3298
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3302
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3304
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_e0

    :cond_73
    :goto_73
    return-void

    .line 3307
    :cond_74
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_82

    .line 3308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    return-void

    .line 3312
    :cond_82
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_aa

    .line 3313
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3314
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3315
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3316
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3318
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v3, :cond_9b

    .line 3319
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_a4

    .line 3322
    :cond_9b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3325
    :goto_a4
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3326
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_bc

    .line 3327
    :cond_aa
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_bc

    .line 3333
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 3337
    :cond_bc
    :goto_bc
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_c9

    .line 3338
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_cd

    .line 3340
    :cond_c9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3342
    :goto_cd
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3343
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 3344
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3345
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    :cond_e0
    :goto_e0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4

    .line 2733
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2738
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1343
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_8

    .line 1344
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1348
    :cond_8
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1349
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1350
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_22

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz p0, :cond_22

    .line 1351
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_22
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1329
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1330
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_11

    .line 1331
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    goto :goto_1f

    .line 1332
    :cond_11
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_1c

    .line 1333
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_1f

    :cond_1c
    const/4 p0, 0x0

    .line 1335
    iput-object p0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_1f
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onScrolled(II)V
    .registers 3
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 3368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    .line 3370
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    .line 3041
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_b

    goto/16 :goto_1c8

    .line 3044
    :cond_b
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 3045
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    return v2

    .line 3049
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1b

    return v1

    .line 3053
    :cond_1b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 3054
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 3056
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2f

    .line 3057
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3061
    :cond_2f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 3062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 3063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v5, :cond_43

    .line 3066
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v7, v2

    aput v1, v7, v1

    .line 3068
    :cond_43
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v7, v1

    int-to-float v8, v8

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v5, :cond_197

    if-eq v5, v2, :cond_155

    const/4 v8, 0x2

    if-eq v5, v8, :cond_88

    const/4 v0, 0x3

    if-eq v5, v0, :cond_83

    const/4 v0, 0x5

    if-eq v5, v0, :cond_67

    const/4 v0, 0x6

    if-eq v5, v0, :cond_62

    goto/16 :goto_1bd

    .line 3154
    :cond_62
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1bd

    .line 3087
    :cond_67
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3088
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3089
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1bd

    .line 3172
    :cond_83
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1bd

    .line 3093
    :cond_88
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_ae

    .line 3095
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3100
    :cond_ae
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 3101
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 3102
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v5, v6

    .line 3103
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int v13, v7, p1

    .line 3105
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 3106
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v8, v7, v1

    sub-int/2addr v5, v8

    .line 3107
    aget v7, v7, v2

    sub-int/2addr v13, v7

    .line 3108
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v7, v1

    int-to-float v8, v8

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3110
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v7, v1

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v10, v9, v1

    add-int/2addr v8, v10

    aput v8, v7, v1

    .line 3111
    aget v8, v7, v2

    aget v9, v9, v2

    add-int/2addr v8, v9

    aput v8, v7, v2

    .line 3114
    :cond_f4
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v7, v2, :cond_11f

    if-eqz v0, :cond_109

    .line 3116
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v7, v8, :cond_109

    if-lez v5, :cond_106

    sub-int/2addr v5, v8

    goto :goto_107

    :cond_106
    add-int/2addr v5, v8

    :goto_107
    move v7, v2

    goto :goto_10a

    :cond_109
    move v7, v1

    :goto_10a
    if-eqz v3, :cond_11a

    .line 3124
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_11a

    if-lez v13, :cond_118

    sub-int/2addr v13, v9

    goto :goto_119

    :cond_118
    add-int/2addr v13, v9

    :goto_119
    move v7, v2

    :cond_11a
    if-eqz v7, :cond_11f

    .line 3133
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3137
    :cond_11f
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v7, v2, :cond_1bd

    .line 3138
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v7, v1

    sub-int/2addr v6, v8

    iput v6, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 3139
    aget v6, v7, v2

    sub-int/2addr p1, v6

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    if-eqz v0, :cond_133

    move p1, v5

    goto :goto_134

    :cond_133
    move p1, v1

    :goto_134
    if-eqz v3, :cond_138

    move v0, v13

    goto :goto_139

    :cond_138
    move v0, v1

    .line 3141
    :goto_139
    invoke-virtual {p0, p1, v0, v4}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_146

    .line 3145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3147
    :cond_146
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz p1, :cond_1bd

    if-nez v5, :cond_14e

    if-eqz v13, :cond_1bd

    .line 3148
    :cond_14e
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {p1, p0, v5, v13}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_1bd

    .line 3158
    :cond_155
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3160
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 p1, 0x0

    if-eqz v0, :cond_171

    .line 3161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3162
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_172

    :cond_171
    move v0, p1

    :goto_172
    if-eqz v3, :cond_17e

    .line 3163
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3164
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_17f

    :cond_17e
    move v3, p1

    :goto_17f
    cmpl-float v5, v0, p1

    if-nez v5, :cond_187

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_18f

    :cond_187
    float-to-int p1, v0

    float-to-int v0, v3

    .line 3165
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_192

    .line 3166
    :cond_18f
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3168
    :cond_192
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    move v1, v2

    goto :goto_1bd

    .line 3072
    :cond_197
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3073
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3074
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    if-eqz v0, :cond_1b5

    move p1, v2

    goto :goto_1b6

    :cond_1b5
    move p1, v1

    :goto_1b6
    if-eqz v3, :cond_1ba

    or-int/lit8 p1, p1, 0x2

    .line 3083
    :cond_1ba
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_1bd
    :goto_1bd
    if-nez v1, :cond_1c4

    .line 3177
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3179
    :cond_1c4
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_1c8
    :goto_1c8
    return v1
.end method

.method postAnimationRunner()V
    .registers 2

    .line 3508
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_10

    .line 3509
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3510
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_10
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .registers 3

    .line 4436
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    .line 4437
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4438
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 4035
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4036
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4037
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_27

    .line 4038
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 4039
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4041
    :cond_27
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .registers 3

    .line 1120
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_7

    .line 1121
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1127
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_17

    .line 1128
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1132
    :cond_17
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .registers 4

    .line 1400
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1401
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1403
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 1404
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1405
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_19
    xor-int/lit8 p1, v0, 0x1

    .line 1411
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 5

    .line 4078
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 4080
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4081
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_35

    .line 4082
    :cond_10
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_35

    .line 4083
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4084
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4091
    :cond_35
    :goto_35
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4093
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 4094
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .registers 4
    .param p1  # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    .line 1600
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1603
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1604
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1605
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

    .line 1607
    :cond_23
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1608
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1  # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 2873
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .param p1  # Landroid/support/v7/widget/RecyclerView$OnScrollListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1667
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz p0, :cond_7

    .line 1668
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method repositionShadowingViews()V
    .registers 8

    .line 5212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_3f

    .line 5214
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5215
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 5216
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_3c

    .line 5217
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5218
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 5219
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5220
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_3c

    .line 5222
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 5223
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 5221
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3f
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 2676
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 2677
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2679
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 2721
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 5

    .line 3031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3033
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 3034
    invoke-interface {v2, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3036
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 4155
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_c

    .line 4156
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_f

    :cond_c
    const/4 v0, 0x1

    .line 4158
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_f
    return-void
.end method

.method saveOldPositions()V
    .registers 5

    .line 4284
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4286
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4291
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4292
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 6

    .line 1746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1747
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1751
    :cond_c
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_11

    return-void

    .line 1754
    :cond_11
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1755
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

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

    .line 1757
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_2c
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 22

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 1879
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1880
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_25

    .line 1881
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    invoke-direct {v7, v8, v9, v0}, Landroid/support/v7/widget/RecyclerView;->scrollStep(II[I)V

    .line 1882
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    aget v1, v0, v12

    .line 1883
    aget v0, v0, v11

    sub-int v2, v8, v1

    sub-int v3, v9, v0

    move v6, v0

    move v15, v1

    move v13, v2

    move v14, v3

    goto :goto_29

    :cond_25
    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    .line 1887
    :goto_29
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1888
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1891
    :cond_34
    iget-object v5, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v6

    move v3, v13

    move v4, v14

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1894
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v1, v12

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1895
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    aget v2, v1, v11

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    if-eqz v10, :cond_63

    .line 1897
    aget v0, v1, v12

    int-to-float v0, v0

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1899
    :cond_63
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v12

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v2, v12

    add-int/2addr v1, v3

    aput v1, v0, v12

    .line 1900
    aget v1, v0, v11

    aget v2, v2, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    goto :goto_97

    .line 1901
    :cond_76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_97

    if-eqz v10, :cond_94

    const/16 v0, 0x2002

    .line 1902
    invoke-static {v10, v0}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_94

    .line 1903
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v14

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1905
    :cond_94
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_97
    :goto_97
    move/from16 v0, v17

    if-nez v15, :cond_9d

    if-eqz v0, :cond_a0

    .line 1908
    :cond_9d
    invoke-virtual {v7, v15, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1910
    :cond_a0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 1911
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a9
    if-nez v15, :cond_ad

    if-eqz v0, :cond_ae

    :cond_ad
    move v12, v11

    :cond_ae
    return v12
.end method

.method public scrollTo(II)V
    .registers 3

    const-string p0, "RecyclerView"

    const-string p1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 1740
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 3483
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3486
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 2
    .param p1  # Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 723
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 724
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 4
    .param p1  # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1109
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    .line 1110
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 1111
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1112
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 11163
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11164
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11165
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    .line 11168
    :cond_f
    iget-object p0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setClipToPadding(Z)V
    .registers 3

    .line 1024
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_7

    .line 1025
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 1027
    :cond_7
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 1028
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1029
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_13

    .line 1030
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_13
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 11

    .line 2147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_38

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    .line 2148
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_20

    const/4 p1, 0x0

    .line 2150
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2151
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1d

    .line 2152
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2154
    :cond_1d
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_38

    .line 2156
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 2157
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2159
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 2160
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2161
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2162
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    :cond_38
    :goto_38
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 4
    .param p1  # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1264
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_5

    return-void

    .line 1267
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3a

    .line 1272
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_13

    .line 1273
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1275
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1277
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1279
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_31

    .line 1280
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1282
    :cond_31
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1283
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    goto :goto_3f

    .line 1285
    :cond_3a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1288
    :goto_3f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1289
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_80

    .line 1291
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5b

    .line 1296
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1297
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_80

    .line 1298
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_80

    .line 1292
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a RecyclerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1294
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1301
    :cond_80
    :goto_80
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1302
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 2

    .line 11220
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method setScrollState(I)V
    .registers 3

    .line 1488
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    return-void

    .line 1495
    :cond_5
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    .line 1497
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1499
    :cond_d
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 3467
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_e

    .line 3470
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_f

    :cond_e
    move p1, v1

    :goto_f
    if-nez p1, :cond_12

    move p1, v1

    .line 3475
    :cond_12
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2184
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p3  # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2196
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2197
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2201
    :cond_c
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_11

    return-void

    .line 2204
    :cond_11
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    move p1, v1

    .line 2207
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_22

    move p2, v1

    :cond_22
    if-nez p1, :cond_26

    if-eqz p2, :cond_2b

    .line 2211
    :cond_26
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :cond_2b
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 4

    .line 1727
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    return-void

    .line 1730
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_11

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1731
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1735
    :cond_11
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    return-void
.end method

.method startInterceptRequestLayout()V
    .registers 3

    .line 2074
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2075
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 2076
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_11
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 2

    .line 11230
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public startNestedScroll(II)Z
    .registers 3

    .line 11235
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method stopInterceptRequestLayout(Z)V
    .registers 5

    .line 2091
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 2098
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_10

    .line 2100
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_10

    .line 2109
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2111
    :cond_10
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_2f

    if-eqz p1, :cond_29

    .line 2113
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_29

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_29

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_29

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_29

    .line 2115
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 2117
    :cond_29
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_2f

    .line 2118
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2121
    :cond_2f
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .registers 1

    .line 11240
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 2

    .line 11245
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 2284
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2285
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .registers 10

    .line 4396
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_37

    .line 4400
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4401
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 4402
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_34

    .line 4405
    :cond_1e
    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_34

    if-ge v5, v1, :cond_34

    const/4 v5, 0x2

    .line 4408
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4409
    invoke-virtual {v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4411
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4414
    :cond_37
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
