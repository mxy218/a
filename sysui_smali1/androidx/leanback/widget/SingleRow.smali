.class Landroidx/leanback/widget/SingleRow;
.super Landroidx/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field private final mTmpLocation:Landroidx/leanback/widget/Grid$Location;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    .line 27
    new-instance v0, Landroidx/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Grid;->setNumRows(I)V

    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .registers 12

    .line 104
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_13

    .line 107
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 112
    :cond_13
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v0

    const/4 v2, 0x1

    move v3, v1

    :goto_19
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v4}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_85

    .line 113
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v3, v0, v2, v4, v1}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v6

    .line 115
    iget v3, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v3, :cond_5e

    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v3, :cond_32

    goto :goto_5e

    .line 119
    :cond_32
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v3, :cond_49

    .line 120
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v5, v4}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v3, v4

    goto :goto_5b

    .line 122
    :cond_49
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v5, v4}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v3, v4

    .line 124
    :goto_5b
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_6c

    .line 116
    :cond_5e
    :goto_5e
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v3, :cond_66

    const v3, 0x7fffffff

    goto :goto_68

    :cond_66
    const/high16 v3, -0x80000000

    .line 117
    :goto_68
    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_6c
    move v8, v3

    .line 126
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v4, v1

    const/4 v7, 0x0

    move v5, v0

    invoke-interface/range {v3 .. v8}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_86

    .line 128
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v3

    if-eqz v3, :cond_81

    goto :goto_86

    :cond_81
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_19

    :cond_85
    move v2, v3

    :cond_86
    :goto_86
    return v2
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 7
    .param p3  # Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_7

    if-lez p2, :cond_26

    goto :goto_9

    :cond_7
    if-gez p2, :cond_26

    .line 142
    :goto_9
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result p2

    if-nez p2, :cond_10

    return-void

    .line 146
    :cond_10
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result p2

    .line 147
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    neg-int p0, p0

    :goto_24
    add-int/2addr v0, p0

    goto :goto_52

    .line 151
    :cond_26
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_35

    return-void

    .line 155
    :cond_35
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result p2

    .line 156
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    iget-boolean p0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p0, :cond_51

    neg-int v0, v0

    :cond_51
    add-int/2addr v0, v1

    :goto_52
    sub-int/2addr v0, p1

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 162
    invoke-interface {p3, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    return-void
.end method

.method protected final findRowMax(ZI[I)I
    .registers 4

    if-eqz p3, :cond_8

    const/4 p1, 0x0

    .line 187
    aput p1, p3, p1

    const/4 p1, 0x1

    .line 188
    aput p2, p3, p1

    .line 190
    :cond_8
    iget-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p1, :cond_13

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p0

    goto :goto_20

    :cond_13
    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 191
    invoke-interface {p1, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p1

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result p0

    add-int/2addr p0, p1

    :goto_20
    return p0
.end method

.method protected final findRowMin(ZI[I)I
    .registers 4

    if-eqz p3, :cond_8

    const/4 p1, 0x0

    .line 177
    aput p1, p3, p1

    const/4 p1, 0x1

    .line 178
    aput p2, p3, p1

    .line 180
    :cond_8
    iget-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p1, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p1

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_20

    :cond_1a
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 181
    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p1

    :goto_20
    return p1
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .registers 5

    .line 168
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->clear()V

    .line 169
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 170
    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 171
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .registers 2

    .line 36
    iget-object p0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    return-object p0
.end method

.method getStartIndexForAppend()I
    .registers 3

    .line 50
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ltz v0, :cond_7

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 52
    :cond_7
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 53
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method getStartIndexForPrepend()I
    .registers 3

    .line 60
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 62
    :cond_7
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 63
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 65
    :cond_19
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method protected final prependVisibleItems(IZ)Z
    .registers 13

    .line 71
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_13

    .line 74
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 78
    :cond_13
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v2

    const/4 v3, 0x1

    move v4, v1

    :goto_1f
    if-lt v2, v0, :cond_79

    .line 80
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v4, v2, v1, v5, v1}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v7

    .line 82
    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v4, :cond_52

    iget v4, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v4, :cond_32

    goto :goto_52

    .line 86
    :cond_32
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_43

    .line 87
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    goto :goto_4f

    .line 89
    :cond_43
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v7

    .line 91
    :goto_4f
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_60

    .line 83
    :cond_52
    :goto_52
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_59

    const/high16 v4, -0x80000000

    goto :goto_5c

    :cond_59
    const v4, 0x7fffffff

    .line 84
    :goto_5c
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_60
    move v9, v4

    .line 93
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v5, v1

    const/4 v8, 0x0

    move v6, v2

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_7a

    .line 95
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v4

    if-eqz v4, :cond_75

    goto :goto_7a

    :cond_75
    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_1f

    :cond_79
    move v3, v4

    :cond_7a
    :goto_7a
    return v3
.end method
