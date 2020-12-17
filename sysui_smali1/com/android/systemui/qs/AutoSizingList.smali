.class public Lcom/android/systemui/qs/AutoSizingList;
.super Landroid/widget/LinearLayout;
.source "AutoSizingList.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mBindChildren:Ljava/lang/Runnable;

.field private mCount:I

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableAutoSizing:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mItemSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    new-instance v0, Lcom/android/systemui/qs/AutoSizingList$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/AutoSizingList$1;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/android/systemui/qs/AutoSizingList$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/AutoSizingList$2;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    .line 47
    sget-object v0, Lcom/android/systemui/R$styleable;->AutoSizingList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/android/systemui/R$styleable;->AutoSizingList_itemHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    .line 49
    sget p2, Lcom/android/systemui/R$styleable;->AutoSizingList_enableAutoSizing:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/AutoSizingList;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->rebindChildren()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/AutoSizingList;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/AutoSizingList;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/AutoSizingList;)I
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/AutoSizingList;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    return-void
.end method

.method private getDesiredCount()I
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private getItemCount(I)I
    .registers 4

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result v0

    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    if-eqz v1, :cond_f

    iget p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    div-int/2addr p1, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_f
    return v0
.end method

.method private postRebindChildren()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rebindChildren()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 111
    :goto_6
    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 112
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 113
    :goto_1a
    iget-object v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eq v2, v1, :cond_2a

    if-eqz v1, :cond_27

    .line 116
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 118
    :cond_27
    invoke-virtual {p0, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 121
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_43

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_2d

    :cond_43
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/AutoSizingList;->getItemCount(I)I

    move-result v0

    .line 68
    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-eq v1, v0, :cond_13

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    .line 70
    iput v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    .line 73
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 55
    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    :cond_9
    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_12

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_12
    return-void
.end method
