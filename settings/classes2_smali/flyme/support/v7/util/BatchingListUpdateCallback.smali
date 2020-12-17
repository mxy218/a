.class public Lflyme/support/v7/util/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Lflyme/support/v7/util/ListUpdateCallback;


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Lflyme/support/v7/util/ListUpdateCallback;


# direct methods
.method public constructor <init>(Lflyme/support/v7/util/ListUpdateCallback;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 41
    iput v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mWrapped:Lflyme/support/v7/util/ListUpdateCallback;

    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .registers 5

    .line 54
    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_2e

    .line 65
    :cond_f
    iget-object v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mWrapped:Lflyme/support/v7/util/ListUpdateCallback;

    iget v1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iget-object v3, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lflyme/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2e

    .line 62
    :cond_1b
    iget-object v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mWrapped:Lflyme/support/v7/util/ListUpdateCallback;

    iget v1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lflyme/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    goto :goto_2e

    .line 59
    :cond_25
    iget-object v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mWrapped:Lflyme/support/v7/util/ListUpdateCallback;

    iget v1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lflyme/support/v7/util/ListUpdateCallback;->onInserted(II)V

    :goto_2e
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .registers 9

    .line 108
    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_26

    add-int v3, p1, p2

    if-lt v3, v0, :cond_26

    iget-object v4, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    if-ne v4, p3, :cond_26

    add-int/2addr v2, v0

    .line 113
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr p1, p2

    iput p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    return-void

    .line 117
    :cond_26
    invoke-virtual {p0}, Lflyme/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 118
    iput p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 119
    iput p2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 120
    iput-object p3, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 121
    iput v1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onInserted(II)V
    .registers 7

    .line 74
    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_19

    iget v2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_19

    add-int/2addr v2, p2

    .line 76
    iput v2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 77
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    return-void

    .line 80
    :cond_19
    invoke-virtual {p0}, Lflyme/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 81
    iput p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 82
    iput p2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 83
    iput v1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onMoved(II)V
    .registers 3

    .line 102
    invoke-virtual {p0}, Lflyme/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 103
    iget-object p0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mWrapped:Lflyme/support/v7/util/ListUpdateCallback;

    invoke-interface {p0, p1, p2}, Lflyme/support/v7/util/ListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .registers 6

    .line 88
    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v0, p1, :cond_15

    add-int v2, p1, p2

    if-gt v0, v2, :cond_15

    .line 90
    iget v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 91
    iput p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    return-void

    .line 94
    :cond_15
    invoke-virtual {p0}, Lflyme/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 95
    iput p1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 96
    iput p2, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 97
    iput v1, p0, Lflyme/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method
