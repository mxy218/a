.class public Lcom/meizu/common/widget/EnhanceGallery;
.super Lcom/meizu/common/widget/AbsSpinner;
.source "EnhanceGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;,
        Lcom/meizu/common/widget/EnhanceGallery$PerformClick;,
        Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;,
        Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;,
        Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;,
        Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;,
        Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;,
        Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;,
        Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    }
.end annotation


# instance fields
.field private mAccDelegateStates:Z

.field private mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

.field private mAnimationDuration:I

.field private mChangeChildAlphaWhenDragView:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChildWidth:I

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mChoiceMode:I

.field private mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDefaultMaxOverScrollDistance:I

.field private mDeltaLength:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownFirstPosition:I

.field private mDownLastPosition:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragAndDropPosition:I

.field private mDragEnable:Z

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragScrollY:I

.field private mDragViewBackground:I

.field private mDragViewBackgroundDelete:I

.field private mDragViewBackgroundFilter:I

.field private mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLastScrollState:I

.field private mMaxOverScrollDistance:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

.field private mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

.field private mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

.field private mScrollEnableWhenLessContent:Z

.field private mSelectedChild:Landroid/view/View;

.field private mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 381
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_EnhanceGalleryStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x0

    .line 197
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    const/16 v2, 0xfa

    .line 203
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    .line 225
    new-instance v2, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    .line 231
    new-instance v2, Lcom/meizu/common/widget/EnhanceGallery$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EnhanceGallery$1;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    .line 256
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    .line 261
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 269
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    .line 283
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    .line 298
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 304
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 336
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    .line 338
    sget v3, Lcom/meizu/common/R$drawable;->mz_list_selector_background_long_pressed:I

    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    .line 340
    sget v3, Lcom/meizu/common/R$drawable;->mz_list_selector_background_filter:I

    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    .line 342
    sget v3, Lcom/meizu/common/R$drawable;->mz_list_selector_background_delete:I

    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    .line 356
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    .line 357
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 358
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    .line 359
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 374
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    .line 2022
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 387
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 390
    sget-object v0, Lcom/meizu/common/R$styleable;->EnhanceGallery:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 392
    sget p2, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcSpacing:I

    const/16 p3, 0xa

    .line 393
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 394
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/EnhanceGallery;->setSpacing(I)V

    .line 395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mc_enhancegallery_max_overscroll_distance:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    .line 396
    sget p2, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcMaxOverScrollDistance:I

    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 397
    sget p2, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcScrollEnableWhenLessContent:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 398
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 1

    .line 127
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    return p0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    return p0
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    return p0
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    return p0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return p0
.end method

.method static synthetic access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .registers 2

    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    return p0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    return p0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return p0
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .registers 2

    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/EnhanceGallery;)Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    return p0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .registers 1

    .line 127
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    return p0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .registers 6

    if-eqz p2, :cond_7

    .line 1383
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_b
    if-eqz p2, :cond_12

    .line 1384
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_16
    const/4 p2, 0x0

    .line 1388
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_33

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x50

    if-eq v1, v2, :cond_26

    goto :goto_40

    .line 1398
    :cond_26
    iget-object p0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    sub-int p2, v0, p1

    goto :goto_40

    .line 1390
    :cond_2e
    iget-object p0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_40

    .line 1393
    :cond_33
    iget-object p0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, p1

    .line 1395
    div-int/lit8 v0, v0, 0x2

    add-int p2, p0, v0

    :goto_40
    return p2
.end method

.method private detachOffScreenChildren(Z)V
    .registers 13

    .line 662
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 663
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_52

    .line 669
    iget-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v4, :cond_13

    .line 670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    goto :goto_1a

    .line 672
    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v4, v5

    :goto_1a
    move v5, v2

    move v6, v5

    move v7, v6

    :goto_1d
    add-int/lit8 v8, v0, -0x1

    if-ge v5, v8, :cond_4d

    .line 675
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_27

    sub-int/2addr v8, v5

    goto :goto_28

    :cond_27
    move v8, v5

    .line 676
    :goto_28
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_2f

    add-int/lit8 v9, v8, -0x1

    goto :goto_31

    :cond_2f
    add-int/lit8 v9, v8, 0x1

    :goto_31
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 677
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v4, :cond_3c

    goto :goto_4d

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    .line 682
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 683
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v10, v1, v8

    invoke-virtual {v9, v10, v7}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    move v7, v8

    goto :goto_1d

    .line 686
    :cond_4d
    :goto_4d
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v0, :cond_a3

    goto :goto_a4

    .line 691
    :cond_52
    iget-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v4, :cond_62

    .line 692
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    goto :goto_6a

    .line 694
    :cond_62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    :goto_6a
    sub-int/2addr v4, v5

    sub-int/2addr v0, v3

    move v5, v0

    move v6, v2

    move v7, v6

    :goto_6f
    if-lt v5, v3, :cond_9e

    .line 697
    iget-boolean v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v8, :cond_78

    sub-int v8, v0, v5

    goto :goto_79

    :cond_78
    move v8, v5

    .line 698
    :goto_79
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_80

    add-int/lit8 v9, v8, 0x1

    goto :goto_82

    :cond_80
    add-int/lit8 v9, v8, -0x1

    :goto_82
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 699
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v4, :cond_8d

    goto :goto_9e

    :cond_8d
    add-int/lit8 v6, v6, 0x1

    .line 704
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 705
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v10, v1, v8

    invoke-virtual {v9, v10, v7}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    move v7, v8

    goto :goto_6f

    .line 708
    :cond_9e
    :goto_9e
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v7

    .line 713
    :goto_a4
    invoke-virtual {p0, v2, v6}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 715
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eq p1, v0, :cond_b0

    .line 716
    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    :cond_b0
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .registers 12

    .line 1755
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_10

    .line 1756
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v6

    :goto_11
    if-nez v0, :cond_1e

    .line 1761
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 1762
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1e
    if-eqz v0, :cond_23

    .line 1766
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_23
    return v0
