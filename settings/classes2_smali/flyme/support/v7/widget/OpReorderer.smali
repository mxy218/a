.class Lflyme/support/v7/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/OpReorderer$Callback;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lflyme/support/v7/widget/OpReorderer;->mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;

    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    :goto_7
    if-ltz p0, :cond_1c

    .line 220
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 221
    iget v2, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    if-eqz v1, :cond_19

    return p0

    :cond_18
    move v1, v0

    :cond_19
    add-int/lit8 p0, p0, -0x1

    goto :goto_7

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method private swapMoveAdd(Ljava/util/List;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 163
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p0, v0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 166
    :goto_9
    iget v0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v0, v1, :cond_11

    add-int/lit8 p0, p0, 0x1

    .line 169
    :cond_11
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v0, v1, :cond_1c

    .line 170
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    iput v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 172
    :cond_1c
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v0, v1, :cond_27

    .line 173
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    iput v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 175
    :cond_27
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v0, p0

    iput v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 176
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 45
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 46
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 47
    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    goto :goto_31

    :cond_1a
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 55
    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_31

    :cond_22
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 49
    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_31

    :cond_2a
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 52
    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    :goto_31
    return-void
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 39
    :goto_0
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    add-int/lit8 v1, v0, 0x1

    .line 40
    invoke-direct {p0, p1, v0, v1}, Lflyme/support/v7/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    :cond_d
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 67
    iget v0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_16

    .line 69
    iget v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, v0, :cond_14

    iget v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v0

    if-ne v4, v1, :cond_14

    move v0, v2

    move v2, v3

    goto :goto_25

    :cond_14
    move v0, v2

    goto :goto_25

    .line 75
    :cond_16
    iget v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v1, 0x1

    if-ne v4, v5, :cond_24

    iget v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    if-ne v4, v0, :cond_24

    move v0, v3

    move v2, v0

    goto :goto_25

    :cond_24
    move v0, v3

    .line 82
    :goto_25
    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_30

    sub-int/2addr v4, v3

    .line 83
    iput v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_49

    .line 84
    :cond_30
    iget v6, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_49

    sub-int/2addr v6, v3

    .line 86
    iput v6, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 87
    iput v5, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 88
    iput v3, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 89
    iget p2, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez p2, :cond_48

    .line 90
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    iget-object p0, p0, Lflyme/support/v7/widget/OpReorderer;->mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;

    invoke-interface {p0, p5}, Lflyme/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    :cond_48
    return-void

    .line 98
    :cond_49
    :goto_49
    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x0

    if-gt v1, v4, :cond_54

    add-int/2addr v4, v3

    .line 99
    iput v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_6a

    .line 100
    :cond_54
    iget v7, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v8, v4, v7

    if-ge v1, v8, :cond_6a

    add-int/2addr v4, v7

    sub-int/2addr v4, v1

    .line 103
    iget-object v7, p0, Lflyme/support/v7/widget/OpReorderer;->mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;

    add-int/2addr v1, v3

    invoke-interface {v7, v5, v1, v4, v6}, Lflyme/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 104
    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v3

    iput v1, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_6a
    :goto_6a
    if-eqz v2, :cond_78

    .line 109
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object p0, p0, Lflyme/support/v7/widget/OpReorderer;->mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;

    invoke-interface {p0, p3}, Lflyme/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void

    :cond_78
    if-eqz v0, :cond_a9

    if-eqz v6, :cond_92

    .line 118
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_87

    .line 119
    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 121
    :cond_87
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_92

    .line 122
    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 125
    :cond_92
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_9d

    .line 126
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 128
    :cond_9d
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_d7

    .line 129
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_d7

    :cond_a9
    if-eqz v6, :cond_c1

    .line 133
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_b6

    .line 134
    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 136
    :cond_b6
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_c1

    .line 137
    iget v0, v6, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 140
    :cond_c1
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_cc

    .line 141
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 143
    :cond_cc
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_d7

    .line 144
    iget v0, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 148
    :cond_d7
    :goto_d7
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget p0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p5, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq p0, p5, :cond_e4

    .line 150
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e7

    .line 152
    :cond_e4
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_e7
    if-eqz v6, :cond_ec

    .line 155
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_ec
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;ILflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 185
    iget v0, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_d

    sub-int/2addr v1, v4

    .line 186
    iput v1, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_20

    .line 187
    :cond_d
    iget v5, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_20

    sub-int/2addr v5, v4

    .line 189
    iput v5, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 190
    iget-object v0, p0, Lflyme/support/v7/widget/OpReorderer;->mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;

    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v5, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v4, v5}, Lflyme/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    goto :goto_21

    :cond_20
    :goto_20
    move-object v0, v3

    .line 193
    :goto_21
    iget v1, p3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v5, :cond_2b

    add-int/2addr v5, v4

    .line 194
    iput v5, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_41

    .line 195
    :cond_2b
    iget v6, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v7, v5, v6

    if-ge v1, v7, :cond_41

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 198
    iget-object v3, p0, Lflyme/support/v7/widget/OpReorderer;->mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;

    add-int/2addr v1, v4

    iget-object v4, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v5, v4}, Lflyme/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 200
    iget v1, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v5

    iput v1, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 202
    :cond_41
    :goto_41
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget p3, p5, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez p3, :cond_4c

    .line 204
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 206
    :cond_4c
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 207
    iget-object p0, p0, Lflyme/support/v7/widget/OpReorderer;->mCallback:Lflyme/support/v7/widget/OpReorderer$Callback;

    invoke-interface {p0, p5}, Lflyme/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    :goto_54
    if-eqz v0, :cond_59

    .line 210
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_59
    if-eqz v3, :cond_5e

    .line 213
    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5e
    return-void
.end method
