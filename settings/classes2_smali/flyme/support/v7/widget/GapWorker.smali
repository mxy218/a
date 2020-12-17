.class final Lflyme/support/v7/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Lflyme/support/v7/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lflyme/support/v7/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lflyme/support/v7/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 187
    new-instance v0, Lflyme/support/v7/widget/GapWorker$1;

    invoke-direct {v0}, Lflyme/support/v7/widget/GapWorker$1;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .registers 12

    .line 214
    iget-object v0, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_26

    .line 217
    iget-object v4, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerView;

    .line 218
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_23

    .line 219
    iget-object v5, v4, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v1}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lflyme/support/v7/widget/RecyclerView;Z)V

    .line 220
    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v4, v4, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v3, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 225
    :cond_26
    iget-object v2, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v2, v1

    move v3, v2

    :goto_2d
    if-ge v2, v0, :cond_92

    .line 228
    iget-object v4, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerView;

    .line 229
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_8f

    .line 234
    :cond_3e
    iget-object v5, v4, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 235
    iget v6, v5, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 236
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v3

    move v3, v1

    .line 237
    :goto_4f
    iget v8, v5, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v3, v8, :cond_8e

    .line 239
    iget-object v8, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_68

    .line 240
    new-instance v8, Lflyme/support/v7/widget/GapWorker$Task;

    invoke-direct {v8}, Lflyme/support/v7/widget/GapWorker$Task;-><init>()V

    .line 241
    iget-object v9, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 243
    :cond_68
    iget-object v8, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lflyme/support/v7/widget/GapWorker$Task;

    .line 245
    :goto_70
    iget-object v9, v5, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    if-gt v9, v6, :cond_7a

    const/4 v10, 0x1

    goto :goto_7b

    :cond_7a
    move v10, v1

    .line 247
    :goto_7b
    iput-boolean v10, v8, Lflyme/support/v7/widget/GapWorker$Task;->immediate:Z

    .line 248
    iput v6, v8, Lflyme/support/v7/widget/GapWorker$Task;->viewVelocity:I

    .line 249
    iput v9, v8, Lflyme/support/v7/widget/GapWorker$Task;->distanceToItem:I

    .line 250
    iput-object v4, v8, Lflyme/support/v7/widget/GapWorker$Task;->view:Lflyme/support/v7/widget/RecyclerView;

    .line 251
    iget-object v9, v5, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v9, v9, v3

    iput v9, v8, Lflyme/support/v7/widget/GapWorker$Task;->position:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_4f

    :cond_8e
    move v3, v7

    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 258
    :cond_92
    iget-object p0, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v0, Lflyme/support/v7/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private flushTaskWithDeadline(Lflyme/support/v7/widget/GapWorker$Task;J)V
    .registers 7

    .line 335
    iget-boolean v0, p1, Lflyme/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b

    :cond_a
    move-wide v0, p2

    .line 336
    :goto_b
    iget-object v2, p1, Lflyme/support/v7/widget/GapWorker$Task;->view:Lflyme/support/v7/widget/RecyclerView;

    iget p1, p1, Lflyme/support/v7/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, p1, v0, v1}, Lflyme/support/v7/widget/GapWorker;->prefetchPositionWithDeadline(Lflyme/support/v7/widget/RecyclerView;IJ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 338
    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_22

    .line 339
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lflyme/support/v7/widget/RecyclerView;J)V

    :cond_22
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .registers 6

    const/4 v0, 0x0

    .line 344
    :goto_1
    iget-object v1, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 345
    iget-object v1, p0, Lflyme/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/GapWorker$Task;

    .line 346
    iget-object v2, v1, Lflyme/support/v7/widget/GapWorker$Task;->view:Lflyme/support/v7/widget/RecyclerView;

    if-nez v2, :cond_16

    goto :goto_1f

    .line 349
    :cond_16
    invoke-direct {p0, v1, p1, p2}, Lflyme/support/v7/widget/GapWorker;->flushTaskWithDeadline(Lflyme/support/v7/widget/GapWorker$Task;J)V

    .line 350
    invoke-virtual {v1}, Lflyme/support/v7/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    :goto_1f
    return-void
.end method

.method static isPrefetchPositionAttached(Lflyme/support/v7/widget/RecyclerView;I)Z
    .registers 7

    .line 262
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 264
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 265
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 267
    iget v4, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_20

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lflyme/support/v7/widget/RecyclerView;J)V
    .registers 7
    .param p1  # Lflyme/support/v7/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    .line 307
    :cond_3
    iget-boolean v0, p1, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    .line 308
    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 311
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 315
    :cond_12
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, p1, v1}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lflyme/support/v7/widget/RecyclerView;Z)V

    .line 318
    iget v1, v0, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v1, :cond_42

    :try_start_1c
    const-string v1, "RV Nested Prefetch"

    .line 320
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 321
    iget-object v1, p1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v2, p1, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/RecyclerView$State;->prepareForNestedPrefetch(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    .line 322
    :goto_29
    iget v2, v0, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_39

    .line 325
    iget-object v2, v0, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    .line 326
    invoke-direct {p0, p1, v2, p2, p3}, Lflyme/support/v7/widget/GapWorker;->prefetchPositionWithDeadline(Lflyme/support/v7/widget/RecyclerView;IJ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3d

    add-int/lit8 v1, v1, 0x2

    goto :goto_29

    .line 329
    :cond_39
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_42

    :catchall_3d
    move-exception p0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw p0

    :cond_42
    :goto_42
    return-void
.end method

.method private prefetchPositionWithDeadline(Lflyme/support/v7/widget/RecyclerView;IJ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 276
    invoke-static {p1, p2}, Lflyme/support/v7/widget/GapWorker;->isPrefetchPositionAttached(Lflyme/support/v7/widget/RecyclerView;I)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_8
    iget-object p0, p1, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, p2, p1, p3, p4}, Lflyme/support/v7/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_20

    .line 286
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 289
    iget-object p1, p2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_20

    .line 295
    :cond_1d
    invoke-virtual {p0, p2, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    :cond_20
    :goto_20
    return-object p2
.end method


# virtual methods
.method public add(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 160
    iget-object p0, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method postFromTraversal(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 8

    .line 174
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    iget-wide v0, p0, Lflyme/support/v7/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 179
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lflyme/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 180
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_17
    iget-object p0, p1, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p0, p2, p3}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method prefetch(J)V
    .registers 3

    .line 355
    invoke-direct {p0}, Lflyme/support/v7/widget/GapWorker;->buildTaskList()V

    .line 356
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public remove(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 164
    iget-object p0, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 9

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "RV Prefetch"

    .line 362
    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4f

    if-eqz v2, :cond_15

    .line 391
    :goto_f
    iput-wide v0, p0, Lflyme/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 392
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void

    .line 371
    :cond_15
    :try_start_15
    iget-object v2, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1d
    if-ge v3, v2, :cond_38

    .line 374
    iget-object v6, p0, Lflyme/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/widget/RecyclerView;

    .line 375
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_35

    .line 376
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_38
    cmp-long v2, v4, v0

    if-nez v2, :cond_3d

    goto :goto_f

    .line 385
    :cond_3d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Lflyme/support/v7/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v2, v4

    .line 387
    invoke-virtual {p0, v2, v3}, Lflyme/support/v7/widget/GapWorker;->prefetch(J)V
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_4f

    .line 391
    iput-wide v0, p0, Lflyme/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 392
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void

    :catchall_4f
    move-exception v2

    .line 391
    iput-wide v0, p0, Lflyme/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 392
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v2
.end method