.end method

.method private dispatchUnpress()V
    .registers 4

    .line 1698
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v1, 0x0

    if-ltz v0, :cond_13

    .line 1699
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1702
    :cond_13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .registers 2

    .line 1014
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 1015
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftRtl()V

    goto :goto_b

    .line 1017
    :cond_8
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftLtr()V

    :goto_b
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .registers 7

    .line 1052
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1053
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    .line 1056
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    .line 1061
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v5, -0x1

    .line 1062
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_29

    .line 1066
    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 1067
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    move v4, v2

    :goto_29
    if-le v3, v1, :cond_3f

    if-ltz v4, :cond_3f

    .line 1071
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v4, v5

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 1075
    iput v4, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 1078
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    :cond_3f
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .registers 7

    .line 1022
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1023
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 1024
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 1027
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 1032
    iget v4, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v2

    .line 1033
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_32

    .line 1036
    :cond_1b
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    const/4 v3, 0x1

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 1037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    .line 1038
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    :goto_32
    if-le v2, v1, :cond_49

    .line 1041
    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ge v4, v3, :cond_49

    .line 1042
    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    sub-int v3, v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 1046
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_49
    return-void
.end method

.method private fillToGalleryRight()V
    .registers 2

    .line 1084
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 1085
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightRtl()V

    goto :goto_b

    .line 1087
    :cond_8
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightLtr()V

    :goto_b
    return-void
.end method

.method private fillToGalleryRightLtr()V
    .registers 8

    .line 1122
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1125
    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v2, -0x1

    .line 1128
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_28

    .line 1133
    iget v6, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    .line 1134
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_34

    .line 1136
    :cond_28
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 1137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 1138
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    :goto_34
    if-ge v2, v1, :cond_48

    if-ge v6, v3, :cond_48

    .line 1142
    iget v4, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    sub-int v4, v6, v4

    invoke-direct {p0, v6, v4, v2, v5}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 1146
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_48
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .registers 7

    .line 1092
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1093
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 1096
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    .line 1101
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v4

    .line 1102
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_27

    .line 1105
    :cond_21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 1106
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    :goto_27
    if-ge v3, v1, :cond_3d

    if-ltz v2, :cond_3d

    .line 1109
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v2, v5

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 1113
    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 1116
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    :cond_3d
    return-void
.end method

