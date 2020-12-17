.class final Landroidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Landroidx/recyclerview/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/recyclerview/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
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
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Landroidx/recyclerview/widget/GapWorker$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GapWorker$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .registers 12

    .line 217
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_26

    .line 220
    iget-object v4, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_23

    .line 222
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 223
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v4, v4, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v3, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 228
    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v2, v1

    move v3, v2

    :goto_2d
    if-ge v2, v0, :cond_92

    .line 231
    iget-object v4, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_8f

    .line 237
    :cond_3e
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 238
    iget v6, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 239
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v3

    move v3, v1

    .line 240
    :goto_4f
    iget v8, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v3, v8, :cond_8e

    .line 242
    iget-object v8, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_68

    .line 243
    new-instance v8, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-direct {v8}, Landroidx/recyclerview/widget/GapWorker$Task;-><init>()V

    .line 244
    iget-object v9, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 246
    :cond_68
    iget-object v8, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 248
    :goto_70
    iget-object v9, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    if-gt v9, v6, :cond_7a

    const/4 v10, 0x1

    goto :goto_7b

    :cond_7a
    move v10, v1

    .line 250
    :goto_7b
    iput-boolean v10, v8, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    .line 251
    iput v6, v8, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 252
    iput v9, v8, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 253
    iput-object v4, v8, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    iget-object v9, v5, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v9, v9, v3

    iput v9, v8, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_4f

    :cond_8e
    move v3, v7

    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 261
    :cond_92
    iget-object p0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V
    .registers 7

    .line 344
    iget-boolean v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b

    :cond_a
    move-wide v0, p2

    .line 345
    :goto_b
    iget-object v2, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    iget p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 347
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_30

    .line 349
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 350
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_30

    .line 351
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V

    :cond_30
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .registers 6

    const/4 v0, 0x0

    .line 356
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 357
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 358
    iget-object v2, v1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_16

    goto :goto_1f

    .line 361
    :cond_16
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GapWorker;->flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V

    .line 362
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    :goto_1f
    return-void
.end method

.method static isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 7

    .line 265
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 267
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 268
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 270
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_20

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

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

.method private prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V
    .registers 7
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    .line 316
    :cond_3
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 317
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 320
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 324
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v1, 0x1

    .line 325
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 327
    iget v1, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v1, :cond_42

    :try_start_1c
    const-string v1, "RV Nested Prefetch"

    .line 329
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 330
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    .line 331
    :goto_29
    iget v2, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_39

    .line 334
    iget-object v2, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    .line 335
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3d

    add-int/lit8 v1, v1, 0x2

    goto :goto_29

    .line 338
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

.method private prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 279
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/GapWorker;->isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_8
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    const/4 v0, 0x0

    .line 287
    :try_start_b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 288
    invoke-virtual {p0, p2, v0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 292
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p3

    if-eqz p3, :cond_26

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p3

    if-nez p3, :cond_26

    .line 295
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_29

    .line 301
    :cond_26
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2d

    .line 305
    :cond_29
    :goto_29
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p2

    :catchall_2d
    move-exception p0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw p0
.end method


# virtual methods
.method public add(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 163
    iget-object p0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8

    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 181
    iget-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 182
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 183
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_17
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method prefetch(J)V
    .registers 3

    .line 367
    invoke-direct {p0}, Landroidx/recyclerview/widget/GapWorker;->buildTaskList()V

    .line 368
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public remove(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 167
    iget-object p0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 9

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "RV Prefetch"

    .line 374
    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4f

    if-eqz v2, :cond_15

    .line 403
    :goto_f
    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void

    .line 383
    :cond_15
    :try_start_15
    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1d
    if-ge v3, v2, :cond_38

    .line 386
    iget-object v6, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_35

    .line 388
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

    .line 397
    :cond_3d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v2, v4

    .line 399
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_4f

    .line 403
    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void

    :catchall_4f
    move-exception v2

    .line 403
    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v2
.end method
