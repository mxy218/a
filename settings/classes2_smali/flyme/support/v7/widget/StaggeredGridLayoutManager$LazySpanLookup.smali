.class Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .registers 6

    .line 2947
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 2950
    :cond_6
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2953
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2956
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_2a

    .line 2958
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2959
    iget v3, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v3, p1, :cond_27

    goto :goto_2b

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2a
    move v2, v1

    :goto_2b
    if-eq v2, v1, :cond_3d

    .line 2965
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2966
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2967
    iget p0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    return p0

    :cond_3d
    return v1
.end method

.method private offsetFullSpansForAddition(II)V
    .registers 6

    .line 2930
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 2933
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_20

    .line 2934
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2935
    iget v2, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v2, p1, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/2addr v2, p2

    .line 2938
    iput v2, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_20
    return-void
.end method

.method private offsetFullSpansForRemoval(II)V
    .registers 7

    .line 2900
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    add-int v1, p1, p2

    .line 2904
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_2a

    .line 2905
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2906
    iget v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, p1, :cond_1c

    goto :goto_27

    :cond_1c
    if-ge v3, v1, :cond_24

    .line 2910
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_27

    :cond_24
    sub-int/2addr v3, p2

    .line 2912
    iput v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_2a
    return-void
.end method


# virtual methods
.method public addFullSpanItem(Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .registers 7

    .line 2973
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2976
    :cond_b
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_36

    .line 2978
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2979
    iget v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, v4, :cond_27

    .line 2983
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2986
    :cond_27
    iget v2, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v3, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v2, v3, :cond_33

    .line 2987
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2992
    :cond_36
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .registers 3

    .line 2881
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    .line 2882
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_8
    const/4 v0, 0x0

    .line 2884
    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    return-void
.end method

.method ensureSize(I)V
    .registers 6

    .line 2869
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    if-nez v0, :cond_17

    const/16 v0, 0xa

    .line 2870
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2871
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_30

    .line 2872
    :cond_17
    array-length v2, v0

    if-lt p1, v2, :cond_30

    .line 2874
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2875
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2876
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length p1, v0

    array-length v0, p0

    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_30
    :goto_30
    return-void
.end method

.method forceInvalidateAfter(I)I
    .registers 4

    .line 2815
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 2816
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_20

    .line 2817
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2818
    iget v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v1, p1, :cond_1d

    .line 2819
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2823
    :cond_20
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result p0

    return p0
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 10

    .line 3017
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 3020
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_2c

    .line 3022
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3023
    iget v4, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p2, :cond_1a

    return-object v1

    :cond_1a
    if-lt v4, p1, :cond_29

    if-eqz p3, :cond_28

    .line 3026
    iget v4, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-eq v4, p3, :cond_28

    if-eqz p4, :cond_29

    iget-boolean v4, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    if-eqz v4, :cond_29

    :cond_28
    return-object v3

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2c
    return-object v1
.end method

.method public getFullSpanItem(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6

    .line 2996
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2999
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    .line 3000
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3001
    iget v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, p1, :cond_1b

    return-object v2

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    return-object v1
.end method

.method getSpan(I)I
    .registers 3

    .line 2848
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz p0, :cond_b

    array-length v0, p0

    if-lt p1, v0, :cond_8

    goto :goto_b

    .line 2851
    :cond_8
    aget p0, p0, p1

    return p0

    :cond_b
    :goto_b
    const/4 p0, -0x1

    return p0
.end method

.method invalidateAfter(I)I
    .registers 5

    .line 2830
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 2833
    :cond_6
    array-length v0, v0

    if-lt p1, v0, :cond_a

    return v1

    .line 2836
    :cond_a
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 2838
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v0

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2839
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length p0, p0

    return p0

    .line 2842
    :cond_1a
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    return v0
.end method

.method offsetForAddition(II)V
    .registers 6

    .line 2918
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_1e

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_1e

    :cond_8
    add-int v0, p1, p2

    .line 2921
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2922
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2924
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 2926
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method offsetForRemoval(II)V
    .registers 7

    .line 2888
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_21

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_21

    :cond_8
    add-int v0, p1, p2

    .line 2891
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2892
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2894
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v0

    sub-int/2addr v1, p2

    array-length v2, v0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 2896
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    :cond_21
    :goto_21
    return-void
.end method

.method setSpan(ILflyme/support/v7/widget/StaggeredGridLayoutManager$Span;)V
    .registers 3

    .line 2856
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2857
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget p2, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    aput p2, p0, p1

    return-void
.end method

.method sizeForPosition(I)I
    .registers 2

    .line 2861
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length p0, p0

    :goto_3
    if-gt p0, p1, :cond_8

    mul-int/lit8 p0, p0, 0x2

    goto :goto_3

    :cond_8
    return p0
.end method