.method private getCenterOfEnhanceGallery()I
    .registers 3

    .line 645
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .registers 2

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private layoutChildren()V
    .registers 8

    .line 975
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 976
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 977
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 978
    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 984
    iget-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v4, :cond_34

    .line 985
    iget v4, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 986
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v2, v5

    :goto_1f
    if-le v2, v1, :cond_4c

    if-ge v4, v3, :cond_4c

    .line 989
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v4, v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 993
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 998
    :cond_34
    iget v4, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v0

    :goto_37
    if-ge v1, v2, :cond_4c

    if-ge v4, v3, :cond_4c

    .line 1002
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v4, v5

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v1, v6}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v1

    .line 1006
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_4c
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .registers 15

    .line 1169
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    const-string v1, "accessibility"

    const/4 v2, 0x1

    if-nez v0, :cond_4e

    .line 1170
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 1173
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    if-nez v3, :cond_44

    .line 1174
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_1c

    .line 1175
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1178
    :cond_1c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1179
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-nez v1, :cond_37

    .line 1180
    new-instance v1, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    .line 1182
    :cond_37
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    if-nez v1, :cond_42

    .line 1183
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1186
    :cond_42
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    :cond_44
    move-object v3, p0

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .line 1189
    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    return-object v0

    .line 1195
    :cond_4e
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_5e

    .line 1197
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1200
    :cond_5e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1201
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-nez v1, :cond_79

    .line 1202
    new-instance v1, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    .line 1204
    :cond_79
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    if-nez v1, :cond_84

    .line 1205
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_84
    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 1209
    invoke-direct/range {v4 .. v9}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .registers 4

    .line 636
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 637
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method private onFinishedMovement()V
    .registers 2

    .line 798
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 799
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 802
    invoke-super {p0}, Lcom/meizu/common/widget/AdapterView;->selectionChanged()V

    .line 804
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private scrollIntoSlots()V
    .registers 11

    .line 727
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ea

    .line 729
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v2, :cond_d

    goto/16 :goto_ea

    .line 739
    :cond_d
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    .line 740
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 742
    iget-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_71

    .line 743
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v4, v7

    .line 744
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    .line 745
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-ne v8, v6, :cond_40

    iget v8, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v0

    iget v9, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v8, v9, :cond_40

    .line 746
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_93

    .line 747
    :cond_40
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v8, v4, :cond_cc

    .line 748
    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v8

    if-lt v8, v4, :cond_55

    .line 750
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_59

    .line 752
    :cond_55
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_59
    sub-int/2addr v4, v2

    .line 755
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v2, v0, :cond_ca

    .line 756
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v4

    if-le v0, v7, :cond_ca

    .line 757
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v0, v7

    goto :goto_cd

    .line 762
    :cond_71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v4, v7

    .line 763
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 764
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-ne v8, v6, :cond_96

    iget v8, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v0

    iget v9, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v8, v9, :cond_96

    .line 765
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    :goto_93
    sub-int v0, v7, v0

    goto :goto_cd

    .line 766
    :cond_96
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v8, v4, :cond_cc

    .line 767
    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v8

    if-ge v8, v4, :cond_ab

    .line 769
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_af

    .line 771
    :cond_ab
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_af
    sub-int/2addr v4, v2

    .line 774
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v2, v0, :cond_ca

    .line 775
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v4

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v2, v7, v2

    if-eq v0, v2, :cond_ca

    .line 776
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    goto :goto_93

    :cond_ca
    move v0, v4

    goto :goto_cd

    :cond_cc
    move v0, v1

    :goto_cd
    if-eqz v0, :cond_dc

    .line 782
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq v1, v6, :cond_d6

    .line 783
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 786
    :cond_d6
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_e9

    .line 788
    :cond_dc
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eqz v0, :cond_e3

    .line 789
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 792
    :cond_e3
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onFinishedMovement()V

    const/4 v0, -0x1

    .line 793
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    :goto_e9
    return-void

    .line 730
    :cond_ea
    :goto_ea
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eqz v0, :cond_f1

    .line 731
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    :cond_f1
    return-void
.end method

