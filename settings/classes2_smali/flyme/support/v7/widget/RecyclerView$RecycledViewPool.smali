.class public Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5109
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    .registers 3

    .line 5232
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-nez v0, :cond_14

    .line 5234
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 5235
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method


# virtual methods
.method attach(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .registers 2

    .line 5199
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 5112
    :goto_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 5113
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5114
    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method detach()V
    .registers 2

    .line 5203
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method factorInBindTime(IJ)V
    .registers 6

    .line 5183
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 5184
    iget-wide v0, p1, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method

.method factorInCreateTime(IJ)V
    .registers 6

    .line 5177
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 5178
    iget-wide v0, p1, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    return-void
.end method

.method public getRecycledView(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 5137
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-eqz p0, :cond_21

    .line 5138
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_21

    .line 5139
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5140
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 5221
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    :cond_5
    if-nez p3, :cond_e

    .line 5223
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez p1, :cond_e

    .line 5224
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    :cond_e
    if-eqz p2, :cond_13

    .line 5227
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    :cond_13
    return-void
.end method

.method public putRecycledView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 5157
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5158
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5159
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p0, v0, :cond_1b

    return-void

    .line 5165
    :cond_1b
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5166
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method runningAverage(JJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_7

    return-wide p3

    :cond_7
    const-wide/16 v0, 0x4

    .line 5173
    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method willBindInTime(IJJ)Z
    .registers 8

    .line 5194
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-wide p0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_14

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method willCreateInTime(IJJ)Z
    .registers 8

    .line 5189
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-wide p0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_14

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method
