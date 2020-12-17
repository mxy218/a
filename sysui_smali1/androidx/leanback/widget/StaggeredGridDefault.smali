.class final Landroidx/leanback/widget/StaggeredGridDefault;
.super Landroidx/leanback/widget/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroidx/leanback/widget/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    .line 205
    iget p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_6
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt p1, v2, :cond_3a

    .line 206
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-nez v2, :cond_14

    move v1, v0

    goto :goto_1c

    :cond_14
    if-eqz v1, :cond_1c

    .line 209
    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_1c

    return p1

    :cond_1c
    :goto_1c
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 214
    :cond_1f
    iget p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_21
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gt p1, v2, :cond_3a

    .line 215
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 216
    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_32

    move v1, v0

    goto :goto_37

    :cond_32
    if-eqz v1, :cond_37

    if-nez v2, :cond_37

    return p1

    :cond_37
    :goto_37
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_3a
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .registers 16

    .line 228
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    .line 233
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v1, :cond_75

    .line 234
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v6

    if-ge v1, v6, :cond_16

    return v4

    .line 238
    :cond_16
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v6, v1, 0x1

    .line 239
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 241
    invoke-direct {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v7

    if-gez v7, :cond_3f

    move v8, v2

    move v7, v4

    .line 246
    :goto_28
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge v7, v9, :cond_4d

    .line 247
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v8, :cond_35

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_39

    :cond_35
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    :goto_39
    if-eq v8, v2, :cond_3c

    goto :goto_4d

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 253
    :cond_3f
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v8, :cond_48

    invoke-virtual {p0, v4, v7, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v7

    goto :goto_4c

    .line 254
    :cond_48
    invoke-virtual {p0, v5, v7, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v7

    :goto_4c
    move v8, v7

    .line 256
    :cond_4d
    :goto_4d
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_58

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    if-gt v7, v8, :cond_73

    goto :goto_5e

    .line 257
    :cond_58
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    if-lt v7, v8, :cond_73

    :goto_5e
    add-int/lit8 v1, v1, 0x1

    .line 260
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ne v1, v7, :cond_73

    .line 263
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v1, :cond_6d

    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v1

    goto :goto_71

    :cond_6d
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v1

    :goto_71
    move v8, v1

    move v1, v4

    :cond_73
    move v7, v5

    goto :goto_97

    .line 268
    :cond_75
    iget v1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_7c

    move v6, v1

    goto :goto_7d

    :cond_7c
    move v6, v4

    .line 270
    :goto_7d
    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    if-lez v1, :cond_91

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    add-int/2addr v1, v5

    goto :goto_92

    :cond_91
    move v1, v6

    :goto_92
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    rem-int/2addr v1, v7

    move v7, v4

    move v8, v7

    :goto_97
    move v9, v8

    move v8, v7

    move v7, v4

    .line 281
    :goto_9a
    iget v10, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge v1, v10, :cond_14f

    if-eq v6, v0, :cond_14e

    if-nez p2, :cond_aa

    .line 283
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_aa

    goto/16 :goto_14e

    .line 286
    :cond_aa
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_b3

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_b7

    :cond_b3
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_b7
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_cb

    if-ne v7, v2, :cond_bf

    goto :goto_cb

    .line 298
    :cond_bf
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_c7

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    :goto_c5
    neg-int v10, v10

    goto :goto_c9

    :cond_c7
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    :goto_c9
    add-int/2addr v7, v10

    goto :goto_ff

    :cond_cb
    :goto_cb
    if-nez v1, :cond_ee

    .line 290
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_d9

    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_e0

    :cond_d9
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_e0
    if-eq v7, v10, :cond_ff

    if-eq v7, v2, :cond_ff

    .line 292
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_eb

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c5

    :cond_eb
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c9

    .line 295
    :cond_ee
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_f9

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_ff

    :cond_f9
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    :cond_ff
    :goto_ff
    add-int/lit8 v10, v6, 0x1

    .line 300
    invoke-virtual {p0, v6, v1, v7}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemToRow(III)I

    move-result v6

    if-eqz v8, :cond_139

    .line 305
    :goto_107
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v11, :cond_110

    sub-int v11, v7, v6

    if-le v11, v9, :cond_137

    goto :goto_114

    :cond_110
    add-int v11, v7, v6

    if-ge v11, v9, :cond_137

    :goto_114
    if-eq v10, v0, :cond_136

    if-nez p2, :cond_11f

    .line 307
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_11f

    goto :goto_136

    .line 310
    :cond_11f
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v11, :cond_128

    neg-int v6, v6

    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v6, v11

    goto :goto_12b

    :cond_128
    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v6, v11

    :goto_12b
    add-int/2addr v7, v6

    add-int/lit8 v6, v10, 0x1

    .line 311
    invoke-virtual {p0, v10, v1, v7}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemToRow(III)I

    move-result v10

    move v12, v10

    move v10, v6

    move v6, v12

    goto :goto_107

    :cond_136
    :goto_136
    return v5

    :cond_137
    :goto_137
    move v6, v10

    goto :goto_149

    .line 315
    :cond_139
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_142

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    goto :goto_146

    :cond_142
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    :goto_146
    move v8, v5

    move v9, v6

    goto :goto_137

    :goto_149
    add-int/lit8 v1, v1, 0x1

    move v7, v5

    goto/16 :goto_9a

    :cond_14e
    :goto_14e
    return v7

    :cond_14f
    if-eqz p2, :cond_152

    return v7

    .line 321
    :cond_152
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v1, :cond_15b

    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v1

    goto :goto_15f

    :cond_15b
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v1

    :goto_15f
    move v9, v1

    move v1, v4

    goto/16 :goto_9a
.end method

.method public findRowMax(ZI[I)I
    .registers 13

    .line 105
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 106
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 107
    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 111
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    add-int/lit8 v1, p2, 0x1

    move v3, p2

    move v5, v0

    move v6, v2

    move p2, v4

    .line 113
    :goto_17
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v7, :cond_77

    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gt v1, v7, :cond_77

    .line 114
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    .line 115
    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v8

    .line 116
    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v7, v6, :cond_39

    add-int/lit8 p2, p2, 0x1

    if-eqz p1, :cond_31

    if-le v5, v0, :cond_38

    goto :goto_33

    :cond_31
    if-ge v5, v0, :cond_38

    :goto_33
    move v3, v1

    move v0, v5

    move v2, v7

    move v6, v2

    goto :goto_39

    :cond_38
    move v6, v7

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 127
    :cond_3c
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v3, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v5, p2, -0x1

    move-object v6, v1

    move v7, v2

    move v1, v0

    move v0, v3

    move v3, p2

    move p2, v4

    .line 128
    :goto_4b
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v8, :cond_77

    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v5, v8, :cond_77

    .line 129
    iget v6, v6, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v1, v6

    .line 130
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v6

    .line 131
    iget v8, v6, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v8, v7, :cond_74

    add-int/lit8 p2, p2, 0x1

    .line 134
    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v7, v5}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v7

    add-int/2addr v7, v1

    if-eqz p1, :cond_6c

    if-le v7, v0, :cond_73

    goto :goto_6e

    :cond_6c
    if-ge v7, v0, :cond_73

    :goto_6e
    move v3, v5

    move v0, v7

    move v2, v8

    move v7, v2

    goto :goto_74

    :cond_73
    move v7, v8

    :cond_74
    :goto_74
    add-int/lit8 v5, v5, -0x1

    goto :goto_4b

    :cond_77
    if-eqz p3, :cond_7e

    const/4 p0, 0x0

    .line 144
    aput v2, p3, p0

    .line 145
    aput v3, p3, v4

    :cond_7e
    return v0
.end method

.method public findRowMin(ZI[I)I
    .registers 13

    .line 157
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 158
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 159
    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 163
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4d

    .line 164
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v3, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit8 v5, p2, -0x1

    move-object v6, v1

    move v7, v2

    move v1, v0

    move v0, p2

    move p2, v4

    .line 165
    :goto_20
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v8, :cond_79

    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v5, v8, :cond_79

    .line 166
    iget v6, v6, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v1, v6

    .line 167
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v6

    .line 168
    iget v8, v6, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v8, v7, :cond_4a

    add-int/lit8 p2, p2, 0x1

    .line 171
    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v7, v5}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v7

    sub-int v7, v1, v7

    if-eqz p1, :cond_42

    if-le v7, v3, :cond_49

    goto :goto_44

    :cond_42
    if-ge v7, v3, :cond_49

    :goto_44
    move v0, v5

    move v3, v7

    move v2, v8

    move v7, v2

    goto :goto_4a

    :cond_49
    move v7, v8

    :cond_4a
    :goto_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_20

    :cond_4d
    add-int/lit8 v1, p2, 0x1

    move v3, v0

    move v5, v3

    move v6, v2

    move v0, p2

    move p2, v4

    .line 181
    :goto_54
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v7, :cond_79

    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gt v1, v7, :cond_79

    .line 182
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    .line 183
    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v8

    .line 184
    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v7, v6, :cond_76

    add-int/lit8 p2, p2, 0x1

    if-eqz p1, :cond_6e

    if-le v5, v3, :cond_75

    goto :goto_70

    :cond_6e
    if-ge v5, v3, :cond_75

    :goto_70
    move v0, v1

    move v3, v5

    move v2, v7

    move v6, v2

    goto :goto_76

    :cond_75
    move v6, v7

    :cond_76
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_79
    if-eqz p3, :cond_80

    const/4 p0, 0x0

    .line 196
    aput v2, p3, p0

    .line 197
    aput v0, p3, v4

    :cond_80
    return v3
.end method

.method getRowMax(I)I
    .registers 7

    .line 29
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const/high16 v1, -0x80000000

    if-gez v0, :cond_7

    return v1

    .line 32
    :cond_7
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_33

    .line 33
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v2, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 34
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v2, p1, :cond_1c

    return v0

    .line 37
    :cond_1c
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_64

    .line 38
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 39
    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 40
    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_32

    return v0

    :cond_32
    goto :goto_1e

    .line 45
    :cond_33
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 46
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 47
    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_49

    .line 48
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    :goto_47
    add-int/2addr v0, p0

    return v0

    .line 50
    :cond_49
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_4d
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_64

    .line 51
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    .line 52
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 53
    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v4, p1, :cond_61

    .line 54
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    goto :goto_47

    :cond_61
    add-int/lit8 v3, v3, -0x1

    goto :goto_4d

    :cond_64
    return v1
.end method

.method getRowMin(I)I
    .registers 7

    .line 66
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    if-gez v0, :cond_8

    return v1

    .line 69
    :cond_8
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3d

    .line 70
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 71
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 72
    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_22

    .line 73
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    :goto_20
    sub-int/2addr v0, p0

    return v0

    .line 75
    :cond_22
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_26
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_65

    .line 76
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    .line 77
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 78
    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v4, p1, :cond_3a

    .line 79
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    goto :goto_20

    :cond_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    .line 83
    :cond_3d
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v2, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 84
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v2, p1, :cond_4e

    return v0

    .line 87
    :cond_4e
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_50
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_65

    .line 88
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 89
    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 90
    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_64

    return v0

    :cond_64
    goto :goto_50

    :cond_65
    return v1
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .registers 15

    .line 333
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_72

    .line 334
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v5

    if-le v0, v5, :cond_11

    return v3

    .line 338
    :cond_11
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/lit8 v5, v0, -0x1

    .line 339
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 341
    invoke-direct {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v6

    if-gez v6, :cond_3c

    add-int/lit8 v0, v0, -0x1

    .line 347
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v6, v4

    move v7, v1

    :goto_27
    if-ltz v6, :cond_4a

    .line 348
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_32

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_36

    :cond_32
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    :goto_36
    if-eq v7, v1, :cond_39

    goto :goto_4a

    :cond_39
    add-int/lit8 v6, v6, -0x1

    goto :goto_27

    .line 354
    :cond_3c
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_45

    invoke-virtual {p0, v4, v6, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v6

    goto :goto_49

    .line 355
    :cond_45
    invoke-virtual {p0, v3, v6, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v6

    :goto_49
    move v7, v6

    .line 357
    :cond_4a
    :goto_4a
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_55

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    if-lt v6, v7, :cond_70

    goto :goto_5b

    .line 358
    :cond_55
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    if-gt v6, v7, :cond_70

    :goto_5b
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_70

    .line 363
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v0, v4

    .line 364
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_6b

    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v6

    goto :goto_6f

    .line 365
    :cond_6b
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v6

    :goto_6f
    move v7, v6

    :cond_70
    move v6, v4

    goto :goto_97

    .line 370
    :cond_72
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_79

    move v5, v0

    goto :goto_7a

    :cond_79
    move v5, v3

    .line 372
    :goto_7a
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_91

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->row:I

    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v4

    goto :goto_92

    :cond_91
    move v0, v5

    :goto_92
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    rem-int/2addr v0, v6

    move v6, v3

    move v7, v6

    :goto_97
    move v8, v7

    move v7, v6

    move v6, v3

    :goto_9a
    if-ltz v0, :cond_149

    if-ltz v5, :cond_148

    if-nez p2, :cond_a8

    .line 384
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v9

    if-eqz v9, :cond_a8

    goto/16 :goto_148

    .line 387
    :cond_a8
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_b1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    goto :goto_b5

    :cond_b1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    :goto_b5
    const/high16 v9, -0x80000000

    if-eq v6, v1, :cond_c8

    if-ne v6, v9, :cond_bc

    goto :goto_c8

    .line 399
    :cond_bc
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_c3

    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c6

    :cond_c3
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    :goto_c5
    neg-int v9, v9

    :goto_c6
    add-int/2addr v6, v9

    goto :goto_f9

    .line 390
    :cond_c8
    :goto_c8
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v6, v4

    if-ne v0, v6, :cond_e8

    .line 391
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_d6

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    goto :goto_da

    :cond_d6
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    :goto_da
    if-eq v6, v1, :cond_f9

    if-eq v6, v9, :cond_f9

    .line 393
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_e5

    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c6

    :cond_e5
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c5

    .line 396
    :cond_e8
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_f3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    goto :goto_f9

    :cond_f3
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    :cond_f9
    :goto_f9
    add-int/lit8 v9, v5, -0x1

    .line 401
    invoke-virtual {p0, v5, v0, v6}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemToRow(III)I

    move-result v5

    if-eqz v7, :cond_133

    .line 407
    :goto_101
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_10a

    add-int v10, v6, v5

    if-ge v10, v8, :cond_131

    goto :goto_10e

    :cond_10a
    sub-int v10, v6, v5

    if-le v10, v8, :cond_131

    :goto_10e
    if-ltz v9, :cond_130

    if-nez p2, :cond_119

    .line 409
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_119

    goto :goto_130

    .line 412
    :cond_119
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_121

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v5, v10

    goto :goto_125

    :cond_121
    neg-int v5, v5

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v5, v10

    :goto_125
    add-int/2addr v6, v5

    add-int/lit8 v5, v9, -0x1

    .line 413
    invoke-virtual {p0, v9, v0, v6}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemToRow(III)I

    move-result v9

    move v11, v9

    move v9, v5

    move v5, v11

    goto :goto_101

    :cond_130
    :goto_130
    return v4

    :cond_131
    :goto_131
    move v5, v9

    goto :goto_143

    .line 417
    :cond_133
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v5, :cond_13c

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v5

    goto :goto_140

    :cond_13c
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v5

    :goto_140
    move v7, v4

    move v8, v5

    goto :goto_131

    :goto_143
    add-int/lit8 v0, v0, -0x1

    move v6, v4

    goto/16 :goto_9a

    :cond_148
    :goto_148
    return v6

    :cond_149
    if-eqz p2, :cond_14c

    return v6

    .line 423
    :cond_14c
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_155

    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    goto :goto_159

    :cond_155
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    :goto_159
    move v8, v0

    .line 425
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v0, v4

    goto/16 :goto_9a
.end method