.method private setSelectionView()V
    .registers 3

    .line 820
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 821
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 823
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_14

    .line 824
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    .line 825
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 826
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    :cond_14
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIIZ)V
    .registers 12

    .line 1231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1234
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    goto :goto_1a

    .line 1235
    :cond_d
    instance-of v1, v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    if-eqz v1, :cond_14

    .line 1236
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    goto :goto_1a

    .line 1238
    :cond_14
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .line 1241
    :goto_1a
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    const/4 v2, 0x0

    if-eq p5, v1, :cond_21

    const/4 v1, -0x1

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1242
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    if-nez p3, :cond_2d

    move v2, v3

    .line 1243
    :cond_2d
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1247
    :cond_30
    iget p3, p0, Lcom/meizu/common/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 1249
    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1253
    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 1259
    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/EnhanceGallery;->calculateTop(Landroid/view/View;Z)I

    move-result p3

    .line 1260
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    .line 1262
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz p5, :cond_63

    add-int p5, p4, v1

    goto :goto_68

    :cond_63
    sub-int p5, p4, v1

    move v5, p5

    move p5, p4

    move p4, v5

    .line 1271
    :goto_68
    invoke-virtual {p1, p4, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 1273
    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz p3, :cond_99

    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz p3, :cond_99

    .line 1274
    instance-of p4, p1, Landroid/widget/Checkable;

    if-eqz p4, :cond_82

    .line 1275
    move-object p4, p1

    check-cast p4, Landroid/widget/Checkable;

    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-interface {p4, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_99

    .line 1276
    :cond_82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p4, 0xb

    if-lt p3, p4, :cond_99

    .line 1278
    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 1282
    :cond_99
    :goto_99
    iget p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_aa

    iget-boolean p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-eqz p2, :cond_aa

    .line 1283
    new-instance p2, Lcom/meizu/common/widget/EnhanceGallery$3;

    invoke-direct {p2, p0}, Lcom/meizu/common/widget/EnhanceGallery$3;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_aa
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .registers 8

    .line 2929
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 2930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2931
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-lt v2, v4, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    if-ge v3, v1, :cond_3e

    .line 2934
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v0, v3

    .line 2937
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_30

    .line 2938
    check-cast v4, Landroid/widget/Checkable;

    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_3b

    :cond_30
    if-eqz v2, :cond_3b

    .line 2940
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3e
    return-void
.end method

.method private updateSelectedItemMetadata()V
    .registers 5

    .line 1782
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    .line 1784
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_10

    return-void

    .line 1789
    :cond_10
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    return-void

    .line 1793
    :cond_16
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1794
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1796
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1797
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_25
    if-eqz v0, :cond_30

    if-eq v0, v1, :cond_30

    const/4 p0, 0x0

    .line 1805
    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    .line 1809
    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    :cond_30
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 499
    instance-of p0, p1, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    return p0
.end method

.method public clearChoices()V
    .registers 2

    .line 2163
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_7

    .line 2164
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2166
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_e

    .line 2167
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_e
    const/4 v0, 0x0

    .line 2169
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 1

    .line 488
    iget p0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    return p0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 1

    .line 494
    iget p0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    return p0
.end method

.method confirmCheckedPositionsById()V
    .registers 14

    .line 2876
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2880
    :goto_8
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_8a

    .line 2881
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 2882
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide/16 v3, -0x1

    .line 2884
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ge v6, v5, :cond_2e

    .line 2885
    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v6}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    .line 2887
    :cond_2e
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    const/4 v10, 0x1

    if-ge v6, v5, :cond_3e

    cmp-long v3, v7, v3

    if-eqz v3, :cond_38

    goto :goto_3e

    .line 2913
    :cond_38
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_87

    :cond_3e
    :goto_3e
    add-int/lit8 v3, v6, -0x14

    .line 2889
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v6, 0x14

    .line 2890
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4c
    if-ge v3, v4, :cond_6b

    .line 2893
    iget-object v5, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v5, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v11

    cmp-long v5, v7, v11

    if-nez v5, :cond_68

    .line 2896
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2897
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    move v3, v10

    goto :goto_6c

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_6b
    move v3, v0

    :goto_6c
    if-nez v3, :cond_87

    .line 2903
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v7, v8}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v1, v1, -0x1

    .line 2905
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2907
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_86

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v4, :cond_86

    const/4 v9, 0x0

    .line 2908
    invoke-virtual/range {v4 .. v9}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_86
    move v2, v10

    :cond_87
    :goto_87
    add-int/2addr v1, v10

    goto/16 :goto_8

    :cond_8a
    if-eqz v2, :cond_93

    .line 2917
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p0, :cond_93

    .line 2918
    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidate()V

    :cond_93
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 5

    .line 2659
    new-instance p0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object p0
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2

    .line 1718
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 1719
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_7
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 2

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 517
    new-instance p0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 509
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 504
    new-instance p0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCheckedItemCount()I
    .registers 1

    .line 2300
    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    return p0
.end method

.method public getCheckedItemIds()[J
    .registers 6

    .line 2346
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_e

    goto :goto_20

    .line 2351
    :cond_e
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    .line 2352
    new-array v2, p0, [J

    :goto_14
    if-ge v1, p0, :cond_1f

    .line 2355
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1f
    return-object v2

    :cond_20
    :goto_20
    new-array p0, v1, [J

    return-object p0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 2313
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 2314
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 2

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 1

    .line 1725
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    return-object p0
.end method

.method public invalidateViews()V
    .registers 2

    const/4 v0, 0x1

    .line 2279
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    .line 2280
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 2281
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->requestLayout()V

    .line 2282
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 5

    .line 2043
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-eqz v0, :cond_f

    .line 2044
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScroll(Lcom/meizu/common/widget/EnhanceGallery;III)V

    :cond_f
    return-void
.end method

.method public isItemChecked(I)Z
    .registers 3

    .line 2330
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_d

    .line 2331
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method layout(IZ)V
    .registers 7

    .line 874
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x11

    if-lt p1, v1, :cond_13

    .line 875
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    if-ne p1, p2, :cond_10

    move p1, p2

    goto :goto_11

    :cond_10
    move p1, v0

    :goto_11
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    .line 884
    :cond_13
    iget-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-eqz p1, :cond_1a

    .line 885
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->handleDataChanged()V

    .line 888
    :cond_1a
    iget-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-eqz p1, :cond_30

    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_30

    iget-object p1, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_30

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 889
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->confirmCheckedPositionsById()V

    .line 893
    :cond_30
    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-nez p1, :cond_3b

    .line 894
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 895
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->resetList()V

    return-void

    .line 900
    :cond_3b
    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz p1, :cond_42

    .line 901
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    .line 905
    :cond_42
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->recycleAllViews()V

    .line 909
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 915
    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 917
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->layoutChildren()V

    .line 920
    iget-object p1, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 922
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 923
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    .line 925
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    .line 926
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 927
    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 928
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    .line 930
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 931
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_116

    .line 933
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    .line 934
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v3, v1, v2

    mul-int/2addr v3, v0

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 936
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-lez p1, :cond_ac

    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez p1, :cond_ac

    .line 938
    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    if-eqz p1, :cond_116

    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    if-ge p1, v0, :cond_116

    .line 939
    iget-boolean p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz p2, :cond_a3

    neg-int p1, p1

    :cond_a3
    add-int/2addr v1, v2

    mul-int/2addr p1, v1

    .line 944
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 945
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_116

    .line 947
    :cond_ac
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-gtz p1, :cond_116

    .line 949
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 950
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_e5

    .line 951
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v0, v1

    .line 953
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v1, v2, :cond_116

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-eq p2, v0, :cond_116

    iget p2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    if-eqz p2, :cond_116

    .line 954
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 955
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_116

    .line 958
    :cond_e5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v0, v1

    .line 960
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v1, v2, :cond_116

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    if-eq p2, v0, :cond_116

    iget p2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    if-eqz p2, :cond_116

    .line 961
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 962
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    .line 968
    :cond_116
    :goto_116
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    return-void
.end method

.method onCancel()V
    .registers 1

    .line 1642
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1582
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    const/4 v3, 0x4

    if-ne v0, v3, :cond_b

    goto :goto_e

    .line 1586
    :cond_b
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto :goto_13

    .line 1583
    :cond_e
    :goto_e
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1584
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1590
    :goto_13
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->stop(Z)V

    .line 1593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1595
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_3a

    .line 1596
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    .line 1597
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1600
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    .line 1601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    .line 1603
    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    .line 1604
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    .line 1606
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .line 1447
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    const/4 p2, 0x0

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez p1, :cond_a

    return p2

    .line 1450
    :cond_a
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    const/4 p4, 0x1

    if-nez p1, :cond_1a

    .line 1454
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1457
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_1a

    iput-boolean p4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 1460
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 1463
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-eq v0, p4, :cond_2c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_27

    goto/16 :goto_11c

    :cond_27
    const/4 p1, 0x4

    .line 1518
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto/16 :goto_11c

    .line 1465
    :cond_2c
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x44bb8000  # 1500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_38

    return p2

    :cond_38
    const/4 v0, 0x2

    .line 1469
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1471
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1472
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1473
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float p3, p3, v2

    if-lez p3, :cond_bd

    .line 1477
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz p1, :cond_90

    .line 1478
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget p2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1479
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr p2, p3

    if-eqz p1, :cond_81

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto/16 :goto_113

    .line 1484
    :cond_81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto/16 :goto_113

    .line 1487
    :cond_90
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget p3, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 1489
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr p1, p2

    sub-int p2, v1, p1

    goto :goto_114

    .line 1491
    :cond_aa
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    add-int p2, p1, v1

    goto :goto_114

    .line 1495
    :cond_bd
    iget-boolean p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz p3, :cond_ea

    .line 1496
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget p3, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1497
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr p3, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr p3, v2

    if-eqz p1, :cond_dd

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_e5

    .line 1502
    :cond_dd
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    :goto_e5
    sub-int/2addr p3, p1

    sub-int/2addr v1, p3

    neg-int p1, v1

    move p2, p1

    goto :goto_114

    .line 1505
    :cond_ea
    iget p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget p3, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_103

    .line 1507
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int p2, p1, p2

    goto :goto_114

    .line 1509
    :cond_103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_113
    sub-int/2addr p2, p1

    .line 1514
    :goto_114
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1515
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    :goto_11c
    return p4
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    .line 1830
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_16

    .line 1837
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz p1, :cond_16

    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_16

    .line 1838
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1839
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_16
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 3000
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 3005
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3006
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getCount()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3008
    invoke-static {v0, p0, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    .line 3010
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3011
    const-class p0, Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 2970
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_46

    if-nez p1, :cond_a

    goto :goto_46

    .line 2975
    :cond_a
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1a

    .line 2976
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 p1, 0x8

    .line 2977
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1e

    :cond_1a
    const/4 p1, 0x4

    .line 2979
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2982
    :goto_1e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2983
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2984
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 2987
    :cond_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_38

    const/16 p1, 0x10

    .line 2988
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2989
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2992
    :cond_38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_46

    const/16 p0, 0x20

    .line 2993
    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2994
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_46
    :goto_46
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 523
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AdapterView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 529
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    const/4 p1, 0x0

    .line 530
    invoke-virtual {p0, p1, p1}, Lcom/meizu/common/widget/EnhanceGallery;->layout(IZ)V

    .line 531
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 7

    .line 1648
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-gez p1, :cond_5

    return-void

    .line 1651
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_31

    .line 1653
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 1655
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1656
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1660
    iget-boolean v1, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-nez v1, :cond_25

    .line 1661
    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/meizu/common/widget/EnhanceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    if-eqz v0, :cond_31

    const/4 v0, -0x1

    .line 1664
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1665
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 1666
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1674
    :cond_31
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 1675
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1676
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 1526
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    const/4 p2, 0x0

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez p1, :cond_a

    return p2

    .line 1529
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1533
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    if-nez p1, :cond_28

    .line 1534
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-eqz p1, :cond_2e

    .line 1540
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_20

    iput-boolean p4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 1541
    :cond_20
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    .line 1544
    :cond_28
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz p1, :cond_2e

    iput-boolean p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 1547
    :cond_2e
    :goto_2e
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-eqz p1, :cond_35

    .line 1548
    invoke-virtual {p0, p4}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1551
    :cond_35
    iput p4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1555
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    float-to-int p1, p3

    .line 1558
    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-le p3, v0, :cond_47

    .line 1559
    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 1562
    :cond_47
    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-eqz p3, :cond_6e

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-eqz v0, :cond_6e

    const/4 v0, 0x3

    .line 1563
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1564
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-lt p3, v0, :cond_5c

    move p1, p2

    goto :goto_6e

    .line 1567
    :cond_5c
    iget p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p3, v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    sub-float/2addr v0, p3

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :cond_6e
    :goto_6e
    if-eqz p1, :cond_75

    mul-int/lit8 p1, p1, -0x1

    .line 1573
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 1575
    :cond_75
    iput-boolean p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1424
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    const/4 v0, 0x1

    if-ltz p1, :cond_22

    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz p1, :cond_22

    .line 1426
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-nez p1, :cond_15

    .line 1427
    new-instance p1, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 1430
    :cond_15
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 1431
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iput v1, p1, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 1432
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->rememberWindowAttachCount()V

    .line 1433
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return v0

    .line 1436
    :cond_22
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez p1, :cond_2c

    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v1, :cond_39

    .line 1437
    :cond_2c
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1438
    invoke-interface {v2, v1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1437
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/meizu/common/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_39
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 833
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 834
    new-instance p1, Lcom/meizu/common/widget/EnhanceGallery$2;

    invoke-direct {p1, p0}, Lcom/meizu/common/widget/EnhanceGallery$2;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1408
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    .line 1413
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    goto :goto_17

    :cond_11
    const/4 v1, 0x3

    if-ne p1, v1, :cond_17

    .line 1415
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onCancel()V

    :cond_17
    :goto_17
    return v0
.end method

.method onUp()V
    .registers 3

    .line 1615
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    goto :goto_27

    .line 1624
    :cond_e
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_27

    .line 1625
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 1626
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1629
    :cond_1a
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startSpringback()V

    goto :goto_27

    .line 1620
    :cond_20
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_27

    .line 1617
    :cond_24
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    .line 1635
    :cond_27
    :goto_27
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchUnpress()V

    return-void
.end method

.method public performItemClicks(Landroid/view/View;IJ)Z
    .registers 14

    .line 2738
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_ba

    const/4 v3, 0x2

    if-ne v0, v3, :cond_63

    .line 2742
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_63

    .line 2743
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 2744
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2745
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz v8, :cond_38

    .line 2747
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_43

    .line 2749
    :cond_38
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_43
    :goto_43
    if-eqz v8, :cond_4b

    .line 2753
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_50

    .line 2755
    :cond_4b
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2757
    :goto_50
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_5f

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v3, :cond_5f

    move v5, p2

    move-wide v6, p3

    .line 2758
    invoke-virtual/range {v3 .. v8}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    move v0, v1

    goto :goto_60

    :cond_5f
    move v0, v2

    :goto_60
    move v3, v0

    move v0, v2

    goto :goto_b4

    .line 2763
    :cond_63
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v0, v2, :cond_b2

    .line 2764
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_9d

    .line 2766
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2767
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2768
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2769
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2770
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2772
    :cond_9a
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_af

    .line 2773
    :cond_9d
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_af

    .line 2774
    :cond_ad
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    :cond_af
    :goto_af
    move v0, v2

    move v3, v0

    goto :goto_b4

    :cond_b2
    move v0, v1

    move v3, v2

    :goto_b4
    if-eqz v0, :cond_bb

    .line 2780
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateOnScreenCheckedViews()V

    goto :goto_bb

    :cond_ba
    move v3, v2

    :cond_bb
    :goto_bb
    if-eqz v3, :cond_d0

    .line 2785
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_d0

    if-eqz p1, :cond_c6

    .line 2788
    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2790
    :cond_c6
    iget-object v3, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/meizu/common/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    return v2

    :cond_d0
    return v1
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .registers 13

    .line 2361
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d4

    .line 2362
    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 p4, 0x1

    if-nez p3, :cond_17

    if-nez p3, :cond_d3

    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    .line 2363
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p3, :cond_d3

    .line 2369
    :cond_17
    iput p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    const p3, 0x1020001

    .line 2371
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2c

    .line 2372
    instance-of v0, p3, Landroid/widget/Checkable;

    if-eqz v0, :cond_2c

    .line 2373
    move-object v0, p3

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2376
    :cond_2c
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_39

    .line 2378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2379
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2381
    :cond_39
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2383
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    .line 2384
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 2386
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 2387
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2389
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-eqz v0, :cond_ce

    .line 2390
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v0, :cond_77

    .line 2391
    move-object v2, p1

    check-cast v2, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    .line 2392
    new-instance v3, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-interface {v2}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v2}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->needBackground()Z

    move-result v5

    invoke-interface {v2}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    goto :goto_7e

    .line 2394
    :cond_77
    new-instance v2, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-direct {v2, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    .line 2397
    :goto_7e
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_b0

    if-eqz p3, :cond_92

    .line 2399
    instance-of p1, p3, Landroid/widget/Checkable;

    if-eqz p1, :cond_92

    .line 2400
    check-cast p3, Landroid/widget/Checkable;

    invoke-interface {p3, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2402
    :cond_92
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, -0x1

    .line 2403
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 2405
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-nez p1, :cond_a5

    .line 2406
    new-instance p1, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    invoke-direct {p1, p0, v3}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 2410
    :cond_a5
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 2411
    iput p2, p1, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 2412
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->rememberWindowAttachCount()V

    .line 2413
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return p4

    .line 2417
    :cond_b0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    const/4 p2, 0x0

    if-eqz v0, :cond_ca

    .line 2419
    move-object p3, p1

    check-cast p3, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {p3}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_c2

    .line 2421
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2423
    :cond_c2
    iget-boolean p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    if-eqz p0, :cond_d3

    .line 2424
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d3

    .line 2427
    :cond_ca
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d3

    .line 2430
    :cond_ce
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    invoke-virtual {p0, p1, p4}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    :cond_d3
    :goto_d3
    return p4

    .line 2438
    :cond_d4
    iget-object v2, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-eqz v2, :cond_e1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 2439
    invoke-interface/range {v2 .. v7}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_e2

    :cond_e1
    move v0, v1

    :goto_e2
    if-nez v0, :cond_f0

    .line 2442
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 2443
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_f0
    if-eqz v0, :cond_f5

    .line 2446
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_f5
    return v0
.end method

.method reportScrollStateChange(I)V
    .registers 3

    .line 2056
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq p1, v0, :cond_d

    .line 2057
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 2058
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-eqz v0, :cond_d

    .line 2059
    invoke-interface {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScrollStateChanged(Lcom/meizu/common/widget/EnhanceGallery;I)V

    :cond_d
    return-void
.end method

.method selectionChanged()V
    .registers 2

    .line 809
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_7

    .line 810
    invoke-super {p0}, Lcom/meizu/common/widget/AdapterView;->selectionChanged()V

    :cond_7
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 127
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 3

    .line 2117
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eqz p1, :cond_28

    .line 2118
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_28

    .line 2119
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_14

    .line 2120
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2122
    :cond_14
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez p1, :cond_25

    .line 2123
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2125
    :cond_25
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    :cond_28
    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2

    .line 457
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .registers 2

    .line 411
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .registers 2

    .line 436
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setChoiceMode(I)V
    .registers 3

    .line 2139
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 2140
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_c

    .line 2141
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 2142
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2144
    :cond_c
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz p1, :cond_3c

    .line 2145
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez p1, :cond_1b

    .line 2146
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2148
    :cond_1b
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_30

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 2149
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2152
    :cond_30
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3c

    .line 2153
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    const/4 p1, 0x1

    .line 2154
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    :cond_3c
    return-void
.end method

.method public setDragEnable(Z)V
    .registers 2

    .line 444
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    return-void
.end method

.method public setDragItemBackgroundResources([I)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 2511
    array-length v0, p1

    if-lez v0, :cond_a

    const/4 v0, 0x0

    .line 2512
    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    .line 2514
    :cond_a
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    .line 2515
    aget v0, p1, v1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    .line 2517
    :cond_12
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_1a

    .line 2518
    aget p1, p1, v1

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    :cond_1a
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    .line 1822
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1823
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    .line 1824
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 10

    .line 2807
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x2

    if-eqz p2, :cond_29

    .line 2812
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_29

    if-ne v0, v1, :cond_29

    .line 2814
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v0, :cond_21

    .line 2815
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2820
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_29

    .line 2816
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2823
    :cond_29
    :goto_29
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_85

    .line 2824
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2825
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2826
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_62

    if-eqz p2, :cond_57

    .line 2828
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_62

    .line 2830
    :cond_57
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_62
    :goto_62
    if-eq v0, p2, :cond_71

    if-eqz p2, :cond_6c

    .line 2835
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_71

    .line 2837
    :cond_6c
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2840
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_d6

    .line 2841
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2842
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_d6

    .line 2846
    :cond_85
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_94

    move v0, v2

    goto :goto_95

    :cond_94
    move v0, v1

    :goto_95
    if-nez p2, :cond_9d

    .line 2849
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 2850
    :cond_9d
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v0, :cond_a9

    .line 2852
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    :cond_a9
    if-eqz p2, :cond_c4

    .line 2858
    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_c1

    .line 2860
    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2862
    :cond_c1
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_d6

    .line 2863
    :cond_c4
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-eqz p1, :cond_d4

    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    if-nez p1, :cond_d6

    .line 2864
    :cond_d4
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2869
    :cond_d6
    :goto_d6
    iget-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    if-nez p1, :cond_dd

    .line 2870
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    :cond_dd
    return-void
.end method

.method public setMaxOverScrollDistance(I)V
    .registers 2

    if-gez p1, :cond_7

    .line 420
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    goto :goto_9

    .line 422
    :cond_7
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    :goto_9
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V
    .registers 3

    .line 2182
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 2183
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    .line 2185
    :cond_b
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->setWrapped(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V

    return-void
.end method

.method public setOnScrollListener(Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;)V
    .registers 2

    .line 2032
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    .line 2033
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setScrollEnableWhenLessContent(Z)V
    .registers 2

    .line 476
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 2

    .line 1774
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1777
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .registers 2

    .line 468
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    return-void
.end method

.method public showContextMenu()Z
    .registers 5

    .line 1743
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_1a

    .line 1744
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1745
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1746
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 5

    .line 1731
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1736
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1737
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method trackMotionScroll(I)Z
    .registers 10

    .line 546
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13f

    if-nez p1, :cond_b

    goto/16 :goto_13f

    :cond_b
    const/4 v2, 0x1

    if-gez p1, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    .line 557
    :goto_11
    iget-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v4, :cond_50

    .line 558
    iget v4, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    if-nez v4, :cond_33

    .line 559
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_33

    if-gtz p1, :cond_33

    move v4, v2

    goto :goto_34

    :cond_33
    move v4, v1

    .line 560
    :goto_34
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v5, v6, :cond_4e

    sub-int/2addr v0, v2

    .line 561
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    if-lt v0, v5, :cond_4e

    if-ltz p1, :cond_4e

    move v0, v2

    goto :goto_8d

    :cond_4e
    move v0, v1

    goto :goto_8d

    .line 563
    :cond_50
    iget v4, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    if-nez v4, :cond_69

    .line 564
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_69

    if-ltz p1, :cond_69

    move v4, v2

    goto :goto_6a

    :cond_69
    move v4, v1

    .line 565
    :goto_6a
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v5, v6, :cond_89

    sub-int/2addr v0, v2

    .line 566
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-gt v0, v5, :cond_89

    if-gtz p1, :cond_89

    move v0, v2

    goto :goto_8a

    :cond_89
    move v0, v1

    :goto_8a
    move v7, v4

    move v4, v0

    move v0, v7

    :goto_8d
    if-nez v0, :cond_94

    if-eqz v4, :cond_92

    goto :goto_94

    :cond_92
    move v0, v1

    goto :goto_95

    :cond_94
    :goto_94
    move v0, v2

    .line 573
    :goto_95
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->offsetChildrenLeftAndRight(I)V

    if-nez v0, :cond_ae

    .line 576
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->detachOffScreenChildren(Z)V

    if-eqz v3, :cond_a3

    .line 580
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRight()V

    goto :goto_a6

    .line 583
    :cond_a3
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeft()V

    .line 586
    :goto_a6
    iget-object p1, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 587
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectionView()V

    .line 590
    :cond_ae
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 591
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 595
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_f8

    .line 596
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/lit8 v3, p1, -0x1

    .line 597
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 598
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v4, v5

    .line 600
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    if-nez v5, :cond_e0

    if-ge v0, v4, :cond_e0

    sub-int/2addr v4, v0

    .line 601
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    goto :goto_135

    .line 603
    :cond_e0
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v0, p1, :cond_134

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    if-le v3, p1, :cond_134

    .line 604
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    goto :goto_135

    .line 608
    :cond_f8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/lit8 v3, p1, -0x1

    .line 609
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 610
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v4, v5

    .line 611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 613
    iget v6, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    if-nez v6, :cond_124

    if-le v0, v4, :cond_124

    sub-int/2addr v4, v0

    .line 614
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    goto :goto_135

    .line 616
    :cond_124
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-ne v0, p1, :cond_134

    if-ge v3, v5, :cond_134

    sub-int/2addr v5, v3

    .line 617
    iget p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v5, p1

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    goto :goto_135

    :cond_134
    move v2, v1

    .line 622
    :goto_135
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 623
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 625
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return v2

    :cond_13f
    :goto_13f
    return v1
.end method
